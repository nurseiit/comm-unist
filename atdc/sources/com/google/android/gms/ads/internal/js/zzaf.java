package com.google.android.gms.ads.internal.js;

import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.internal.zzagz;
import com.google.android.gms.internal.zzajs;

final class zzaf implements zzajs<zza> {
    final /* synthetic */ zzac zzLx;

    zzaf(zzac zzac) {
        this.zzLx = zzac;
    }

    public final /* synthetic */ void zzc(Object obj) {
        zza zza = (zza) obj;
        zzbs.zzbz();
        zzagz.runOnUiThread(new zzag(this, zza));
    }
}
