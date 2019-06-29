package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzal extends zzn<Status> {
    private /* synthetic */ zzak zzbSk;

    zzal(zzak zzak, GoogleApiClient googleApiClient) {
        this.zzbSk = zzak;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzfw zzfw = (zzfw) zzb;
        ((zzdn) zzfw.zzrf()).zzc(new zzfd(this), this.zzbSk.zzakv);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
