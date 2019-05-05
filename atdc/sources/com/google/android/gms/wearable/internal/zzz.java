package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbaz;
import com.google.android.gms.wearable.CapabilityApi.CapabilityListener;

final class zzz extends zzn<Status> {
    private CapabilityListener zzbRY;

    private zzz(GoogleApiClient googleApiClient, CapabilityListener capabilityListener) {
        super(googleApiClient);
        this.zzbRY = capabilityListener;
    }

    /* synthetic */ zzz(GoogleApiClient googleApiClient, CapabilityListener capabilityListener, zzp zzp) {
        this(googleApiClient, capabilityListener);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzfw) zzb).zza((zzbaz) this, this.zzbRY);
        this.zzbRY = null;
    }

    public final /* synthetic */ Result zzb(Status status) {
        this.zzbRY = null;
        return status;
    }
}
