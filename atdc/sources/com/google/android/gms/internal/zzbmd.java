package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.MetadataBuffer;

final class zzbmd extends zzbkt {
    private final zzbaz<MetadataBufferResult> zzaIz;

    public zzbmd(zzbaz<MetadataBufferResult> zzbaz) {
        this.zzaIz = zzbaz;
    }

    public final void onError(Status status) throws RemoteException {
        this.zzaIz.setResult(new zzbmb(status, null, false));
    }

    public final void zza(zzbpl zzbpl) throws RemoteException {
        this.zzaIz.setResult(new zzbmb(Status.zzaBm, new MetadataBuffer(zzbpl.zzaPi), zzbpl.zzaNP));
    }
}
