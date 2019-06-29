package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.util.zzj;

final class zzzv implements zzzx {
    private /* synthetic */ Context zztF;

    zzzv(Context context) {
        this.zztF = context;
    }

    public final boolean zza(zzaje zzaje) {
        zzji.zzds();
        boolean zzX = zzaiy.zzX(this.zztF);
        Object obj = (((Boolean) zzbs.zzbL().zzd(zzmo.zzGF)).booleanValue() && zzaje.zzaaQ) ? 1 : null;
        if (!zzzu.zzc(this.zztF, zzaje.zzaaQ) || !zzX || obj != null) {
            return true;
        }
        if (zzj.zzaI(this.zztF)) {
            if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzCL)).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
