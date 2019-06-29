package com.androidnetworking.interfaces;

import com.androidnetworking.error.ANError;
import org.json.JSONObject;

public interface JSONObjectRequestListener {
    void onError(ANError aNError);

    void onResponse(JSONObject jSONObject);
}
