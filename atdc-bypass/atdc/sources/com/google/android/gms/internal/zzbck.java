package com.google.android.gms.internal;

import android.support.annotation.BinderThread;
import java.lang.ref.WeakReference;

final class zzbck extends zzctp {
    private final WeakReference<zzbcd> zzaDq;

    zzbck(zzbcd zzbcd) {
        this.zzaDq = new WeakReference(zzbcd);
    }

    @BinderThread
    public final void zzb(zzctx zzctx) {
        zzbcd zzbcd = (zzbcd) this.zzaDq.get();
        if (zzbcd != null) {
            zzbcd.zzaCZ.zza(new zzbcl(this, zzbcd, zzbcd, zzctx));
        }
    }
}
