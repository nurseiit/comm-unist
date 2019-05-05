package com.google.firebase.database;

import com.google.android.gms.measurement.AppMeasurement.Param;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class ServerValue {
    public static final Map<String, String> TIMESTAMP;

    static {
        String str = Param.TIMESTAMP;
        HashMap hashMap = new HashMap();
        hashMap.put(".sv", str);
        TIMESTAMP = Collections.unmodifiableMap(hashMap);
    }
}
