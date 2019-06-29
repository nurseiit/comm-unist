package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

enum qp implements qt {
    INSTANCE;

    public final on zza(qd qdVar, oj ojVar, ol olVar, oo ooVar) {
        return new op(qdVar.zzGR(), olVar, ooVar);
    }

    public final pu zza(ScheduledExecutorService scheduledExecutorService) {
        throw new RuntimeException("Authentication is not implemented yet");
    }

    public final qk zza(qd qdVar) {
        return new tk(Executors.defaultThreadFactory(), ti.zzcfh);
    }

    public final uh zza(qd qdVar, String str) {
        return null;
    }

    public final wm zza(qd qdVar, wn wnVar, List<String> list) {
        return new wj(wnVar, null);
    }

    public final sd zzb(qd qdVar) {
        return new qq(this, qdVar.zzgP("RunLoop"));
    }

    public final String zzc(qd qdVar) {
        String property = System.getProperty("java.vm.name", "Unknown JVM");
        String property2 = System.getProperty("java.specification.version", "Unknown");
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(property2).length() + 1) + String.valueOf(property).length());
        stringBuilder.append(property2);
        stringBuilder.append("/");
        stringBuilder.append(property);
        return stringBuilder.toString();
    }
}
