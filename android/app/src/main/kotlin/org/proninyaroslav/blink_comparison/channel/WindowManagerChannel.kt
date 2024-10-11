/*
 * Copyright (C) 2024 Yaroslav Pronin <proninyaroslav@mail.ru>
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

package org.proninyaroslav.blink_comparison.channel

import android.app.Activity
import android.view.WindowManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

open class WindowManagerChannel(private val getActivity: () -> Activity) :
    MethodChannel.MethodCallHandler {

    companion object {
        const val channelName = "org.proninyaroslav.blink_comparison/window_manager"
    }

    object Methods {
        const val setSecureFlag = "setSecureFlag"
        const val setRotationAnimation = "setRotationAnimation"
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        val window = getActivity().window
        when (call.method) {
            Methods.setSecureFlag -> {
                val enabled = call.arguments as Boolean
                if (enabled) {
                    window.addFlags(WindowManager.LayoutParams.FLAG_SECURE)
                } else {
                    window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
                }
                return result.success(null)
            }

            Methods.setRotationAnimation -> {
                val animationValue = call.arguments as Int
                window.attributes = window.attributes.apply {
                    rotationAnimation = animationValue
                }
                return result.success(null)
            }

            else -> {
                return result.notImplemented()
            }
        }
    }
}