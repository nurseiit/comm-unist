package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzf extends zzbr {
    private static final String ID = zzbf.ADVERTISING_TRACKING_ENABLED.toString();
    private final zza zzbDn;

    public zzf(Context context) {
        this(zza.zzbl(context));
    }

    private zzf(zza zza) {
        super(ID, new String[0]);
        this.zzbDn = zza;
    }

    public final boolean zzAE() {
        return false;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        return zzgk.zzI(Boolean.valueOf(this.zzbDn.isLimitAdTrackingEnabled() ^ 1));
    }
}
