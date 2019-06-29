package com.androidnetworking.interfaces;

import com.androidnetworking.error.ANError;

public interface ParsedRequestListener<T> {
    void onError(ANError aNError);

    void onResponse(T t);
}
