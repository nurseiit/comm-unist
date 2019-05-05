package com.google.android.gms.internal;

@zzzn
public final class zzji {
    private static zzji zzAL;
    private static final Object zzuF = new Object();
    private final zzaiy zzAM = new zzaiy();
    private final zziz zzAN = new zziz(new zziq(), new zzip(), new zzli(), new zzqc(), new zzadh(), new zzww());

    static {
        zzji zzji = new zzji();
        synchronized (zzuF) {
            zzAL = zzji;
        }
    }

    protected zzji() {
    }

    private static zzji zzdr() {
        zzji zzji;
        synchronized (zzuF) {
            zzji = zzAL;
        }
        return zzji;
    }

    public static zzaiy zzds() {
        return zzdr().zzAM;
    }

    public static zziz zzdt() {
        return zzdr().zzAN;
    }
}
