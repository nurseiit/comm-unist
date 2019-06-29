package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.MetadataChangeSet;

final class zzbnr extends zzbny {
    private /* synthetic */ zzbnn zzaOD;
    private /* synthetic */ MetadataChangeSet zzaOr;

    zzbnr(zzbnn zzbnn, GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        this.zzaOD = zzbnn;
        this.zzaOr = metadataChangeSet;
        super(zzbnn, googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzbmh zzbmh = (zzbmh) zzb;
        this.zzaOr.zzsW().setContext(zzbmh.getContext());
        ((zzbom) zzbmh.zzrf()).zza(new zzbqx(this.zzaOD.zzaLV, this.zzaOr.zzsW()), new zzbnw(this));
    }
}
