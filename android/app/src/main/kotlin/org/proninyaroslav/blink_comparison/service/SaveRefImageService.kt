/*
 * Copyright (C) 2022-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
 *
 * This file is part of Blink Comparison.
 *
 * Blink Comparison is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Blink Comparison is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Blink Comparison.  If not, see <http://www.gnu.org/licenses/>.
 */

package org.proninyaroslav.blink_comparison.service

import android.app.Service
import android.content.Intent
import android.os.Build
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.util.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor.DartCallback
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import io.flutter.view.FlutterCallbackInformation
import org.proninyaroslav.blink_comparison.AppNotificationManager
import org.proninyaroslav.blink_comparison.channel.SaveRefImageServiceChannel
import org.proninyaroslav.blink_comparison.channel.SaveRefImageServiceQueueChannel
import org.proninyaroslav.blink_comparison.channel.SaveRefImageServiceResultChannel
import java.util.concurrent.atomic.AtomicBoolean

class SaveRefImageService : Service() {
    private val tag = SaveRefImageService::class.simpleName
    private val notificationId = 1

    companion object {
        const val actionStart = "start"
        const val actionStop = "stop"
        const val tagCallbackHandle = "callback_handle"
        const val tagNotificationTitle = "notification_title"
        const val tagNotificationChannelName = "notification_channel_name"
    }

    private lateinit var notifyManager: AppNotificationManager
    private var isRunning = AtomicBoolean(false)
    private var engine: FlutterEngine? = null

    private lateinit var saveRefImageServiceChannel: SaveRefImageServiceChannel
    private lateinit var saveRefImageServiceQueueChannel: SaveRefImageServiceQueueChannel
    private lateinit var saveRefImageServiceResultChannel: SaveRefImageServiceResultChannel
    private var dartCallback: DartCallback? = null
    private val flutterLoader = FlutterLoader()

    override fun onCreate() {
        super.onCreate()

        notifyManager = AppNotificationManager(applicationContext)
        saveRefImageServiceQueueChannel = SaveRefImageServiceQueueChannel();
        saveRefImageServiceResultChannel = SaveRefImageServiceResultChannel();
        saveRefImageServiceChannel = SaveRefImageServiceChannel(
            applicationContext,
            saveRefImageServiceQueueChannel,
            saveRefImageServiceResultChannel,
        )
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return when (intent?.action) {
            actionStart -> {
                if (!isRunning.get()) {
                    runService(intent)
                }
                START_STICKY
            }
            actionStop -> {
                stopService()
                START_NOT_STICKY
            }
            else -> START_NOT_STICKY
        }
    }

    private fun stopService() {
        isRunning.set(false)
        engine?.destroy()
        engine = null
        dartCallback = null
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            stopForeground(STOP_FOREGROUND_REMOVE)
        } else {
            stopForeground(true)
        }
        stopSelf()
    }

    private fun runService(intent: Intent) {
        if (isRunning.getAndSet(true) || engine?.dartExecutor?.isExecutingDart == true) {
            return
        }

        startForeground(
            notificationId,
            notifyManager.buildForegroundNotify(
                channelName = intent.getStringExtra(tagNotificationChannelName)!!,
                title = intent.getStringExtra(tagNotificationTitle),
            )
        )

        engine = FlutterEngine(this)

        if (!flutterLoader.initialized()) {
            flutterLoader.startInitialization(applicationContext)
        }

        flutterLoader.ensureInitializationCompleteAsync(
            applicationContext,
            null,
            Handler(Looper.getMainLooper())
        ) {
            val callbackHandle = intent.getLongExtra(tagCallbackHandle, 0)
            val callbackInfo = FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
            if (callbackInfo == null) {
                Log.e(tag, "Callback handle not found")
                stopService()
                return@ensureInitializationCompleteAsync
            }

            val dartBundlePath = flutterLoader.findAppBundlePath()
            engine?.let { engine ->
                MethodChannel(
                    engine.dartExecutor.binaryMessenger,
                    SaveRefImageServiceChannel.channelName,
                ).setMethodCallHandler(saveRefImageServiceChannel)
                EventChannel(
                    engine.dartExecutor.binaryMessenger,
                    SaveRefImageServiceQueueChannel.channelName,
                ).setStreamHandler(saveRefImageServiceQueueChannel)
                EventChannel(
                    engine.dartExecutor.binaryMessenger,
                    SaveRefImageServiceResultChannel.channelName,
                ).setStreamHandler(saveRefImageServiceResultChannel)

                engine.dartExecutor.executeDartCallback(
                    DartCallback(
                        applicationContext.assets,
                        dartBundlePath,
                        callbackInfo
                    )
                )
            }
        }
    }
}
