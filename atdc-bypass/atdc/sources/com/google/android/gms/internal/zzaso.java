package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzaso extends zzasm {
    private /* synthetic */ ProxyRequest zzalK;

    zzaso(zzasn zzasn, GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        this.zzalK = proxyRequest;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(Context context, zzasb zzasb) throws RemoteException {
        zzasb.zza(new zzasp(this), this.zzalK);
    }
}
