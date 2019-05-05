package com.google.android.gms.internal;

import java.util.Comparator;

public final class zzhq implements Comparator<zzhe> {
    public zzhq(zzhp zzhp) {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzhe zzhe = (zzhe) obj;
        zzhe zzhe2 = (zzhe) obj2;
        if (zzhe.zzcS() < zzhe2.zzcS()) {
            return -1;
        }
        if (zzhe.zzcS() > zzhe2.zzcS()) {
            return 1;
        }
        if (zzhe.zzcR() < zzhe2.zzcR()) {
            return -1;
        }
        if (zzhe.zzcR() > zzhe2.zzcR()) {
            return 1;
        }
        float zzcU = (zzhe.zzcU() - zzhe.zzcS()) * (zzhe.zzcT() - zzhe.zzcR());
        float zzcU2 = (zzhe2.zzcU() - zzhe2.zzcS()) * (zzhe2.zzcT() - zzhe2.zzcR());
        return zzcU > zzcU2 ? -1 : zzcU < zzcU2 ? 1 : 0;
    }
}
