package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzkd extends zzed implements zzkc {
    zzkd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    public final IBinder zza(IObjectWrapper iObjectWrapper, zziv zziv, String str, zzuq zzuq, int i, int i2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zziv);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzuq);
        zzZ.writeInt(zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        zzZ.writeInt(i2);
        Parcel zza = zza(2, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
