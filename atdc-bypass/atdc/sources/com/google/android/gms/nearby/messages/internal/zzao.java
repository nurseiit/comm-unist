package com.google.android.gms.nearby.messages.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.nearby.messages.Message;

final class zzao extends zzav {
    private /* synthetic */ Message zzbzk;

    zzao(zzak zzak, GoogleApiClient googleApiClient, Message message) {
        this.zzbzk = message;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzah) zzb).zza(zzzX(), zzaf.zza(this.zzbzk));
    }
}
