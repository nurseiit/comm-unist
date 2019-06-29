package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.List;
import java.util.Map;

final class zzaz extends zzgi {
    private static final String ID = zzbf.DATA_LAYER_WRITE.toString();
    private static final String VALUE = zzbg.VALUE.toString();
    private static final String zzbEx = zzbg.CLEAR_PERSISTENT_DATA_LAYER_PREFIX.toString();
    private final DataLayer zzbDx;

    public zzaz(DataLayer dataLayer) {
        super(ID, VALUE);
        this.zzbDx = dataLayer;
    }

    public final void zzq(Map<String, zzbr> map) {
        zzbr zzbr = (zzbr) map.get(VALUE);
        if (!(zzbr == null || zzbr == zzgk.zzCb())) {
            Object zzg = zzgk.zzg(zzbr);
            if (zzg instanceof List) {
                for (Object next : (List) zzg) {
                    if (next instanceof Map) {
                        this.zzbDx.push((Map) next);
                    }
                }
            }
        }
        zzbr zzbr2 = (zzbr) map.get(zzbEx);
        if (zzbr2 != null && zzbr2 != zzgk.zzCb()) {
            String zzb = zzgk.zzb(zzbr2);
            if (zzb != zzgk.zzCg()) {
                this.zzbDx.zzfc(zzb);
            }
        }
    }
}
