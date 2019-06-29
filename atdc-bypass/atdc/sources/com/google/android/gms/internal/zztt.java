package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zztt {
    private final Object mLock = new Object();
    private zztu zzLD;

    public final zztu zzb(Context context, zzaje zzaje) {
        zztu zztu;
        synchronized (this.mLock) {
            if (this.zzLD == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                this.zzLD = new zztu(context, zzaje, (String) zzbs.zzbL().zzd(zzmo.zzBX));
            }
            zztu = this.zzLD;
        }
        return zztu;
    }
}
