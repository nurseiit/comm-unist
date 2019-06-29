package com.androidnetworking.interfaces;

import com.androidnetworking.error.ANError;
import okhttp3.Response;
import org.json.JSONArray;

public interface OkHttpResponseAndJSONArrayRequestListener {
    void onError(ANError aNError);

    void onResponse(Response response, JSONArray jSONArray);
}
