package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbdw;

final class zzb<T> extends zzn<Status> {
    private T mListener;
    private zzbdw<T> zzaEU;
    private zzc<T> zzbRI;

    private zzb(GoogleApiClient googleApiClient, T t, zzbdw<T> zzbdw, zzc<T> zzc) {
        super(googleApiClient);
        this.mListener = zzbo.zzu(t);
        this.zzaEU = (zzbdw) zzbo.zzu(zzbdw);
        this.zzbRI = (zzc) zzbo.zzu(zzc);
    }

    static <T> PendingResult<Status> zza(GoogleApiClient googleApiClient, zzc<T> zzc, T t) {
        return googleApiClient.zzd(new zzb(googleApiClient, t, googleApiClient.zzp(t), zzc));
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(com.google.android.gms.common.api.Api.zzb zzb) throws RemoteException {
        this.zzbRI.zza((zzfw) zzb, this, this.mListener, this.zzaEU);
        this.mListener = null;
        this.zzaEU = null;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        this.mListener = null;
        this.zzaEU = null;
        return status;
    }
}
