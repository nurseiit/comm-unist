package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class zzde extends zzbr {
    private static final String ID = zzbf.LANGUAGE.toString();

    public zzde() {
        super(ID, new String[0]);
    }

    public final boolean zzAE() {
        return false;
    }

    public final /* bridge */ /* synthetic */ String zzBk() {
        return super.zzBk();
    }

    public final /* bridge */ /* synthetic */ Set zzBl() {
        return super.zzBl();
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return zzgk.zzCh();
        }
        String language = locale.getLanguage();
        return language == null ? zzgk.zzCh() : zzgk.zzI(language.toLowerCase());
    }
}
