package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;
import java.util.Collection;

final class zzcre extends zzcrg {
    private /* synthetic */ Collection zzbAQ;

    zzcre(zzcra zzcra, GoogleApiClient googleApiClient, Collection collection) {
        this.zzbAQ = collection;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzh) zzb).zza(this, this.zzbAQ);
    }
}
