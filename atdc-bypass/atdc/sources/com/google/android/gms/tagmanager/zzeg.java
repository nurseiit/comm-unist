package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class zzeg extends zzbr {
    private static final String zzbEH = zzbg.ARG0.toString();
    private static final String zzbFE = zzbg.ARG1.toString();

    public zzeg(String str) {
        super(str, zzbEH, zzbFE);
    }

    public final boolean zzAE() {
        return true;
    }

    public final /* bridge */ /* synthetic */ String zzBk() {
        return super.zzBk();
    }

    public final /* bridge */ /* synthetic */ Set zzBl() {
        return super.zzBl();
    }

    public abstract boolean zza(zzbr zzbr, zzbr zzbr2, Map<String, zzbr> map);

    public final zzbr zzo(Map<String, zzbr> map) {
        boolean z;
        Iterator it = map.values().iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                zzbr zzbr = (zzbr) map.get(zzbEH);
                zzbr zzbr2 = (zzbr) map.get(zzbFE);
                if (!(zzbr == null || zzbr2 == null)) {
                    z = zza(zzbr, zzbr2, map);
                }
            }
            return zzgk.zzI(Boolean.valueOf(z));
        } while (((zzbr) it.next()) != zzgk.zzCh());
        return zzgk.zzI(Boolean.valueOf(z));
    }
}
