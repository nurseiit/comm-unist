package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.dynamiclinks.ShortDynamicLink;

final class zq extends zzbeq<zm, ShortDynamicLink> {
    private final Bundle zzcjY;

    zq(Bundle bundle) {
        this.zzcjY = bundle;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zm zmVar = (zm) zzb;
        try {
            ((zv) zmVar.zzrf()).zza(new zp(taskCompletionSource), this.zzcjY);
        } catch (RemoteException unused) {
        }
    }
}
