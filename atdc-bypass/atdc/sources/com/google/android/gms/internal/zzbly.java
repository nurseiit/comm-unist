package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.DriveIdResult;

final class zzbly extends zzbkt {
    private final zzbaz<DriveIdResult> zzaIz;

    public zzbly(zzbaz<DriveIdResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(new zzblz(status, null));
    }

    public final void zza(zzbpf zzbpf) throws RemoteException {
        this.zzaIz.setResult(new zzblz(Status.zzaBm, zzbpf.zzaNt));
    }

    public final void zza(zzbpq zzbpq) throws RemoteException {
        this.zzaIz.setResult(new zzblz(Status.zzaBm, new zzblj(zzbpq.zzaND).getDriveId()));
    }
}
