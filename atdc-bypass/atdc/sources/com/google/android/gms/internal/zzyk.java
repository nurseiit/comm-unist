package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.js.zza;
import com.google.android.gms.ads.internal.zzbb;
import java.lang.ref.WeakReference;

final class zzyk implements zzahz<zza> {
    private /* synthetic */ zzyh zzRt;

    zzyk(zzyh zzyh) {
        this.zzRt = zzyh;
    }

    public final /* synthetic */ void zzc(Object obj) {
        zzbb zzbb = (zzbb) new WeakReference(this.zzRt.zzRm).get();
        ((zza) obj).zza(zzbb, zzbb, zzbb, zzbb, false, null, null, null);
    }
}
