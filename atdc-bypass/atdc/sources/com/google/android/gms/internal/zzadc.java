package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzadc extends zzed implements zzadb {
    zzadc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
    }

    public final IBinder zza(IObjectWrapper iObjectWrapper, zzuq zzuq, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzuq);
        zzZ.writeInt(zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        Parcel zza = zza(1, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
