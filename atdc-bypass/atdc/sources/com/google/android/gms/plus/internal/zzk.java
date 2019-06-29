package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;

final class zzk extends zza {
    private final zzbaz<Status> zzbiT;

    public zzk(zzbaz<Status> zzbaz) {
        this.zzbiT = zzbaz;
    }

    public final void zzf(int i, Bundle bundle) {
        this.zzbiT.setResult(new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
    }
}
