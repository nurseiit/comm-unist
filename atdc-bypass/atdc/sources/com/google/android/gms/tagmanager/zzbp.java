package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzbp extends zzbr {
    private static final String ID = zzbf.EVENT.toString();
    private final zzfc zzbDy;

    public zzbp(zzfc zzfc) {
        super(ID, new String[0]);
        this.zzbDy = zzfc;
    }

    public final boolean zzAE() {
        return false;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        String zzBK = this.zzbDy.zzBK();
        return zzBK == null ? zzgk.zzCh() : zzgk.zzI(zzBK);
    }
}
