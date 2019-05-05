package com.androidnetworking.interfaces;

import com.androidnetworking.error.ANError;

public interface DownloadListener {
    void onDownloadComplete();

    void onError(ANError aNError);
}
