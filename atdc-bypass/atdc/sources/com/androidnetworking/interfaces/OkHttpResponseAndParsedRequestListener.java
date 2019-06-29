package com.androidnetworking.interfaces;

import com.androidnetworking.error.ANError;
import okhttp3.Response;

public interface OkHttpResponseAndParsedRequestListener<T> {
    void onError(ANError aNError);

    void onResponse(Response response, T t);
}
