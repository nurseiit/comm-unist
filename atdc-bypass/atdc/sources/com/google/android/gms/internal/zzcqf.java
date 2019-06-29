package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzcqf extends zzcqi {
    private /* synthetic */ Uri zzbzR;

    zzcqf(zzcqe zzcqe, GoogleApiClient googleApiClient, Uri uri) {
        this.zzbzR = uri;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(Context context, zzcqc zzcqc) throws RemoteException {
        zzcqc.zza(new zzcqj(this), this.zzbzR, null, false);
    }
}
