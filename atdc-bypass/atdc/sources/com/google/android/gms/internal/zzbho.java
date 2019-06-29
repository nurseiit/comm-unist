package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;

abstract class zzbho<R extends Result> extends zzbay<R, zzbht> {
    public zzbho(GoogleApiClient googleApiClient) {
        super(zzbhb.API, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    public abstract void zza(Context context, zzbie zzbie) throws RemoteException;

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzbht zzbht = (zzbht) zzb;
        zza(zzbht.getContext(), (zzbie) zzbht.zzrf());
    }
}
