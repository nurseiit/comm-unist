package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zzaqb extends zzaqa<Status> {
    private final String zzajX;

    public zzaqb(zzapy zzapy, GoogleApiClient googleApiClient, String str) {
        super(googleApiClient);
        this.zzajX = str;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zzaqh zzaqh = (zzaqh) zzb;
        try {
            ((zzaql) zzaqh.zzrf()).zza(new zzaqc(this), this.zzajX);
        } catch (RemoteException unused) {
        }
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
