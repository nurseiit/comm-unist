package com.google.android.gms.internal;

final class st implements uy<sn, Void> {
    private /* synthetic */ so zzceR;

    st(so soVar) {
        this.zzceR = soVar;
    }

    public final /* synthetic */ Object zza(qr qrVar, Object obj, Object obj2) {
        sn snVar = (sn) obj;
        if (qrVar.isEmpty() || !snVar.zzHo()) {
            for (vu zzIv : snVar.zzHn()) {
                vt zzIv2 = zzIv.zzIv();
                this.zzceR.zzceL.zza(so.zzd(zzIv2), this.zzceR.zze(zzIv2));
            }
        } else {
            vt zzIv3 = snVar.zzHp().zzIv();
            this.zzceR.zzceL.zza(so.zzd(zzIv3), this.zzceR.zze(zzIv3));
        }
        return null;
    }
}
