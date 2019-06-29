package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.internal.zzafj;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaje;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzac {
    private Context mContext;
    private final Object mLock = new Object();

    public final void zza(Context context, zzaje zzaje, String str, @Nullable Runnable runnable) {
        zza(context, zzaje, true, null, str, null, runnable);
    }

    /* Access modifiers changed, original: final */
    public final void zza(Context context, zzaje zzaje, boolean z, @Nullable zzafj zzafj, String str, @Nullable String str2, @Nullable Runnable runnable) {
        Object obj = 1;
        if (zzafj != null) {
            if ((zzbs.zzbF().currentTimeMillis() - zzafj.zzhi() > ((Long) zzbs.zzbL().zzd(zzmo.zzFQ)).longValue() ? 1 : null) == null && zzafj.zzhj()) {
                obj = null;
            }
        }
        if (obj != null) {
            if (context == null) {
                zzajc.zzaT("Context not provided to fetch application settings");
            } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                zzajc.zzaT("App settings could not be fetched. Required parameters missing");
            } else {
                this.mContext = context;
                zzagz.zzZr.post(new zzae(this, zzbs.zzbz().zze(context, zzaje), new zzad(this, runnable), str, str2, z, context));
            }
        }
    }
}
