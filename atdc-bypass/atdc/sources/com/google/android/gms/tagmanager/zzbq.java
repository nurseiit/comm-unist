package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbk;
import com.google.android.gms.internal.zzbl;
import com.google.android.gms.internal.zzbp;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzbq {
    private static void zza(DataLayer dataLayer, zzbl zzbl) {
        for (zzbk zzbk : zzbl.zzkL) {
            String str;
            if (zzbk.key == null) {
                str = "GaExperimentRandom: No key";
            } else {
                Object obj = dataLayer.get(zzbk.key);
                Long valueOf = !(obj instanceof Number) ? null : Long.valueOf(((Number) obj).longValue());
                long j = zzbk.zzkF;
                long j2 = zzbk.zzkG;
                if (!zzbk.zzkH || valueOf == null || valueOf.longValue() < j || valueOf.longValue() > j2) {
                    if (j <= j2) {
                        obj = Long.valueOf(Math.round((Math.random() * ((double) (j2 - j))) + ((double) j)));
                    } else {
                        str = "GaExperimentRandom: random range invalid";
                    }
                }
                dataLayer.zzfc(zzbk.key);
                Map zzn = DataLayer.zzn(zzbk.key, obj);
                if (zzbk.zzkI > 0) {
                    if (zzn.containsKey("gtm")) {
                        Object obj2 = zzn.get("gtm");
                        if (obj2 instanceof Map) {
                            ((Map) obj2).put("lifetime", Long.valueOf(zzbk.zzkI));
                        } else {
                            zzdj.zzaT("GaExperimentRandom: gtm not a map");
                        }
                    } else {
                        zzn.put("gtm", DataLayer.mapOf("lifetime", Long.valueOf(zzbk.zzkI)));
                    }
                }
                dataLayer.push(zzn);
            }
            zzdj.zzaT(str);
        }
    }

    public static void zza(DataLayer dataLayer, zzbp zzbp) {
        if (zzbp.zzlz == null) {
            zzdj.zzaT("supplemental missing experimentSupplemental");
            return;
        }
        for (zzbr zzb : zzbp.zzlz.zzkK) {
            dataLayer.zzfc(zzgk.zzb(zzb));
        }
        for (zzbr zzg : zzbp.zzlz.zzkJ) {
            Map map;
            Object zzg2 = zzgk.zzg(zzg);
            if (zzg2 instanceof Map) {
                map = (Map) zzg2;
            } else {
                String valueOf = String.valueOf(zzg2);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 36);
                stringBuilder.append("value: ");
                stringBuilder.append(valueOf);
                stringBuilder.append(" is not a map value, ignored.");
                zzdj.zzaT(stringBuilder.toString());
                map = null;
            }
            if (map != null) {
                dataLayer.push(map);
            }
        }
        zza(dataLayer, zzbp.zzlz);
    }
}
