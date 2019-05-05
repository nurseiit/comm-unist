package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.request.GoalsReadRequest;
import com.google.android.gms.fitness.result.GoalsResult;
import java.util.Collections;

final class zzbxy extends zzbuy<GoalsResult> {
    private /* synthetic */ GoalsReadRequest zzaVE;

    zzbxy(zzbxx zzbxx, GoogleApiClient googleApiClient, GoalsReadRequest goalsReadRequest) {
        this.zzaVE = goalsReadRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwl) ((zzbux) zzb).zzrf()).zza(new GoalsReadRequest(this.zzaVE, new zzbxz(this)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new GoalsResult(status, Collections.emptyList());
    }
}
