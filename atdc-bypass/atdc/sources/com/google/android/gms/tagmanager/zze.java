package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zze extends zzbr {
    private static final String ID = zzbf.ADVERTISER_ID.toString();
    private final zza zzbDn;

    public zze(Context context) {
        this(zza.zzbl(context));
    }

    private zze(zza zza) {
        super(ID, new String[0]);
        this.zzbDn = zza;
        this.zzbDn.zzAy();
    }

    public final boolean zzAE() {
        return false;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        String zzAy = this.zzbDn.zzAy();
        return zzAy == null ? zzgk.zzCh() : zzgk.zzI(zzAy);
    }
}
