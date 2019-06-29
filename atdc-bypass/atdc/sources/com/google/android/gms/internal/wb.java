package com.google.android.gms.internal;

final class wb implements wg {
    private final vw zzchm;
    private final ts zzchw;
    private final xm zzchx;

    public wb(ts tsVar, vw vwVar, xm xmVar) {
        this.zzchw = tsVar;
        this.zzchm = vwVar;
        this.zzchx = xmVar;
    }

    public final xl zza(xe xeVar, xl xlVar, boolean z) {
        return this.zzchw.zza(this.zzchx != null ? this.zzchx : this.zzchm.zzIB(), xlVar, z, xeVar);
    }

    public final xm zzh(wp wpVar) {
        vg zzIy = this.zzchm.zzIy();
        if (zzIy.zzf(wpVar)) {
            return zzIy.zzFn().zzm(wpVar);
        }
        return this.zzchw.zza(wpVar, this.zzchx != null ? new vg(xf.zza(this.zzchx, xg.zzJh()), true, false) : this.zzchm.zzIA());
    }
}
