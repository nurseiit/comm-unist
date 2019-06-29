package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class zzazg extends zzazm {
    private /* synthetic */ zzazl zzaze;
    private /* synthetic */ zzazf zzazf;

    zzazg(zzazf zzazf, zzazl zzazl) {
        this.zzazf = zzazf;
        this.zzaze = zzazl;
    }

    public final void zzah(int i) throws RemoteException {
        zzazf.zzapq.zzb("onRemoteDisplayEnded", new Object[0]);
        if (this.zzaze != null) {
            this.zzaze.zzah(i);
        }
        if (this.zzazf.zzazc != null) {
            this.zzazf.zzazc.onRemoteDisplayEnded(new Status(i));
        }
    }
}
