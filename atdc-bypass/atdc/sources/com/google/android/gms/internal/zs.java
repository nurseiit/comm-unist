package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;

final class zs extends zzbeq<zm, PendingDynamicLinkData> {
    private final String zzcjS;

    zs(String str) {
        this.zzcjS = str;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zm zmVar = (zm) zzb;
        try {
            ((zv) zmVar.zzrf()).zza(new zr(taskCompletionSource), this.zzcjS);
        } catch (RemoteException unused) {
        }
    }
}
