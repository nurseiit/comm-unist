package okhttp3;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.util.ArrayList;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.connection.ConnectInterceptor;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;

final class RealCall implements Call {
    final OkHttpClient client;
    private EventListener eventListener;
    private boolean executed;
    final boolean forWebSocket;
    final Request originalRequest;
    final RetryAndFollowUpInterceptor retryAndFollowUpInterceptor;

    final class AsyncCall extends NamedRunnable {
        private final Callback responseCallback;

        AsyncCall(Callback callback) {
            super("OkHttp %s", r4.redactedUrl());
            this.responseCallback = callback;
        }

        /* Access modifiers changed, original: 0000 */
        public String host() {
            return RealCall.this.originalRequest.url().host();
        }

        /* Access modifiers changed, original: 0000 */
        public Request request() {
            return RealCall.this.originalRequest;
        }

        /* Access modifiers changed, original: 0000 */
        public RealCall get() {
            return RealCall.this;
        }

        /* Access modifiers changed, original: protected */
        /* JADX WARNING: Removed duplicated region for block: B:16:0x005d A:{Catch:{ all -> 0x0036 }} */
        /* JADX WARNING: Removed duplicated region for block: B:14:0x003d A:{SYNTHETIC, Splitter:B:14:0x003d} */
        public void execute() {
            /*
            r5 = this;
            r0 = 1;
            r1 = 0;
            r2 = okhttp3.RealCall.this;	 Catch:{ IOException -> 0x0038 }
            r2 = r2.getResponseWithInterceptorChain();	 Catch:{ IOException -> 0x0038 }
            r3 = okhttp3.RealCall.this;	 Catch:{ IOException -> 0x0038 }
            r3 = r3.retryAndFollowUpInterceptor;	 Catch:{ IOException -> 0x0038 }
            r3 = r3.isCanceled();	 Catch:{ IOException -> 0x0038 }
            if (r3 == 0) goto L_0x0023;
        L_0x0012:
            r1 = r5.responseCallback;	 Catch:{ IOException -> 0x0021 }
            r2 = okhttp3.RealCall.this;	 Catch:{ IOException -> 0x0021 }
            r3 = new java.io.IOException;	 Catch:{ IOException -> 0x0021 }
            r4 = "Canceled";
            r3.<init>(r4);	 Catch:{ IOException -> 0x0021 }
            r1.onFailure(r2, r3);	 Catch:{ IOException -> 0x0021 }
            goto L_0x002a;
        L_0x0021:
            r1 = move-exception;
            goto L_0x003b;
        L_0x0023:
            r1 = r5.responseCallback;	 Catch:{ IOException -> 0x0021 }
            r3 = okhttp3.RealCall.this;	 Catch:{ IOException -> 0x0021 }
            r1.onResponse(r3, r2);	 Catch:{ IOException -> 0x0021 }
        L_0x002a:
            r0 = okhttp3.RealCall.this;
            r0 = r0.client;
            r0 = r0.dispatcher();
            r0.finished(r5);
            goto L_0x0070;
        L_0x0036:
            r0 = move-exception;
            goto L_0x0071;
        L_0x0038:
            r0 = move-exception;
            r1 = r0;
            r0 = 0;
        L_0x003b:
            if (r0 == 0) goto L_0x005d;
        L_0x003d:
            r0 = okhttp3.internal.platform.Platform.get();	 Catch:{ all -> 0x0036 }
            r2 = 4;
            r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0036 }
            r3.<init>();	 Catch:{ all -> 0x0036 }
            r4 = "Callback failure for ";
            r3.append(r4);	 Catch:{ all -> 0x0036 }
            r4 = okhttp3.RealCall.this;	 Catch:{ all -> 0x0036 }
            r4 = r4.toLoggableString();	 Catch:{ all -> 0x0036 }
            r3.append(r4);	 Catch:{ all -> 0x0036 }
            r3 = r3.toString();	 Catch:{ all -> 0x0036 }
            r0.log(r2, r3, r1);	 Catch:{ all -> 0x0036 }
            goto L_0x002a;
        L_0x005d:
            r0 = okhttp3.RealCall.this;	 Catch:{ all -> 0x0036 }
            r0 = r0.eventListener;	 Catch:{ all -> 0x0036 }
            r2 = okhttp3.RealCall.this;	 Catch:{ all -> 0x0036 }
            r0.callFailed(r2, r1);	 Catch:{ all -> 0x0036 }
            r0 = r5.responseCallback;	 Catch:{ all -> 0x0036 }
            r2 = okhttp3.RealCall.this;	 Catch:{ all -> 0x0036 }
            r0.onFailure(r2, r1);	 Catch:{ all -> 0x0036 }
            goto L_0x002a;
        L_0x0070:
            return;
        L_0x0071:
            r1 = okhttp3.RealCall.this;
            r1 = r1.client;
            r1 = r1.dispatcher();
            r1.finished(r5);
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.RealCall$AsyncCall.execute():void");
        }
    }

    private RealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        this.client = okHttpClient;
        this.originalRequest = request;
        this.forWebSocket = z;
        this.retryAndFollowUpInterceptor = new RetryAndFollowUpInterceptor(okHttpClient, z);
    }

    static RealCall newRealCall(OkHttpClient okHttpClient, Request request, boolean z) {
        RealCall realCall = new RealCall(okHttpClient, request, z);
        realCall.eventListener = okHttpClient.eventListenerFactory().create(realCall);
        return realCall;
    }

    public Request request() {
        return this.originalRequest;
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        captureCallStackTrace();
        this.eventListener.callStart(this);
        try {
            this.client.dispatcher().executed(this);
            Response responseWithInterceptorChain = getResponseWithInterceptorChain();
            if (responseWithInterceptorChain == null) {
                throw new IOException("Canceled");
            }
            this.client.dispatcher().finished(this);
            return responseWithInterceptorChain;
        } catch (IOException e) {
            this.eventListener.callFailed(this, e);
            throw e;
        } catch (Throwable th) {
            this.client.dispatcher().finished(this);
        }
    }

    private void captureCallStackTrace() {
        this.retryAndFollowUpInterceptor.setCallStackTrace(Platform.get().getStackTraceForCloseable("response.body().close()"));
    }

    public void enqueue(Callback callback) {
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already Executed");
            }
            this.executed = true;
        }
        captureCallStackTrace();
        this.eventListener.callStart(this);
        this.client.dispatcher().enqueue(new AsyncCall(callback));
    }

    public void cancel() {
        this.retryAndFollowUpInterceptor.cancel();
    }

    public synchronized boolean isExecuted() {
        return this.executed;
    }

    public boolean isCanceled() {
        return this.retryAndFollowUpInterceptor.isCanceled();
    }

    public RealCall clone() {
        return newRealCall(this.client, this.originalRequest, this.forWebSocket);
    }

    /* Access modifiers changed, original: 0000 */
    public StreamAllocation streamAllocation() {
        return this.retryAndFollowUpInterceptor.streamAllocation();
    }

    /* Access modifiers changed, original: 0000 */
    public String toLoggableString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(isCanceled() ? "canceled " : "");
        stringBuilder.append(this.forWebSocket ? "web socket" : NotificationCompat.CATEGORY_CALL);
        stringBuilder.append(" to ");
        stringBuilder.append(redactedUrl());
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: 0000 */
    public String redactedUrl() {
        return this.originalRequest.url().redact();
    }

    /* Access modifiers changed, original: 0000 */
    public Response getResponseWithInterceptorChain() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.client.interceptors());
        arrayList.add(this.retryAndFollowUpInterceptor);
        arrayList.add(new BridgeInterceptor(this.client.cookieJar()));
        arrayList.add(new CacheInterceptor(this.client.internalCache()));
        arrayList.add(new ConnectInterceptor(this.client));
        if (!this.forWebSocket) {
            arrayList.addAll(this.client.networkInterceptors());
        }
        arrayList.add(new CallServerInterceptor(this.forWebSocket));
        return new RealInterceptorChain(arrayList, null, null, null, 0, this.originalRequest, this, this.eventListener, this.client.connectTimeoutMillis(), this.client.readTimeoutMillis(), this.client.writeTimeoutMillis()).proceed(this.originalRequest);
    }
}
