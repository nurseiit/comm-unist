package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule.zzd;

final class zzc implements zzd {
    zzc() {
    }

    public final zzi zza(Context context, String str, zzh zzh) throws com.google.android.gms.dynamite.DynamiteModule.zzc {
        zzi zzi = new zzi();
        zzi.zzaSU = zzh.zzE(context, str);
        if (zzi.zzaSU != 0) {
            zzi.zzaSW = -1;
            return zzi;
        }
        zzi.zzaSV = zzh.zzb(context, str, true);
        if (zzi.zzaSV != 0) {
            zzi.zzaSW = 1;
        }
        return zzi;
    }
}
