package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzayo;

public final class zze {
    private static final zzayo zzarK = new zzayo("DiscoveryManager");
    private final zzq zzask;

    zze(zzq zzq) {
        this.zzask = zzq;
    }

    public final IObjectWrapper zznp() {
        try {
            return this.zzask.zznu();
        } catch (RemoteException e) {
            zzarK.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzq.class.getSimpleName());
            return null;
        }
    }
}
