package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.dynamite.DynamiteModule.zzd;

final class zzf implements zzd {
    zzf() {
    }

    public final zzi zza(Context context, String str, zzh zzh) throws zzc {
        zzi zzi = new zzi();
        zzi.zzaSU = zzh.zzE(context, str);
        zzi.zzaSV = zzi.zzaSU != 0 ? zzh.zzb(context, str, false) : zzh.zzb(context, str, true);
        if (zzi.zzaSU == 0 && zzi.zzaSV == 0) {
            zzi.zzaSW = 0;
            return zzi;
        } else if (zzi.zzaSV >= zzi.zzaSU) {
            zzi.zzaSW = 1;
            return zzi;
        } else {
            zzi.zzaSW = -1;
            return zzi;
        }
    }
}
