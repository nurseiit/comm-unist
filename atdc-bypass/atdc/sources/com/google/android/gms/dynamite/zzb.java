package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.dynamite.DynamiteModule.zzd;

final class zzb implements zzd {
    zzb() {
    }

    public final zzi zza(Context context, String str, zzh zzh) throws zzc {
        zzi zzi = new zzi();
        zzi.zzaSV = zzh.zzb(context, str, true);
        if (zzi.zzaSV != 0) {
            zzi.zzaSW = 1;
            return zzi;
        }
        zzi.zzaSU = zzh.zzE(context, str);
        if (zzi.zzaSU != 0) {
            zzi.zzaSW = -1;
        }
        return zzi;
    }
}
