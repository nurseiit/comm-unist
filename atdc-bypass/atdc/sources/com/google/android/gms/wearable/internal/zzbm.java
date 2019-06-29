package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItemBuffer;

final class zzbm extends zzn<DataItemBuffer> {
    private /* synthetic */ int zzbSx;
    private /* synthetic */ Uri zzbzR;

    zzbm(zzbi zzbi, GoogleApiClient googleApiClient, Uri uri, int i) {
        this.zzbzR = uri;
        this.zzbSx = i;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzfw zzfw = (zzfw) zzb;
        ((zzdn) zzfw.zzrf()).zza(new zzfm(this), this.zzbzR, this.zzbSx);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return new DataItemBuffer(DataHolder.zzau(status.getStatusCode()));
    }
}
