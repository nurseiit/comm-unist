package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzak extends zzga {
    private static final String ID = zzbf.CONTAINS.toString();

    public zzak() {
        super(ID);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zza(String str, String str2, Map<String, zzbr> map) {
        return str.contains(str2);
    }
}
