package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public final class zzazd extends zzaza {
    private /* synthetic */ zzazb zzazb;

    protected zzazd(zzazb zzazb) {
        this.zzazb = zzazb;
        super(zzazb.zzayZ);
    }

    public final void onDisconnected() throws RemoteException {
        zzayw.zzapq.zzb("onDisconnected", new Object[0]);
        this.zzazb.zzayZ.zzoP();
        this.zzazb.setResult(new zzaze(Status.zzaBm));
    }

    public final void onError(int i) throws RemoteException {
        zzayw.zzapq.zzb("onError: %d", Integer.valueOf(i));
        this.zzazb.zzayZ.zzoP();
        this.zzazb.setResult(new zzaze(Status.zzaBo));
    }
}
