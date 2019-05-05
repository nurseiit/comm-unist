package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzacx extends zzed implements zzacv {
    zzacx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    public final int getAmount() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final String getType() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
