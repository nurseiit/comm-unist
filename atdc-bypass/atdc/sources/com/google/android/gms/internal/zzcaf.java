package com.google.android.gms.internal;

public final class zzcaf {
    private static zzcaf zzaXH;
    private final zzcaa zzaXI = new zzcaa();
    private final zzcab zzaXJ = new zzcab();

    static {
        zzcaf zzcaf = new zzcaf();
        synchronized (zzcaf.class) {
            zzaXH = zzcaf;
        }
    }

    private zzcaf() {
    }

    private static zzcaf zzua() {
        zzcaf zzcaf;
        synchronized (zzcaf.class) {
            zzcaf = zzaXH;
        }
        return zzcaf;
    }

    public static zzcaa zzub() {
        return zzua().zzaXI;
    }

    public static zzcab zzuc() {
        return zzua().zzaXJ;
    }
}
