package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class zzbhk {
    private static AppMeasurement zzaQ(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }

    public static List<zzbhi> zzaR(Context context) {
        AppMeasurement zzaQ = zzaQ(context);
        if (zzaQ == null) {
            if (Log.isLoggable("FRCAnalytics", 3)) {
                Log.d("FRCAnalytics", "Unable to get user properties: analytics library is missing.");
            }
            return null;
        }
        Map userProperties;
        try {
            userProperties = zzaQ.getUserProperties(false);
        } catch (NullPointerException e) {
            if (Log.isLoggable("FRCAnalytics", 3)) {
                Log.d("FRCAnalytics", "Unable to get user properties.", e);
            }
            userProperties = null;
        }
        if (userProperties == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Entry entry : userProperties.entrySet()) {
            if (entry.getValue() != null) {
                arrayList.add(new zzbhi((String) entry.getKey(), entry.getValue().toString()));
            }
        }
        return arrayList;
    }
}
