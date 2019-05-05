package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi.FileUploadPreferencesResult;

final class zzbnk extends zzbkt {
    private final zzbaz<FileUploadPreferencesResult> zzaIz;
    private /* synthetic */ zzbnh zzaOz;

    private zzbnk(zzbnh zzbnh, zzbaz<FileUploadPreferencesResult> zzbaz) {
        this.zzaOz = zzbnh;
        this.zzaIz = zzbaz;
    }

    /* synthetic */ zzbnk(zzbnh zzbnh, zzbaz zzbaz, zzbni zzbni) {
        this(zzbnh, zzbaz);
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(new zzbnl(this.zzaOz, status, null, null));
    }

    public final void zza(zzbpb zzbpb) throws RemoteException {
        this.zzaIz.setResult(new zzbnl(this.zzaOz, Status.zzaBm, zzbpb.zzaOW, null));
    }
}
