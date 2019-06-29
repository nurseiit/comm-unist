package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzfl extends zzbr {
    private static final String ID = zzbf.SDK_VERSION.toString();

    public zzfl() {
        super(ID, new String[0]);
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        return zzgk.zzI(Integer.valueOf(VERSION.SDK_INT));
    }
}
