package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder.DriveFolderResult;

final class zzbnb extends zzbkt {
    private final zzbaz<DriveFolderResult> zzaIz;

    public zzbnb(zzbaz<DriveFolderResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(new zzbne(status, null));
    }

    public final void zza(zzbpf zzbpf) throws RemoteException {
        this.zzaIz.setResult(new zzbne(Status.zzaBm, new zzbmx(zzbpf.zzaNt)));
    }
}
