/*
 * Copyright (C) 2022 Yaroslav Pronin <proninyaroslav@mail.ru>
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

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Context.NOTIFICATION_SERVICE
import android.content.Intent
import android.os.Build
import androidx.core.app.NotificationCompat

class AppNotificationManager(private val appContext: Context) {
    private val foregroundNotifyChanId = "org.proninyaroslav.blink_comparison.FOREGROUND_NOTIFY_CHAN"

    private val notifyManager: NotificationManager =
        appContext.getSystemService(NOTIFICATION_SERVICE) as NotificationManager

    fun buildForegroundNotify(channelName: String, title: String?): Notification {
        buildForegroundChannel(channelName)

        val flag = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        } else {
            PendingIntent.FLAG_UPDATE_CURRENT
        }

        val startupPendingIntent = Intent(appContext, MainActivity::class.java)
            .apply {
                action = Intent.ACTION_MAIN
                addCategory(Intent.CATEGORY_LAUNCHER)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
            }
            .let { intent ->
                PendingIntent.getActivity(
                    appContext,
                    0,
                    intent,
                    flag
                )
            }

        val notify = NotificationCompat.Builder(
            appContext,
            foregroundNotifyChanId
        ).apply {
            setSmallIcon(R.drawable.ic_app_notification)
            setContentTitle(title)
            setContentIntent(startupPendingIntent)
            setWhen(System.currentTimeMillis())
            setCategory(Notification.CATEGORY_PROGRESS)
        }

        return notify.build()
    }

    private fun buildForegroundChannel(name: String) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
            return
        }
        if (notifyManager.getNotificationChannel(foregroundNotifyChanId) != null) {
            return
        }
        val foregroundChan = NotificationChannel(
            foregroundNotifyChanId,
            name,
            NotificationManager.IMPORTANCE_LOW
        ).apply {
            setShowBadge(false)
        }

        notifyManager.createNotificationChannel(foregroundChan);
    }
}
