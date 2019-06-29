package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzas extends zzbr {
    private static final String ID = zzbf.CUSTOM_VAR.toString();
    private static final String NAME = zzbg.NAME.toString();
    private static final String zzbEm = zzbg.DEFAULT_VALUE.toString();
    private final DataLayer zzbDx;

    public zzas(DataLayer dataLayer) {
        super(ID, NAME);
        this.zzbDx = dataLayer;
    }

    public final boolean zzAE() {
        return false;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        Object obj = this.zzbDx.get(zzgk.zzb((zzbr) map.get(NAME)));
        if (obj != null) {
            return zzgk.zzI(obj);
        }
        zzbr zzbr = (zzbr) map.get(zzbEm);
        return zzbr != null ? zzbr : zzgk.zzCh();
    }
}
