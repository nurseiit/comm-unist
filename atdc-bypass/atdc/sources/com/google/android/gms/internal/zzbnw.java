package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveResource.MetadataResult;

final class zzbnw extends zzbkt {
    private final zzbaz<MetadataResult> zzaIz;

    public zzbnw(zzbaz<MetadataResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(new zzbnx(status, null));
    }

    public final void zza(zzbpq zzbpq) throws RemoteException {
        this.zzaIz.setResult(new zzbnx(Status.zzaBm, new zzblj(zzbpq.zzaND)));
    }
}
