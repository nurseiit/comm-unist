package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.zzbf;
import com.google.android.gms.internal.zzbg;
import com.google.android.gms.internal.zzbr;
import java.util.Map;

final class zzh extends zzbr {
    private static final String ID = zzbf.ADWORDS_CLICK_REFERRER.toString();
    private static final String zzbDo = zzbg.COMPONENT.toString();
    private static final String zzbDp = zzbg.CONVERSION_ID.toString();
    private final Context zzqD;

    public zzh(Context context) {
        super(ID, zzbDp);
        this.zzqD = context;
    }

    public final boolean zzAE() {
        return true;
    }

    public final zzbr zzo(Map<String, zzbr> map) {
        zzbr zzbr = (zzbr) map.get(zzbDp);
        if (zzbr == null) {
            return zzgk.zzCh();
        }
        String zzb = zzgk.zzb(zzbr);
        zzbr zzbr2 = (zzbr) map.get(zzbDo);
        String zzb2 = zzbr2 != null ? zzgk.zzb(zzbr2) : null;
        Context context = this.zzqD;
        String str = (String) zzcx.zzbEY.get(zzb);
        if (str == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_click_referrers", 0);
            str = sharedPreferences != null ? sharedPreferences.getString(zzb, "") : "";
            zzcx.zzbEY.put(zzb, str);
        }
        zzb2 = zzcx.zzV(str, zzb2);
        return zzb2 != null ? zzgk.zzI(zzb2) : zzgk.zzCh();
    }
}
