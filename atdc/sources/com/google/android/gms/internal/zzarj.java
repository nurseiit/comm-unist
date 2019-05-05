package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzarj extends zzarn<Status> {
    private /* synthetic */ Credential zzalA;

    zzarj(zzarg zzarg, GoogleApiClient googleApiClient, Credential credential) {
        this.zzalA = credential;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(Context context, zzart zzart) throws RemoteException {
        zzart.zza(new zzarm(this), new zzarv(this.zzalA));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
