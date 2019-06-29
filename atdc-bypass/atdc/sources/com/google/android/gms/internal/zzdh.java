package com.google.android.gms.internal;

import java.util.HashMap;

public final class zzdh extends zzbs<Integer, Long> {
    public Long zzcv;
    public Long zzcw;
    public Long zzrj;

    public zzdh(String str) {
        zzi(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzi(String str) {
        HashMap zzj = zzbs.zzj(str);
        if (zzj != null) {
            this.zzrj = (Long) zzj.get(Integer.valueOf(0));
            this.zzcv = (Long) zzj.get(Integer.valueOf(1));
            this.zzcw = (Long) zzj.get(Integer.valueOf(2));
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final HashMap<Integer, Long> zzv() {
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzrj);
        hashMap.put(Integer.valueOf(1), this.zzcv);
        hashMap.put(Integer.valueOf(2), this.zzcw);
        return hashMap;
    }
}
