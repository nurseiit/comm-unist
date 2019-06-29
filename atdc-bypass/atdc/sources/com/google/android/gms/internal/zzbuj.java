package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.concurrent.TimeUnit;

public final class zzbuj {
    public static <DP, DT> String zza(DP dp, zzbug<DP, DT> zzbug) {
        zzbuh zztF = zzbug.zztF();
        if (!zztF.zzcY(zzbug.zzy(dp))) {
            return null;
        }
        Object zzx = zzbug.zzx(dp);
        for (int i = 0; i < zztF.zzz(zzx); i++) {
            String zzg = zztF.zzg(zzx, i);
            if (zzbug.zzd(dp, i)) {
                double zze = (double) zztF.zze(zzx, i);
                if (zze == 1.0d) {
                    zze = (double) zzbug.zzc(dp, i);
                } else if (zze == 2.0d) {
                    zze = zzbug.zzb(dp, i);
                } else {
                    continue;
                }
                zzbum zzdg = zzbuk.zztR().zzdg(zzg);
                if (zzdg != null && !zzdg.zzf(zze)) {
                    return "Field out of range";
                }
                zzbum zzC = zzbuk.zztR().zzC(zztF.zzA(zzx), zzg);
                if (zzC != null) {
                    long zza = zzbug.zza(dp, TimeUnit.NANOSECONDS);
                    if (zza == 0) {
                        return zze == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? null : "DataPoint out of range";
                    } else {
                        if (!zzC.zzf(zze / ((double) zza))) {
                            return "DataPoint out of range";
                        }
                    }
                } else {
                    continue;
                }
            } else if (!(zztF.zzf(zzx, i) || zzbuk.zzaVr.contains(zzg))) {
                return String.valueOf(zzg).concat(" not set");
            }
        }
        return null;
    }
}
