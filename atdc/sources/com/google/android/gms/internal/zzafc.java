package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;

@zzzn
public final class zzafc implements zzafe {
    public final zzajm<String> zze(zzaae zzaae) {
        return new zzajh(zzaae.zzSB);
    }

    public final zzajm<Info> zzz(Context context) {
        zzajg zzajg = new zzajg();
        zzji.zzds();
        if (zzaiy.zzY(context)) {
            zzagt.zza(new zzafd(this, context, zzajg));
        }
        return zzajg;
    }
}
