package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.wearable.ChannelApi.ChannelListener;

final class zzag extends zzn<Status> {
    private final String zzakv;
    private ChannelListener zzbSg;

    zzag(GoogleApiClient googleApiClient, ChannelListener channelListener, String str) {
        super(googleApiClient);
        this.zzbSg = (ChannelListener) zzbo.zzu(channelListener);
        this.zzakv = str;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzfw) zzb).zza(this, this.zzbSg, this.zzakv);
        this.zzbSg = null;
    }

    public final /* synthetic */ Result zzb(Status status) {
        this.zzbSg = null;
        return status;
    }
}
