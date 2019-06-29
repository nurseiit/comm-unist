package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzam extends zzn<Status> {
    private /* synthetic */ int zzKc;
    private /* synthetic */ zzak zzbSk;

    zzam(zzak zzak, GoogleApiClient googleApiClient, int i) {
        this.zzbSk = zzak;
        this.zzKc = i;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzfw zzfw = (zzfw) zzb;
        ((zzdn) zzfw.zzrf()).zzb(new zzfe(this), this.zzbSk.zzakv, this.zzKc);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
