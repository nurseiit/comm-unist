package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.DriveId;

final class zzblr extends zzbma {
    private /* synthetic */ String zzaNM;

    zzblr(zzblo zzblo, GoogleApiClient googleApiClient, String str) {
        this.zzaNM = str;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzboi(DriveId.zzcO(this.zzaNM), false), new zzbly(this));
    }
}
