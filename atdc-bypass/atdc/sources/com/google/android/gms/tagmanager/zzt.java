package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzt extends zzbr {
    private static final String ID = zzbf.CONSTANT.toString();
    private static final String VALUE = zzbg.VALUE.toString();

    public zzt() {
        super(ID, VALUE);
    }

    public static String zzAG() {
        return ID;
    }

    public static String zzAH() {
        return VALUE;
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        return (zzbr) map.get(VALUE);
    }
}
