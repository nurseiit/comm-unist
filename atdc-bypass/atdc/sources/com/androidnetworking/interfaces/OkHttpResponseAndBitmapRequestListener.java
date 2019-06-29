package com.androidnetworking.interfaces;

import android.graphics.Bitmap;
import com.androidnetworking.error.ANError;
import okhttp3.Response;

public interface OkHttpResponseAndBitmapRequestListener {
    void onError(ANError aNError);

    void onResponse(Response response, Bitmap bitmap);
}
