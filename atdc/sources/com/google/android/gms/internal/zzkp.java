package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzkp extends zzed implements zzkn {
    zzkp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    public final void initialize() throws RemoteException {
        zzb(1, zzZ());
    }

    public final void setAppMuted(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(4, zzZ);
    }

    public final void setAppVolume(float f) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeFloat(f);
        zzb(2, zzZ);
    }

    public final void zzb(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeString(str);
        zzb(5, zzZ);
    }

    public final void zzc(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(6, zzZ);
    }

    public final void zzu(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(3, zzZ);
    }
}
