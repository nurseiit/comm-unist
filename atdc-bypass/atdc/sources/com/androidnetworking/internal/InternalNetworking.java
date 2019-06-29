package com.androidnetworking.internal;

import android.content.Context;
import android.net.TrafficStats;
import com.androidnetworking.common.ANConstants;
import com.androidnetworking.common.ANRequest;
import com.androidnetworking.common.ConnectionClassManager;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interceptors.HttpLoggingInterceptor;
import com.androidnetworking.interceptors.HttpLoggingInterceptor.Level;
import com.androidnetworking.interfaces.AnalyticsListener;
import com.androidnetworking.utils.Utils;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import okhttp3.Response;

public final class InternalNetworking {
    public static OkHttpClient sHttpClient = getClient();
    public static String sUserAgent;

    private InternalNetworking() {
    }

    public static Response performSimpleRequest(ANRequest aNRequest) throws ANError {
        ANRequest aNRequest2 = aNRequest;
        try {
            Builder url = new Builder().url(aNRequest.getUrl());
            addHeadersToRequestBuilder(url, aNRequest2);
            RequestBody requestBody = null;
            switch (aNRequest.getMethod()) {
                case 0:
                    url = url.get();
                    break;
                case 1:
                    requestBody = aNRequest.getRequestBody();
                    url = url.post(requestBody);
                    break;
                case 2:
                    requestBody = aNRequest.getRequestBody();
                    url = url.put(requestBody);
                    break;
                case 3:
                    requestBody = aNRequest.getRequestBody();
                    url = url.delete(requestBody);
                    break;
                case 4:
                    url = url.head();
                    break;
                case 5:
                    requestBody = aNRequest.getRequestBody();
                    url = url.patch(requestBody);
                    break;
                case 6:
                    url = url.method(ANConstants.OPTIONS, null);
                    break;
                default:
                    break;
            }
            if (aNRequest.getCacheControl() != null) {
                url.cacheControl(aNRequest.getCacheControl());
            }
            Request build = url.build();
            if (aNRequest.getOkHttpClient() != null) {
                aNRequest2.setCall(aNRequest.getOkHttpClient().newBuilder().cache(sHttpClient.cache()).build().newCall(build));
            } else {
                aNRequest2.setCall(sHttpClient.newCall(build));
            }
            long currentTimeMillis = System.currentTimeMillis();
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            Response execute = aNRequest.getCall().execute();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            long j;
            AnalyticsListener analyticsListener;
            if (execute.cacheResponse() == null) {
                currentTimeMillis = TrafficStats.getTotalRxBytes();
                if (totalRxBytes != -1) {
                    if (currentTimeMillis != -1) {
                        j = currentTimeMillis - totalRxBytes;
                        ConnectionClassManager.getInstance().updateBandwidth(j, currentTimeMillis2);
                        analyticsListener = aNRequest.getAnalyticsListener();
                        j = (requestBody != null || requestBody.contentLength() == 0) ? -1 : requestBody.contentLength();
                        Utils.sendAnalytics(analyticsListener, currentTimeMillis2, j, execute.body().contentLength(), false);
                    }
                }
                j = execute.body().contentLength();
                ConnectionClassManager.getInstance().updateBandwidth(j, currentTimeMillis2);
                analyticsListener = aNRequest.getAnalyticsListener();
                if (requestBody != null) {
                }
                Utils.sendAnalytics(analyticsListener, currentTimeMillis2, j, execute.body().contentLength(), false);
            } else if (aNRequest.getAnalyticsListener() != null) {
                if (execute.networkResponse() == null) {
                    Utils.sendAnalytics(aNRequest.getAnalyticsListener(), currentTimeMillis2, 0, 0, true);
                } else {
                    analyticsListener = aNRequest.getAnalyticsListener();
                    j = (requestBody == null || requestBody.contentLength() == 0) ? -1 : requestBody.contentLength();
                    Utils.sendAnalytics(analyticsListener, currentTimeMillis2, j, 0, true);
                }
            }
            return execute;
        } catch (IOException e) {
            throw new ANError(e);
        }
    }

