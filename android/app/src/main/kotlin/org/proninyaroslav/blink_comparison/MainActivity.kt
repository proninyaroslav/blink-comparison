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

package org.proninyaroslav.blink_comparison

import android.os.Build
import android.os.Bundle
import androidx.core.view.WindowCompat
import org.proninyaroslav.blink_comparison.channel.SaveRefImageServiceChannel
import org.proninyaroslav.blink_comparison.channel.SaveRefImageServiceQueueChannel
import org.proninyaroslav.blink_comparison.channel.SaveRefImageServiceResultChannel
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private lateinit var saveRefImageServiceChannel: SaveRefImageServiceChannel
    private lateinit var saveRefImageServiceQueueChannel: SaveRefImageServiceQueueChannel
    private lateinit var saveRefImageServiceResultChannel: SaveRefImageServiceResultChannel

    override fun onCreate(savedInstanceState: Bundle?) {
        // Aligns the Flutter view vertically with the window.
        WindowCompat.setDecorFitsSystemWindows(window, false)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            // Disable the Android splash screen fade out animation to avoid
            // a flicker before the similar frame is drawn in Flutter.
            splashScreen.setOnExitAnimationListener { splashScreenView -> splashScreenView.remove() }
        }

        super.onCreate(savedInstanceState)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        saveRefImageServiceQueueChannel = SaveRefImageServiceQueueChannel();
        saveRefImageServiceResultChannel = SaveRefImageServiceResultChannel();
        saveRefImageServiceChannel = SaveRefImageServiceChannel(
            applicationContext,
            saveRefImageServiceQueueChannel,
            saveRefImageServiceResultChannel,
        )
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            SaveRefImageServiceChannel.channelName,
        ).setMethodCallHandler(saveRefImageServiceChannel)
        EventChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            SaveRefImageServiceQueueChannel.channelName,
        ).setStreamHandler(saveRefImageServiceQueueChannel)
        EventChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            SaveRefImageServiceResultChannel.channelName,
        ).setStreamHandler(saveRefImageServiceResultChannel)
    }
}
