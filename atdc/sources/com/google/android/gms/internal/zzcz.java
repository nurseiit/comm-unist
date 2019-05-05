package com.google.android.gms.internal;

import java.util.HashMap;

public final class zzcz extends zzbs<Integer, Object> {
    public Boolean zzqA;
    public Long zzqy;
    public Boolean zzqz;

    public zzcz(String str) {
        zzi(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzi(String str) {
        HashMap zzj = zzbs.zzj(str);
        if (zzj != null) {
            this.zzqy = (Long) zzj.get(Integer.valueOf(0));
            this.zzqz = (Boolean) zzj.get(Integer.valueOf(1));
            this.zzqA = (Boolean) zzj.get(Integer.valueOf(2));
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final HashMap<Integer, Object> zzv() {
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzqy);
        hashMap.put(Integer.valueOf(1), this.zzqz);
        hashMap.put(Integer.valueOf(2), this.zzqA);
        return hashMap;
    }
}
