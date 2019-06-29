package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.MetadataChangeSet;

final class zzbmz extends zzbnf {
    private /* synthetic */ MetadataChangeSet zzaOr;
    private /* synthetic */ zzbmx zzaOv;

    zzbmz(zzbmx zzbmx, GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        this.zzaOv = zzbmx;
        this.zzaOr = metadataChangeSet;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzbmh zzbmh = (zzbmh) zzb;
        this.zzaOr.zzsW().setContext(zzbmh.getContext());
        ((zzbom) zzbmh.zzrf()).zza(new zzblh(this.zzaOv.getDriveId(), this.zzaOr.zzsW()), new zzbnb(this));
    }
}
