package com.androidnetworking.interfaces;

import com.androidnetworking.error.ANError;

public interface StringRequestListener {
    void onError(ANError aNError);

    void onResponse(String str);
}
