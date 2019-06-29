package com.google.android.gms.analytics;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;

public final class zzg implements zzo {
    private static final Uri zzadO;
    private final LogPrinter zzadP = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Builder builder = new Builder();
        builder.scheme("uri");
        builder.authority("local");
        zzadO = builder.build();
    }

    public final void zzb(zzi zzi) {
        ArrayList arrayList = new ArrayList(zzi.zzjq());
        Collections.sort(arrayList, new zzh(this));
        StringBuilder stringBuilder = new StringBuilder();
        arrayList = arrayList;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String obj2 = ((zzj) obj).toString();
            if (!TextUtils.isEmpty(obj2)) {
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(obj2);
            }
        }
        this.zzadP.println(stringBuilder.toString());
    }

    public final Uri zzjl() {
        return zzadO;
    }
}
