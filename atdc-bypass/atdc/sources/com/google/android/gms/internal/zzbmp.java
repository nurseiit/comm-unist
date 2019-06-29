package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.zzp;

final class zzbmp extends zzbmg {
    private /* synthetic */ zzbmn zzaOj;
    private /* synthetic */ MetadataChangeSet zzaOk;
    private /* synthetic */ zzp zzaOl;

    zzbmp(zzbmn zzbmn, GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, zzp zzp) {
        this.zzaOj = zzbmn;
        this.zzaOk = metadataChangeSet;
        this.zzaOl = zzp;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzbmh zzbmh = (zzbmh) zzb;
        this.zzaOk.zzsW().setContext(zzbmh.getContext());
        ((zzbom) zzbmh.zzrf()).zza(new zzbkw(this.zzaOj.zzaOg.getDriveId(), this.zzaOk.zzsW(), this.zzaOj.zzaOg.getRequestId(), this.zzaOj.zzaOg.zzsK(), this.zzaOl), new zzbqq(this));
    }
}
