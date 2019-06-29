package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.SessionReadRequest;
import com.google.android.gms.fitness.result.SessionReadResult;

final class zzbzd extends zzbvp<SessionReadResult> {
    private /* synthetic */ SessionReadRequest zzaWf;

    zzbzd(zzbyz zzbyz, GoogleApiClient googleApiClient, SessionReadRequest sessionReadRequest) {
        this.zzaWf = sessionReadRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwv) ((zzbvo) zzb).zzrf()).zza(new SessionReadRequest(this.zzaWf, new zzbzg(this, null)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return SessionReadResult.zzE(status);
    }
}
