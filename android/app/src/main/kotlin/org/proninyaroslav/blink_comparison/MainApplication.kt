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

import android.content.Context
import android.util.Log
import io.flutter.app.FlutterApplication
import org.acra.BuildConfig
import org.acra.config.mailSender
import org.acra.config.notification
import org.acra.data.StringFormat
import org.acra.ktx.initAcra

class MainApplication : FlutterApplication() {
    companion object {
        val TAG: String = MainApplication::class.simpleName!!
    }

    override fun attachBaseContext(base: Context) {
        super.attachBaseContext(base)

        if (Thread.getDefaultUncaughtExceptionHandler() == null) {
            Thread.setDefaultUncaughtExceptionHandler { t, e ->
                TAG
                Log.e(TAG, "Uncaught exception in $t: ${Log.getStackTraceString(e)}")
            }
        }

        initAcra {
            buildConfigClass = BuildConfig::class.java
            reportFormat = StringFormat.JSON
            mailSender {
                mailTo = "proninyaroslav@mail.ru"
                reportAsFile = true
            }
            notification {
                title = getString(R.string.error)
                text = getString(R.string.crash_report_summary)
                channelName = getString(R.string.android_crash_report_channel)
                tickerText = getString(R.string.error)
                sendButtonText = getString(R.string.report)
                sendWithCommentButtonText = getString(R.string.report_with_comment)
                resSendWithCommentButtonIcon = android.R.drawable.ic_menu_send
                commentPrompt = getString(R.string.crash_report_extra_info)
                sendOnClick = true
            }
        }
    }
}
