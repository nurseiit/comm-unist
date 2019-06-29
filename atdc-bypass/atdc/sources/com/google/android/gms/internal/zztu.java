package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.js.zza;
import com.google.android.gms.ads.internal.js.zzl;

@zzzn
public final class zztu {
    private static zzahz<zza> zzLE = new zztv();
    private static zzahz<zza> zzLF = new zztw();
    private final zzl zzLG;

    public zztu(Context context, zzaje zzaje, String str) {
        this.zzLG = new zzl(context, zzaje, str, zzLE, zzLF);
    }

    public final zzl zzff() {
        return this.zzLG;
    }
}
