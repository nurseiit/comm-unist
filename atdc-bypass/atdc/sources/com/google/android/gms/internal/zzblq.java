package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.DriveFile;

final class zzblq extends zzblx {
    private /* synthetic */ int zzaNL = DriveFile.MODE_WRITE_ONLY;

    zzblq(zzblo zzblo, GoogleApiClient googleApiClient, int i) {
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbla(this.zzaNL), new zzblv(this));
    }
}
