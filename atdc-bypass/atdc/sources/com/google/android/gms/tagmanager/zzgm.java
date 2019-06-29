package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzgm extends zzbr {
    private static final String ID = zzbf.UPPERCASE_STRING.toString();
    private static final String zzbEH = zzbg.ARG0.toString();

    public zzgm() {
        super(ID, zzbEH);
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        return zzgk.zzI(zzgk.zzb((zzbr) map.get(zzbEH)).toUpperCase());
    }
}
