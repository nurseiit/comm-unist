package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.DriveContentsResult;
import com.google.android.gms.drive.DriveFile.DownloadProgressListener;

final class zzbqd extends zzbkt {
    private final zzbaz<DriveContentsResult> zzaIz;
    private final DownloadProgressListener zzaPp;

    zzbqd(zzbaz<DriveContentsResult> zzbaz, DownloadProgressListener downloadProgressListener) {
        this.zzaIz = zzbaz;
        this.zzaPp = downloadProgressListener;
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(new zzblw(status, null));
    }

    public final void zza(zzboz zzboz) throws RemoteException {
        this.zzaIz.setResult(new zzblw(zzboz.zzaOV ? new Status(-1) : Status.zzaBm, new zzbmn(zzboz.zzaOg)));
    }

    public final void zza(zzbpd zzbpd) throws RemoteException {
        if (this.zzaPp != null) {
            this.zzaPp.onProgress(zzbpd.zzaOY, zzbpd.zzaOZ);
        }
    }
}
