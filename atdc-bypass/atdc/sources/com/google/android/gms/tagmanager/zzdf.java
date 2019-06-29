package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzdf extends zzdz {
    private static final String ID = zzbf.LESS_EQUALS.toString();

    public zzdf() {
        super(ID);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(zzgj zzgj, zzgj zzgj2, Map<String, zzbr> map) {
        return zzgj.compareTo(zzgj2) <= 0;
    }
}
