package com.androidnetworking.interfaces;

import com.androidnetworking.error.ANError;
import org.json.JSONArray;

public interface JSONArrayRequestListener {
    void onError(ANError aNError);

    void onResponse(JSONArray jSONArray);
}
