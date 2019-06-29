package com.androidnetworking.internal;

import com.androidnetworking.common.ANRequest;
import com.androidnetworking.common.ANResponse;
import com.androidnetworking.common.Priority;
import com.androidnetworking.common.ResponseType;
import com.androidnetworking.core.Core;
import com.androidnetworking.error.ANError;
import com.androidnetworking.utils.SourceCloseUtil;
import com.androidnetworking.utils.Utils;
import com.lotecs.util.ErrorCode;
import okhttp3.Response;

public class InternalRunnable implements Runnable {
    private final Priority priority;
    public final ANRequest request;
    public final int sequence;

    public InternalRunnable(ANRequest aNRequest) {
        this.request = aNRequest;
        this.sequence = aNRequest.getSequenceNumber();
        this.priority = aNRequest.getPriority();
    }

    public void run() {
        this.request.setRunning(true);
        switch (this.request.getRequestType()) {
            case 0:
                executeSimpleRequest();
                break;
            case 1:
                executeDownloadRequest();
                break;
            case 2:
                executeUploadRequest();
                break;
        }
        this.request.setRunning(false);
    }

    private void executeSimpleRequest() {
        Throwable e;
        Throwable th;
        Response performSimpleRequest;
        try {
            performSimpleRequest = InternalNetworking.performSimpleRequest(this.request);
            if (performSimpleRequest == null) {
                try {
                    deliverError(this.request, Utils.getErrorForConnection(new ANError()));
                    SourceCloseUtil.close(performSimpleRequest, this.request);
                } catch (Exception e2) {
                    e = e2;
                }
            } else if (this.request.getResponseAs() == ResponseType.OK_HTTP_RESPONSE) {
                this.request.deliverOkHttpResponse(performSimpleRequest);
                SourceCloseUtil.close(performSimpleRequest, this.request);
            } else if (performSimpleRequest.code() >= ErrorCode.ERROR_CODE_INVALID) {
                deliverError(this.request, Utils.getErrorForServerResponse(new ANError(performSimpleRequest), this.request, performSimpleRequest.code()));
                SourceCloseUtil.close(performSimpleRequest, this.request);
            } else {
                ANResponse parseResponse = this.request.parseResponse(performSimpleRequest);
                if (parseResponse.isSuccess()) {
                    parseResponse.setOkHttpResponse(performSimpleRequest);
                    this.request.deliverResponse(parseResponse);
                    SourceCloseUtil.close(performSimpleRequest, this.request);
                }
                deliverError(this.request, parseResponse.getError());
                SourceCloseUtil.close(performSimpleRequest, this.request);
            }
        } catch (Exception e3) {
            th = e3;
            performSimpleRequest = null;
            e = th;
            try {
                deliverError(this.request, Utils.getErrorForConnection(new ANError(e)));
                SourceCloseUtil.close(performSimpleRequest, this.request);
            } catch (Throwable th2) {
                e = th2;
                SourceCloseUtil.close(performSimpleRequest, this.request);
                throw e;
            }
        } catch (Throwable e32) {
            th = e32;
            performSimpleRequest = null;
            e = th;
            SourceCloseUtil.close(performSimpleRequest, this.request);
            throw e;
        }
    }

    private void executeDownloadRequest() {
        try {
            Response performDownloadRequest = InternalNetworking.performDownloadRequest(this.request);
            if (performDownloadRequest == null) {
                deliverError(this.request, Utils.getErrorForConnection(new ANError()));
            } else if (performDownloadRequest.code() >= ErrorCode.ERROR_CODE_INVALID) {
                deliverError(this.request, Utils.getErrorForServerResponse(new ANError(performDownloadRequest), this.request, performDownloadRequest.code()));
            } else {
                this.request.updateDownloadCompletion();
            }
        } catch (Exception e) {
            deliverError(this.request, Utils.getErrorForConnection(new ANError(e)));
        }
    }

    private void executeUploadRequest() {
        Throwable e;
        Throwable th;
        Response performUploadRequest;
        try {
            performUploadRequest = InternalNetworking.performUploadRequest(this.request);
            if (performUploadRequest == null) {
                try {
                    deliverError(this.request, Utils.getErrorForConnection(new ANError()));
                    SourceCloseUtil.close(performUploadRequest, this.request);
                } catch (Exception e2) {
                    e = e2;
                }
            } else if (this.request.getResponseAs() == ResponseType.OK_HTTP_RESPONSE) {
                this.request.deliverOkHttpResponse(performUploadRequest);
                SourceCloseUtil.close(performUploadRequest, this.request);
            } else if (performUploadRequest.code() >= ErrorCode.ERROR_CODE_INVALID) {
                deliverError(this.request, Utils.getErrorForServerResponse(new ANError(performUploadRequest), this.request, performUploadRequest.code()));
                SourceCloseUtil.close(performUploadRequest, this.request);
            } else {
                ANResponse parseResponse = this.request.parseResponse(performUploadRequest);
                if (parseResponse.isSuccess()) {
                    parseResponse.setOkHttpResponse(performUploadRequest);
                    this.request.deliverResponse(parseResponse);
                    SourceCloseUtil.close(performUploadRequest, this.request);
                }
                deliverError(this.request, parseResponse.getError());
                SourceCloseUtil.close(performUploadRequest, this.request);
            }
        } catch (Exception e3) {
            th = e3;
            performUploadRequest = null;
            e = th;
            try {
                deliverError(this.request, Utils.getErrorForConnection(new ANError(e)));
                SourceCloseUtil.close(performUploadRequest, this.request);
            } catch (Throwable th2) {
                e = th2;
                SourceCloseUtil.close(performUploadRequest, this.request);
                throw e;
            }
        } catch (Throwable e32) {
            th = e32;
            performUploadRequest = null;
            e = th;
            SourceCloseUtil.close(performUploadRequest, this.request);
            throw e;
        }
    }

    public Priority getPriority() {
        return this.priority;
    }

    private void deliverError(final ANRequest aNRequest, final ANError aNError) {
        Core.getInstance().getExecutorSupplier().forMainThreadTasks().execute(new Runnable() {
            public void run() {
                aNRequest.deliverError(aNError);
                aNRequest.finish();
            }
        });
    }
}
