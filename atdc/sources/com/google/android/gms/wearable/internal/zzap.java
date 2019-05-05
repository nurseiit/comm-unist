package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;

final class zzap extends zzn<Status> {
    private /* synthetic */ zzak zzbSk;
    private /* synthetic */ boolean zzbSl;
    private /* synthetic */ Uri zzbzR;

    zzap(zzak zzak, GoogleApiClient googleApiClient, Uri uri, boolean z) {
        this.zzbSk = zzak;
        this.zzbzR = uri;
        this.zzbSl = z;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzfw) zzb).zza((zzbaz) this, this.zzbSk.zzakv, this.zzbzR, this.zzbSl);
    }

    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
