package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.panorama.PanoramaApi.PanoramaResult;

final class zzcqj extends zzcqb {
    private final zzbaz<PanoramaResult> zzaIz;

    public zzcqj(zzbaz<PanoramaResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void zza(int i, Bundle bundle, int i2, Intent intent) {
        this.zzaIz.setResult(new zzcqm(new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null), intent));
    }
}
