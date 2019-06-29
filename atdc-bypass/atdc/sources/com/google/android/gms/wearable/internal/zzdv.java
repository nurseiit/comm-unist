package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.wearable.MessageApi.MessageListener;

final class zzdv extends zzn<Status> {
    private zzbdw<MessageListener> zzaEU;
    private MessageListener zzbSV;
    private IntentFilter[] zzbSW;

    private zzdv(GoogleApiClient googleApiClient, MessageListener messageListener, zzbdw<MessageListener> zzbdw, IntentFilter[] intentFilterArr) {
        super(googleApiClient);
        this.zzbSV = (MessageListener) zzbo.zzu(messageListener);
        this.zzaEU = (zzbdw) zzbo.zzu(zzbdw);
        this.zzbSW = (IntentFilter[]) zzbo.zzu(intentFilterArr);
    }

    /* synthetic */ zzdv(GoogleApiClient googleApiClient, MessageListener messageListener, zzbdw zzbdw, IntentFilter[] intentFilterArr, zzdt zzdt) {
        this(googleApiClient, messageListener, zzbdw, intentFilterArr);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzfw) zzb).zza((zzbaz) this, this.zzbSV, this.zzaEU, this.zzbSW);
        this.zzbSV = null;
        this.zzaEU = null;
        this.zzbSW = null;
    }

    public final /* synthetic */ Result zzb(Status status) {
        this.zzbSV = null;
        this.zzaEU = null;
        this.zzbSW = null;
        return status;
    }
}