    public static Response performDownloadRequest(ANRequest aNRequest) throws ANError {
        final ANRequest aNRequest2 = aNRequest;
        try {
            OkHttpClient build;
            Builder url = new Builder().url(aNRequest.getUrl());
            addHeadersToRequestBuilder(url, aNRequest2);
            url = url.get();
            if (aNRequest.getCacheControl() != null) {
                url.cacheControl(aNRequest.getCacheControl());
            }
            Request build2 = url.build();
            if (aNRequest.getOkHttpClient() != null) {
                build = aNRequest.getOkHttpClient().newBuilder().cache(sHttpClient.cache()).addNetworkInterceptor(new Interceptor() {
                    public Response intercept(Chain chain) throws IOException {
                        Response proceed = chain.proceed(chain.request());
                        return proceed.newBuilder().body(new ResponseProgressBody(proceed.body(), aNRequest2.getDownloadProgressListener())).build();
                    }
                }).build();
            } else {
                build = sHttpClient.newBuilder().addNetworkInterceptor(new Interceptor() {
                    public Response intercept(Chain chain) throws IOException {
                        Response proceed = chain.proceed(chain.request());
                        return proceed.newBuilder().body(new ResponseProgressBody(proceed.body(), aNRequest2.getDownloadProgressListener())).build();
                    }
                }).build();
            }
            aNRequest2.setCall(build.newCall(build2));
            long currentTimeMillis = System.currentTimeMillis();
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            Response execute = aNRequest.getCall().execute();
            Utils.saveFile(execute, aNRequest.getDirPath(), aNRequest.getFileName());
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (execute.cacheResponse() == null) {
                long j;
                currentTimeMillis = TrafficStats.getTotalRxBytes();
                if (totalRxBytes != -1) {
                    if (currentTimeMillis != -1) {
                        j = currentTimeMillis - totalRxBytes;
                        ConnectionClassManager.getInstance().updateBandwidth(j, currentTimeMillis2);
                        Utils.sendAnalytics(aNRequest.getAnalyticsListener(), currentTimeMillis2, -1, execute.body().contentLength(), false);
                    }
                }
                j = execute.body().contentLength();
                ConnectionClassManager.getInstance().updateBandwidth(j, currentTimeMillis2);
                Utils.sendAnalytics(aNRequest.getAnalyticsListener(), currentTimeMillis2, -1, execute.body().contentLength(), false);
            } else if (aNRequest.getAnalyticsListener() != null) {
                Utils.sendAnalytics(aNRequest.getAnalyticsListener(), currentTimeMillis2, -1, 0, true);
            }
            return execute;
        } catch (IOException e) {
            Throwable th = e;
            try {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(aNRequest.getDirPath());
                stringBuilder.append(File.separator);
                stringBuilder.append(aNRequest.getFileName());
                File file = new File(stringBuilder.toString());
                if (file.exists()) {
                    file.delete();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            throw new ANError(th);
        }
    }

    public static Response performUploadRequest(ANRequest aNRequest) throws ANError {
        ANRequest aNRequest2 = aNRequest;
        try {
            Builder url = new Builder().url(aNRequest.getUrl());
            addHeadersToRequestBuilder(url, aNRequest2);
            RequestBody multiPartRequestBody = aNRequest.getMultiPartRequestBody();
            long contentLength = multiPartRequestBody.contentLength();
            url = url.post(new RequestProgressBody(multiPartRequestBody, aNRequest.getUploadProgressListener()));
            if (aNRequest.getCacheControl() != null) {
                url.cacheControl(aNRequest.getCacheControl());
            }
            Request build = url.build();
            if (aNRequest.getOkHttpClient() != null) {
                aNRequest2.setCall(aNRequest.getOkHttpClient().newBuilder().cache(sHttpClient.cache()).build().newCall(build));
            } else {
                aNRequest2.setCall(sHttpClient.newCall(build));
            }
            long currentTimeMillis = System.currentTimeMillis();
            Response execute = aNRequest.getCall().execute();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (aNRequest.getAnalyticsListener() != null) {
                if (execute.cacheResponse() == null) {
                    Utils.sendAnalytics(aNRequest.getAnalyticsListener(), currentTimeMillis2, contentLength, execute.body().contentLength(), false);
                } else if (execute.networkResponse() == null) {
                    Utils.sendAnalytics(aNRequest.getAnalyticsListener(), currentTimeMillis2, 0, 0, true);
                } else {
                    AnalyticsListener analyticsListener = aNRequest.getAnalyticsListener();
                    if (contentLength == 0) {
                        contentLength = -1;
                    }
                    Utils.sendAnalytics(analyticsListener, currentTimeMillis2, contentLength, 0, true);
                }
            }
            return execute;
        } catch (IOException e) {
            throw new ANError(e);
        }
    }

    public static OkHttpClient getClient() {
        if (sHttpClient == null) {
            return getDefaultClient();
        }
        return sHttpClient;
    }

    public static void addHeadersToRequestBuilder(Builder builder, ANRequest aNRequest) {
        if (aNRequest.getUserAgent() != null) {
            builder.addHeader(ANConstants.USER_AGENT, aNRequest.getUserAgent());
        } else if (sUserAgent != null) {
            aNRequest.setUserAgent(sUserAgent);
            builder.addHeader(ANConstants.USER_AGENT, sUserAgent);
        }
        Headers headers = aNRequest.getHeaders();
        if (headers != null) {
            builder.headers(headers);
            if (aNRequest.getUserAgent() != null && !headers.names().contains(ANConstants.USER_AGENT)) {
                builder.addHeader(ANConstants.USER_AGENT, aNRequest.getUserAgent());
            }
        }
    }

    public static OkHttpClient getDefaultClient() {
        return new OkHttpClient().newBuilder().connectTimeout(60, TimeUnit.SECONDS).readTimeout(60, TimeUnit.SECONDS).writeTimeout(60, TimeUnit.SECONDS).build();
    }

    public static void setClientWithCache(Context context) {
        sHttpClient = new OkHttpClient().newBuilder().cache(Utils.getCache(context, ANConstants.MAX_CACHE_SIZE, ANConstants.CACHE_DIR_NAME)).connectTimeout(60, TimeUnit.SECONDS).readTimeout(60, TimeUnit.SECONDS).writeTimeout(60, TimeUnit.SECONDS).build();
    }

    public static void setUserAgent(String str) {
        sUserAgent = str;
    }

    public static void setClient(OkHttpClient okHttpClient) {
        sHttpClient = okHttpClient;
    }

    public static void enableLogging(Level level) {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(level);
        sHttpClient = getClient().newBuilder().addInterceptor(httpLoggingInterceptor).build();
    }
}
