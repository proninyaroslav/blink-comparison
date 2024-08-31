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

package org.proninyaroslav.blink_comparison.channel

import android.content.Context
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import junit.framework.Assert.assertEquals
import org.junit.After
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.Mockito
import org.mockito.Mockito.mock
import org.mockito.kotlin.any
import org.mockito.kotlin.doNothing
import org.mockito.kotlin.doReturn
import org.mockito.kotlin.never
import org.mockito.kotlin.verify
import org.mockito.kotlin.whenever
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class SaveRefImageServiceChannelTest {
    lateinit var mockQueueChannel: SaveRefImageServiceQueueChannel

    lateinit var mockResultChannel: SaveRefImageServiceResultChannel

    lateinit var channel: SaveRefImageServiceChannel

    @Before
    fun setUp() {
        mockQueueChannel = mock(SaveRefImageServiceQueueChannel::class.java)
        mockResultChannel = mock(SaveRefImageServiceResultChannel::class.java)
        channel = SaveRefImageServiceChannel(
            mock(Context::class.java),
            mockQueueChannel,
            mockResultChannel
        )
    }

    @Test
    fun `Push queue`() {
        val request = mapOf("foo" to "bar")
        val appSecureKey = mapOf("foo" to "bar")

        val mockResult = mock(MethodChannel.Result::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockResult).success(null)
        doNothing().whenever(mockQueueChannel).push(request)
        doNothing().whenever(mockQueueChannel).setAuthFactor(appSecureKey)

        channel.onMethodCall(
            call = MethodCall(
                SaveRefImageServiceChannel.Methods.pushQueue,
                listOf(request, appSecureKey)
            ),
            result = mockResult,
        )

        verify(mockResult).success(null)
        verify(mockQueueChannel).push(request)
        verify(mockQueueChannel).setAuthFactor(appSecureKey)
    }

    @Test
    fun `Get all in progress`() {
        val request = mapOf("foo" to "bar")
        val requestList = listOf(request)

        val mockResult = mock(MethodChannel.Result::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockResult).success(null)
        whenever(mockQueueChannel.getAllInProgress()).doReturn(requestList)

        channel.onMethodCall(
            call = MethodCall(SaveRefImageServiceChannel.Methods.getAllInProgress, request),
            result = mockResult,
        )

        verify(mockResult).success(requestList)
        verify(mockQueueChannel).getAllInProgress()
    }

    @Test
    fun `Send result`() {
        val request = mapOf("foo1" to "bar1")
        val result = mapOf("foo2" to "bar2")
        val args = mapOf(
            SaveRefImageServiceChannel.Arguments.saveImageRequest to request,
            SaveRefImageServiceChannel.Arguments.saveImageResult to result
        )

        val mockResult = mock(MethodChannel.Result::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockResult).success(null)
        doNothing().whenever(mockQueueChannel).onCompleted(request)
        doNothing().whenever(mockResultChannel).send(result)

        channel.onMethodCall(
            call = MethodCall(SaveRefImageServiceChannel.Methods.sendResult, args),
            result = mockResult,
        )

        verify(mockResult).success(null)
        verify(mockQueueChannel).onCompleted(request)
        verify(mockResultChannel).send(result)
    }
}

@RunWith(RobolectricTestRunner::class)
class SaveRefImageServiceQueueChannelTest {
    lateinit var channel: SaveRefImageServiceQueueChannel

    @Before
    fun setUp() {
        channel = SaveRefImageServiceQueueChannel()
    }

    @After
    fun tearDown() {
        SaveRefImageServiceQueueChannel.currentImagesInProgress.clear()
        SaveRefImageServiceQueueChannel.queue.clear()
        SaveRefImageServiceQueueChannel.eventSink = null
    }

    @Test
    fun `Listen with non empty queue`() {
        val request = mapOf("foo" to "bar")
        val appSecureKey = mapOf("foo" to "bar")

        val mockSink = mock(EventChannel.EventSink::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockSink).success(request)

        channel.setAuthFactor(appSecureKey)
        channel.push(request)
        channel.onListen(
            arguments = SaveRefImageServiceQueueChannel.Methods.observeQueue,
            eventSink = mockSink,
        )

        verify(mockSink).success(
            mapOf(
                "request" to request,
                "key" to appSecureKey
            )
        )
    }

    @Test
    fun `Listen with empty queue`() {
        val mockSink = mock(EventChannel.EventSink::class.java, Mockito.CALLS_REAL_METHODS)

        channel.onListen(
            arguments = SaveRefImageServiceQueueChannel.Methods.observeQueue,
            eventSink = mockSink,
        )

        verify(mockSink, never()).success(any())
    }

    @Test
    fun push() {
        val request = mapOf("foo" to "bar")
        val appSecureKey = mapOf("foo" to "bar")

        val mockSink = mock(EventChannel.EventSink::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockSink).success(request)

        channel.onListen(
            arguments = SaveRefImageServiceQueueChannel.Methods.observeQueue,
            eventSink = mockSink,
        )
        channel.setAuthFactor(appSecureKey)
        channel.push(request)

        verify(mockSink).success(
            mapOf(
                "request" to request,
                "key" to appSecureKey
            )
        )
    }

    @Test
    fun `Get all in progress`() {
        val request1 = mapOf("foo1" to "bar1")
        val request2 = mapOf("foo2" to "bar2")

        val mockSink = mock(EventChannel.EventSink::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockSink).success(request1)
        doNothing().whenever(mockSink).success(request2)

        channel.push(request1)
        assertEquals(listOf(request1), channel.getAllInProgress())

        channel.onListen(
            arguments = SaveRefImageServiceQueueChannel.Methods.observeQueue,
            eventSink = mockSink,
        )
        channel.push(request2)
        assertEquals(
            listOf(request1, request2),
            channel.getAllInProgress()
        )
    }

    @Test
    fun `On completed`() {
        val request = mapOf("foo" to "bar")

        val mockSink = mock(EventChannel.EventSink::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockSink).success(request)

        channel.onListen(
            arguments = SaveRefImageServiceQueueChannel.Methods.observeQueue,
            eventSink = mockSink,
        )
        channel.push(request)
        channel.onCompleted(request)
        assertEquals(emptyList<String>(), channel.getAllInProgress())
    }
}

@RunWith(RobolectricTestRunner::class)
class SaveRefImageServiceResultChannelTest {
    lateinit var channel: SaveRefImageServiceResultChannel

    @Before
    fun setUp() {
        channel = SaveRefImageServiceResultChannel()
    }

    @After
    fun tearDown() {
        SaveRefImageServiceResultChannel.eventSinkList.clear()
    }

    @Test
    fun send() {
        val result = mapOf("foo" to "bar")

        val mockSink1 = mock(EventChannel.EventSink::class.java, Mockito.CALLS_REAL_METHODS)
        val mockSink2 = mock(EventChannel.EventSink::class.java, Mockito.CALLS_REAL_METHODS)
        doNothing().whenever(mockSink1).success(result)
        doNothing().whenever(mockSink2).success(result)

        channel.onListen(
            arguments = SaveRefImageServiceResultChannel.Methods.observeResult,
            eventSink = mockSink1,
        )
        channel.onListen(
            arguments = SaveRefImageServiceResultChannel.Methods.observeResult,
            eventSink = mockSink2,
        )
        channel.send(result)

        verify(mockSink1).success(result)
        verify(mockSink2).success(result)
    }
}
