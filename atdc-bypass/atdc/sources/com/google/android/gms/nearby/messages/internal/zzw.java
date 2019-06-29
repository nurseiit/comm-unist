package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;

public final class zzw extends zzed implements zzu {
    zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.messages.internal.IPublishCallback");
    }

    public final void onExpired() throws RemoteException {
        zzc(1, zzZ());
    }
}
