package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzcqg extends zzcqi {
    private /* synthetic */ Uri zzbzR;

    zzcqg(zzcqe zzcqe, GoogleApiClient googleApiClient, Uri uri) {
        this.zzbzR = uri;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(Context context, zzcqc zzcqc) throws RemoteException {
        zzcqe.zza(context, zzcqc, new zzcqj(this), this.zzbzR, null);
    }
}
