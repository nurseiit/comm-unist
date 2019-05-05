package com.google.android.gms.internal;

public final class vg {
    private final xf zzcgD;
    private final boolean zzcgE;
    private final boolean zzcgF;

    public vg(xf xfVar, boolean z, boolean z2) {
        this.zzcgD = xfVar;
        this.zzcgE = z;
        this.zzcgF = z2;
    }

    public final xm zzFn() {
        return this.zzcgD.zzFn();
    }

    public final boolean zzHU() {
        return this.zzcgE;
    }

    public final boolean zzHV() {
        return this.zzcgF;
    }

    public final xf zzHW() {
        return this.zzcgD;
    }

    public final boolean zzL(qr qrVar) {
        return qrVar.isEmpty() ? this.zzcgE && !this.zzcgF : zzf(qrVar.zzHc());
    }

    public final boolean zzf(wp wpVar) {
        return (this.zzcgE && !this.zzcgF) || this.zzcgD.zzFn().zzk(wpVar);
    }
}
