package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;

final class zzbna extends zzbkt {
    private final zzbaz<DriveFileResult> zzaIz;

    public zzbna(zzbaz<DriveFileResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(new zzbnc(status, null));
    }

    public final void zza(zzbpf zzbpf) throws RemoteException {
        this.zzaIz.setResult(new zzbnc(Status.zzaBm, new zzbms(zzbpf.zzaNt)));
    }
}
