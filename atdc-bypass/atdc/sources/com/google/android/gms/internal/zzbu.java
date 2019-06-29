package com.google.android.gms.internal;

import java.util.HashMap;

public final class zzbu extends zzbs<Integer, Object> {
    public String zzaT;
    public String zzaV;
    public String zzaW;
    public String zzaX;
    public long zzlO;

    public zzbu() {
        this.zzaT = "E";
        this.zzlO = -1;
        this.zzaV = "E";
        this.zzaW = "E";
        this.zzaX = "E";
    }

    public zzbu(String str) {
        this();
        zzi(str);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzi(String str) {
        HashMap zzj = zzbs.zzj(str);
        if (zzj != null) {
            this.zzaT = zzj.get(Integer.valueOf(0)) == null ? "E" : (String) zzj.get(Integer.valueOf(0));
            this.zzlO = zzj.get(Integer.valueOf(1)) == null ? -1 : ((Long) zzj.get(Integer.valueOf(1))).longValue();
            this.zzaV = zzj.get(Integer.valueOf(2)) == null ? "E" : (String) zzj.get(Integer.valueOf(2));
            this.zzaW = zzj.get(Integer.valueOf(3)) == null ? "E" : (String) zzj.get(Integer.valueOf(3));
            this.zzaX = zzj.get(Integer.valueOf(4)) == null ? "E" : (String) zzj.get(Integer.valueOf(4));
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final HashMap<Integer, Object> zzv() {
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(0), this.zzaT);
        hashMap.put(Integer.valueOf(4), this.zzaX);
        hashMap.put(Integer.valueOf(3), this.zzaW);
        hashMap.put(Integer.valueOf(2), this.zzaV);
        hashMap.put(Integer.valueOf(1), Long.valueOf(this.zzlO));
        return hashMap;
    }
}
