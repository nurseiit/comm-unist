package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzvb extends zzed implements zzuz {
    zzvb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
    }

    public final int zzfo() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
