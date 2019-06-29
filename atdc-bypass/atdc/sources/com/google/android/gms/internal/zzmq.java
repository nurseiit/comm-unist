package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.zzbs;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

@zzzn
public final class zzmq {
    private Context mContext = null;
    private boolean zzGI;
    private String zzGJ;
    private Map<String, String> zzGK;
    private String zzwH = null;

    public zzmq(Context context, String str) {
        this.mContext = context;
        this.zzwH = str;
        this.zzGI = ((Boolean) zzbs.zzbL().zzd(zzmo.zzCQ)).booleanValue();
        this.zzGJ = (String) zzbs.zzbL().zzd(zzmo.zzCR);
        this.zzGK = new LinkedHashMap();
        this.zzGK.put("s", "gmob_sdk");
        this.zzGK.put("v", "3");
        this.zzGK.put("os", VERSION.RELEASE);
        this.zzGK.put("sdk", VERSION.SDK);
        zzbs.zzbz();
        this.zzGK.put("device", zzagz.zzhQ());
        this.zzGK.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map map = this.zzGK;
        String str2 = "is_lite_sdk";
        zzbs.zzbz();
        map.put(str2, zzagz.zzO(context) ? "1" : "0");
        Future zzn = zzbs.zzbI().zzn(this.mContext);
        try {
            zzn.get();
            this.zzGK.put("network_coarse", Integer.toString(((zzacb) zzn.get()).zzVS));
            this.zzGK.put("network_fine", Integer.toString(((zzacb) zzn.get()).zzVT));
        } catch (Exception e) {
            zzbs.zzbD().zza(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* Access modifiers changed, original: final */
    public final Context getContext() {
        return this.mContext;
    }

    /* Access modifiers changed, original: final */
    public final String zzck() {
        return this.zzwH;
    }

    /* Access modifiers changed, original: final */
    public final boolean zzdL() {
        return this.zzGI;
    }

    /* Access modifiers changed, original: final */
    public final String zzdM() {
        return this.zzGJ;
    }

    /* Access modifiers changed, original: final */
    public final Map<String, String> zzdN() {
        return this.zzGK;
    }
}
