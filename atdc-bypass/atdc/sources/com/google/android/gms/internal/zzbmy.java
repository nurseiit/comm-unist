package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.zzm;

final class zzbmy extends zzbnd {
    private /* synthetic */ MetadataChangeSet zzaOr;
    private /* synthetic */ int zzaOs;
    private /* synthetic */ int zzaOt;
    private /* synthetic */ zzm zzaOu;
    private /* synthetic */ zzbmx zzaOv;

    zzbmy(zzbmx zzbmx, GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, int i, int i2, zzm zzm) {
        this.zzaOv = zzbmx;
        this.zzaOr = metadataChangeSet;
        this.zzaOs = i;
        this.zzaOt = i2;
        this.zzaOu = zzm;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzbmh zzbmh = (zzbmh) zzb;
        this.zzaOr.zzsW().setContext(zzbmh.getContext());
        ((zzbom) zzbmh.zzrf()).zza(new zzblf(this.zzaOv.getDriveId(), this.zzaOr.zzsW(), this.zzaOs, this.zzaOt, this.zzaOu), new zzbna(this));
    }
}
