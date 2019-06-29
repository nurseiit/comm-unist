package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzaj extends zzbr {
    private static final String ID = zzbf.CONTAINER_VERSION.toString();
    private final String zzaxs;

    public zzaj(String str) {
        super(ID, new String[0]);
        this.zzaxs = str;
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        return this.zzaxs == null ? zzgk.zzCh() : zzgk.zzI(this.zzaxs);
    }
}
