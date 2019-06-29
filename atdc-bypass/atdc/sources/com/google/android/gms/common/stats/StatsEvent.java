package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

public abstract class StatsEvent extends zza implements ReflectedParcelable {
    public abstract int getEventType();

    public abstract long getTimeMillis();

    public String toString() {
        long timeMillis = getTimeMillis();
        String valueOf = String.valueOf("\t");
        int eventType = getEventType();
        String valueOf2 = String.valueOf("\t");
        long zzrV = zzrV();
        String valueOf3 = String.valueOf(zzrW());
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 51) + String.valueOf(valueOf2).length()) + String.valueOf(valueOf3).length());
        stringBuilder.append(timeMillis);
        stringBuilder.append(valueOf);
        stringBuilder.append(eventType);
        stringBuilder.append(valueOf2);
        stringBuilder.append(zzrV);
        stringBuilder.append(valueOf3);
        return stringBuilder.toString();
    }

    public abstract long zzrV();

    public abstract String zzrW();
}
