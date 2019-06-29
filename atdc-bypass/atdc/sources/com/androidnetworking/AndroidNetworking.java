package com.androidnetworking;

import android.content.Context;
import android.graphics.BitmapFactory.Options;
import com.androidnetworking.common.ANConstants;
import com.androidnetworking.common.ANRequest.DeleteRequestBuilder;
import com.androidnetworking.common.ANRequest.DownloadBuilder;
import com.androidnetworking.common.ANRequest.DynamicRequestBuilder;
import com.androidnetworking.common.ANRequest.GetRequestBuilder;
import com.androidnetworking.common.ANRequest.HeadRequestBuilder;
import com.androidnetworking.common.ANRequest.MultiPartBuilder;
import com.androidnetworking.common.ANRequest.OptionsRequestBuilder;
import com.androidnetworking.common.ANRequest.PatchRequestBuilder;
import com.androidnetworking.common.ANRequest.PostRequestBuilder;
import com.androidnetworking.common.ANRequest.PutRequestBuilder;
import com.androidnetworking.common.ConnectionClassManager;
import com.androidnetworking.common.ConnectionQuality;
import com.androidnetworking.core.Core;
import com.androidnetworking.interceptors.HttpLoggingInterceptor.Level;
import com.androidnetworking.interfaces.ConnectionQualityChangeListener;
import com.androidnetworking.interfaces.Parser.Factory;
import com.androidnetworking.internal.ANImageLoader;
import com.androidnetworking.internal.ANImageLoader.ImageCache;
import com.androidnetworking.internal.ANRequestQueue;
import com.androidnetworking.internal.InternalNetworking;
import com.androidnetworking.utils.ParseUtil;
import com.androidnetworking.utils.Utils;
import okhttp3.OkHttpClient;

public class AndroidNetworking {
    private AndroidNetworking() {
    }

    public static void initialize(Context context) {
        InternalNetworking.setClientWithCache(context.getApplicationContext());
        ANRequestQueue.initialize();
        ANImageLoader.initialize();
    }

    public static void initialize(Context context, OkHttpClient okHttpClient) {
        if (okHttpClient != null && okHttpClient.cache() == null) {
            okHttpClient = okHttpClient.newBuilder().cache(Utils.getCache(context.getApplicationContext(), ANConstants.MAX_CACHE_SIZE, ANConstants.CACHE_DIR_NAME)).build();
        }
        InternalNetworking.setClient(okHttpClient);
        ANRequestQueue.initialize();
        ANImageLoader.initialize();
    }

    public static void setBitmapDecodeOptions(Options options) {
        if (options != null) {
            ANImageLoader.getInstance().setBitmapDecodeOptions(options);
        }
    }

    public static void setConnectionQualityChangeListener(ConnectionQualityChangeListener connectionQualityChangeListener) {
        ConnectionClassManager.getInstance().setListener(connectionQualityChangeListener);
    }

    public static void removeConnectionQualityChangeListener() {
        ConnectionClassManager.getInstance().removeListener();
    }

    public static GetRequestBuilder get(String str) {
        return new GetRequestBuilder(str);
    }

    public static HeadRequestBuilder head(String str) {
        return new HeadRequestBuilder(str);
    }

    public static OptionsRequestBuilder options(String str) {
        return new OptionsRequestBuilder(str);
    }

    public static PostRequestBuilder post(String str) {
        return new PostRequestBuilder(str);
    }

    public static PutRequestBuilder put(String str) {
        return new PutRequestBuilder(str);
    }

    public static DeleteRequestBuilder delete(String str) {
        return new DeleteRequestBuilder(str);
    }

    public static PatchRequestBuilder patch(String str) {
        return new PatchRequestBuilder(str);
    }

    public static DownloadBuilder download(String str, String str2, String str3) {
        return new DownloadBuilder(str, str2, str3);
    }

    public static MultiPartBuilder upload(String str) {
        return new MultiPartBuilder(str);
    }

    public static DynamicRequestBuilder request(String str, int i) {
        return new DynamicRequestBuilder(str, i);
    }

    public static void cancel(Object obj) {
        ANRequestQueue.getInstance().cancelRequestWithGivenTag(obj, false);
    }

    public static void forceCancel(Object obj) {
        ANRequestQueue.getInstance().cancelRequestWithGivenTag(obj, true);
    }

    public static void cancelAll() {
        ANRequestQueue.getInstance().cancelAll(false);
    }

    public static void forceCancelAll() {
        ANRequestQueue.getInstance().cancelAll(true);
    }

    public static void enableLogging() {
        enableLogging(Level.BASIC);
    }

    public static void enableLogging(Level level) {
        InternalNetworking.enableLogging(level);
    }

    public static void evictBitmap(String str) {
        ImageCache imageCache = ANImageLoader.getInstance().getImageCache();
        if (imageCache != null && str != null) {
            imageCache.evictBitmap(str);
        }
    }

    public static void evictAllBitmap() {
        ImageCache imageCache = ANImageLoader.getInstance().getImageCache();
        if (imageCache != null) {
            imageCache.evictAllBitmap();
        }
    }

    public static void setUserAgent(String str) {
        InternalNetworking.setUserAgent(str);
    }

    public static int getCurrentBandwidth() {
        return ConnectionClassManager.getInstance().getCurrentBandwidth();
    }

    public static ConnectionQuality getCurrentConnectionQuality() {
        return ConnectionClassManager.getInstance().getCurrentConnectionQuality();
    }

    public static void setParserFactory(Factory factory) {
        ParseUtil.setParserFactory(factory);
    }

    public static boolean isRequestRunning(Object obj) {
        return ANRequestQueue.getInstance().isRequestRunning(obj);
    }

    public static void shutDown() {
        Core.shutDown();
        evictAllBitmap();
        ConnectionClassManager.getInstance().removeListener();
        ConnectionClassManager.shutDown();
        ParseUtil.shutDown();
    }
}
