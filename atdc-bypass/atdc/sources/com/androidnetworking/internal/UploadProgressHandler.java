package com.androidnetworking.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.androidnetworking.interfaces.UploadProgressListener;
import com.androidnetworking.model.Progress;

public class UploadProgressHandler extends Handler {
    private final UploadProgressListener mUploadProgressListener;

    public UploadProgressHandler(UploadProgressListener uploadProgressListener) {
        super(Looper.getMainLooper());
        this.mUploadProgressListener = uploadProgressListener;
    }

    public void handleMessage(Message message) {
        if (message.what != 1) {
            super.handleMessage(message);
        } else if (this.mUploadProgressListener != null) {
            Progress progress = (Progress) message.obj;
            this.mUploadProgressListener.onProgress(progress.currentBytes, progress.totalBytes);
        }
    }
}
