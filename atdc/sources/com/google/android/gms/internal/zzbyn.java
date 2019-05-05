package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.zzai;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;

final class zzbyn extends zzbvh<ListSubscriptionsResult> {
    private /* synthetic */ DataType zzaVN;

    zzbyn(zzbyl zzbyl, GoogleApiClient googleApiClient, DataType dataType) {
        this.zzaVN = dataType;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbwr) ((zzbvg) zzb).zzrf()).zza(new zzai(this.zzaVN, new zzbyr(this, null)));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return ListSubscriptionsResult.zzD(status);
    }
}
