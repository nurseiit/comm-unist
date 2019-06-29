package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbee;
import com.google.android.gms.internal.zzcdj;
import com.google.android.gms.internal.zzcdn;
import com.google.android.gms.tasks.TaskCompletionSource;

final class zzg extends zzbee<zzcdj, LocationCallback> {
    private /* synthetic */ zzcdn zzbhD;
    private /* synthetic */ zzbdw zzbhE;

    zzg(FusedLocationProviderClient fusedLocationProviderClient, zzbdw zzbdw, zzcdn zzcdn, zzbdw zzbdw2) {
        this.zzbhD = zzcdn;
        this.zzbhE = zzbdw2;
        super(zzbdw);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zzb(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        ((zzcdj) zzb).zza(this.zzbhD, this.zzbhE, new zza(taskCompletionSource));
    }
}
