package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzcw extends zzbr {
    private static final String ID = zzbf.INSTALL_REFERRER.toString();
    private static final String zzbDo = zzbg.COMPONENT.toString();
    private final Context zzqD;

    public zzcw(Context context) {
        super(ID, new String[0]);
        this.zzqD = context;
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        String zzL = zzcx.zzL(this.zzqD, ((zzbr) map.get(zzbDo)) != null ? zzgk.zzb((zzbr) map.get(zzbDo)) : null);
        return zzL != null ? zzgk.zzI(zzL) : zzgk.zzCh();
    }
}
