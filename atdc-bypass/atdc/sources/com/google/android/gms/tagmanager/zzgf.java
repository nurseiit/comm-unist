package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzgf extends zzbr {
    private static final String ID = zzbf.TIME.toString();

    public zzgf() {
        super(ID, new String[0]);
    }

    public final boolean zzAE() {
        return false;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        return zzgk.zzI(Long.valueOf(System.currentTimeMillis()));
    }
}
