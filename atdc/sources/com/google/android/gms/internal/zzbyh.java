package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.zzf;
import com.google.android.gms.fitness.result.DailyTotalResult;

final class zzbyh extends zzbvb<DailyTotalResult> {
    private /* synthetic */ DataType zzaVN;
    private /* synthetic */ boolean zzaVO;

    zzbyh(zzbya zzbya, GoogleApiClient googleApiClient, DataType dataType, boolean z) {
        this.zzaVN = dataType;
        this.zzaVO = z;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzbva zzbva = (zzbva) zzb;
        ((zzbwn) zzbva.zzrf()).zza(new zzf(new zzbyi(this), this.zzaVN, this.zzaVO));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return DailyTotalResult.zza(status, this.zzaVN);
    }
}
