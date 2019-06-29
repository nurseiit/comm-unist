package com.google.android.gms.internal;

import com.google.android.gms.fitness.result.ListSubscriptionsResult;

final class zzbyr extends zzbwy {
    private final zzbaz<ListSubscriptionsResult> zzaIz;

    private zzbyr(zzbaz<ListSubscriptionsResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    /* synthetic */ zzbyr(zzbaz zzbaz, zzbym zzbym) {
        this(zzbaz);
    }

    public final void zza(ListSubscriptionsResult listSubscriptionsResult) {
        this.zzaIz.setResult(listSubscriptionsResult);
    }
}
