package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.DriveId;

final class zzbml extends zzbmg {
    private /* synthetic */ DriveId zzaOd;
    private /* synthetic */ int zzaOe = 1;

    zzbml(zzbmh zzbmh, GoogleApiClient googleApiClient, DriveId driveId, int i) {
        this.zzaOd = driveId;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbqk(this.zzaOd, this.zzaOe), null, null, new zzbqq(this));
    }
}
