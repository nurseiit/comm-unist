package com.androidnetworking.internal;

import com.androidnetworking.common.ANConstants;
import com.androidnetworking.common.ANRequest;
import com.androidnetworking.common.ANResponse;
import com.androidnetworking.error.ANError;
import com.androidnetworking.utils.Utils;
import com.lotecs.util.ErrorCode;
import okhttp3.Response;

public final class SynchronousCall {
    private SynchronousCall() {
    }

    public static <T> ANResponse<T> execute(ANRequest aNRequest) {
        switch (aNRequest.getRequestType()) {
            case 0:
                return executeSimpleRequest(aNRequest);
            case 1:
                return executeDownloadRequest(aNRequest);
            case 2:
                return executeUploadRequest(aNRequest);
            default:
                return new ANResponse(new ANError());
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:30:0x0066=Splitter:B:30:0x0066, B:36:0x007c=Splitter:B:36:0x007c} */
    private static <T> com.androidnetworking.common.ANResponse<T> executeSimpleRequest(com.androidnetworking.common.ANRequest r5) {
        /*
        r0 = 0;
        r1 = com.androidnetworking.internal.InternalNetworking.performSimpleRequest(r5);	 Catch:{ ANError -> 0x0078, Exception -> 0x0062, all -> 0x005d }
        if (r1 != 0) goto L_0x001d;
    L_0x0007:
        r0 = new com.androidnetworking.common.ANResponse;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = new com.androidnetworking.error.ANError;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2.<init>();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = com.androidnetworking.utils.Utils.getErrorForConnection(r2);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.<init>(r2);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x0019:
        r0 = move-exception;
        goto L_0x0066;
    L_0x001b:
        r0 = move-exception;
        goto L_0x007c;
    L_0x001d:
        r0 = r5.getResponseAs();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = com.androidnetworking.common.ResponseType.OK_HTTP_RESPONSE;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        if (r0 != r2) goto L_0x0031;
    L_0x0025:
        r0 = new com.androidnetworking.common.ANResponse;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.<init>(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.setOkHttpResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x0031:
        r0 = r1.code();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r0 < r2) goto L_0x0052;
    L_0x0039:
        r0 = new com.androidnetworking.common.ANResponse;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = new com.androidnetworking.error.ANError;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2.<init>(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r3 = r1.code();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = com.androidnetworking.utils.Utils.getErrorForServerResponse(r2, r5, r3);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.<init>(r2);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.setOkHttpResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x0052:
        r0 = r5.parseResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.setOkHttpResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x005d:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x008f;
    L_0x0062:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x0066:
        r2 = new com.androidnetworking.common.ANResponse;	 Catch:{ all -> 0x008e }
        r3 = new com.androidnetworking.error.ANError;	 Catch:{ all -> 0x008e }
        r3.<init>(r0);	 Catch:{ all -> 0x008e }
        r0 = com.androidnetworking.utils.Utils.getErrorForConnection(r3);	 Catch:{ all -> 0x008e }
        r2.<init>(r0);	 Catch:{ all -> 0x008e }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r2;
    L_0x0078:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x007c:
        r2 = new com.androidnetworking.common.ANResponse;	 Catch:{ all -> 0x008e }
        r3 = new com.androidnetworking.error.ANError;	 Catch:{ all -> 0x008e }
        r3.<init>(r0);	 Catch:{ all -> 0x008e }
        r0 = com.androidnetworking.utils.Utils.getErrorForConnection(r3);	 Catch:{ all -> 0x008e }
        r2.<init>(r0);	 Catch:{ all -> 0x008e }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r2;
    L_0x008e:
        r0 = move-exception;
    L_0x008f:
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidnetworking.internal.SynchronousCall.executeSimpleRequest(com.androidnetworking.common.ANRequest):com.androidnetworking.common.ANResponse");
    }

    private static <T> ANResponse<T> executeDownloadRequest(ANRequest aNRequest) {
        try {
            Response performDownloadRequest = InternalNetworking.performDownloadRequest(aNRequest);
            if (performDownloadRequest == null) {
                return new ANResponse(Utils.getErrorForConnection(new ANError()));
            }
            if (performDownloadRequest.code() >= ErrorCode.ERROR_CODE_INVALID) {
                ANResponse aNResponse = new ANResponse(Utils.getErrorForServerResponse(new ANError(performDownloadRequest), aNRequest, performDownloadRequest.code()));
                aNResponse.setOkHttpResponse(performDownloadRequest);
                return aNResponse;
            }
            ANResponse aNResponse2 = new ANResponse(ANConstants.SUCCESS);
            aNResponse2.setOkHttpResponse(performDownloadRequest);
            return aNResponse2;
        } catch (ANError e) {
            return new ANResponse(Utils.getErrorForConnection(new ANError(e)));
        } catch (Exception e2) {
            return new ANResponse(Utils.getErrorForConnection(new ANError(e2)));
        }
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:30:0x0066=Splitter:B:30:0x0066, B:36:0x007c=Splitter:B:36:0x007c} */
    private static <T> com.androidnetworking.common.ANResponse<T> executeUploadRequest(com.androidnetworking.common.ANRequest r5) {
        /*
        r0 = 0;
        r1 = com.androidnetworking.internal.InternalNetworking.performUploadRequest(r5);	 Catch:{ ANError -> 0x0078, Exception -> 0x0062, all -> 0x005d }
        if (r1 != 0) goto L_0x001d;
    L_0x0007:
        r0 = new com.androidnetworking.common.ANResponse;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = new com.androidnetworking.error.ANError;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2.<init>();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = com.androidnetworking.utils.Utils.getErrorForConnection(r2);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.<init>(r2);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x0019:
        r0 = move-exception;
        goto L_0x0066;
    L_0x001b:
        r0 = move-exception;
        goto L_0x007c;
    L_0x001d:
        r0 = r5.getResponseAs();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = com.androidnetworking.common.ResponseType.OK_HTTP_RESPONSE;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        if (r0 != r2) goto L_0x0031;
    L_0x0025:
        r0 = new com.androidnetworking.common.ANResponse;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.<init>(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.setOkHttpResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x0031:
        r0 = r1.code();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r0 < r2) goto L_0x0052;
    L_0x0039:
        r0 = new com.androidnetworking.common.ANResponse;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = new com.androidnetworking.error.ANError;	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2.<init>(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r3 = r1.code();	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r2 = com.androidnetworking.utils.Utils.getErrorForServerResponse(r2, r5, r3);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.<init>(r2);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.setOkHttpResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x0052:
        r0 = r5.parseResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        r0.setOkHttpResponse(r1);	 Catch:{ ANError -> 0x001b, Exception -> 0x0019 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r0;
    L_0x005d:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x008a;
    L_0x0062:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x0066:
        r2 = new com.androidnetworking.common.ANResponse;	 Catch:{ all -> 0x0089 }
        r3 = new com.androidnetworking.error.ANError;	 Catch:{ all -> 0x0089 }
        r3.<init>(r0);	 Catch:{ all -> 0x0089 }
        r0 = com.androidnetworking.utils.Utils.getErrorForConnection(r3);	 Catch:{ all -> 0x0089 }
        r2.<init>(r0);	 Catch:{ all -> 0x0089 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r2;
    L_0x0078:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
    L_0x007c:
        r2 = new com.androidnetworking.common.ANResponse;	 Catch:{ all -> 0x0089 }
        r0 = com.androidnetworking.utils.Utils.getErrorForConnection(r0);	 Catch:{ all -> 0x0089 }
        r2.<init>(r0);	 Catch:{ all -> 0x0089 }
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        return r2;
    L_0x0089:
        r0 = move-exception;
    L_0x008a:
        com.androidnetworking.utils.SourceCloseUtil.close(r1, r5);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidnetworking.internal.SynchronousCall.executeUploadRequest(com.androidnetworking.common.ANRequest):com.androidnetworking.common.ANResponse");
    }
}
