package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.panorama.Panorama;

abstract class zzcqk<R extends Result> extends zzbay<R, zzcql> {
    protected zzcqk(GoogleApiClient googleApiClient) {
        super(Panorama.zzajR, googleApiClient);
    }

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    public abstract void zza(Context context, zzcqc zzcqc) throws RemoteException;

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzcql zzcql = (zzcql) zzb;
        zza(zzcql.getContext(), (zzcqc) zzcql.zzrf());
    }
}
