package com.google.android.gms.internal;

public final class vw {
    private final vg zzchr;
    private final vg zzchs;

    public vw(vg vgVar, vg vgVar2) {
        this.zzchr = vgVar;
        this.zzchs = vgVar2;
    }

    public final vg zzIA() {
        return this.zzchs;
    }

    public final xm zzIB() {
        return this.zzchs.zzHU() ? this.zzchs.zzFn() : null;
    }

    public final vg zzIy() {
        return this.zzchr;
    }

    public final xm zzIz() {
        return this.zzchr.zzHU() ? this.zzchr.zzFn() : null;
    }

    public final vw zza(xf xfVar, boolean z, boolean z2) {
        return new vw(new vg(xfVar, z, z2), this.zzchs);
    }

    public final vw zzb(xf xfVar, boolean z, boolean z2) {
        return new vw(this.zzchr, new vg(xfVar, z, z2));
    }
}
