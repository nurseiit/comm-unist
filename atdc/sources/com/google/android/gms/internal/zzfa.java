package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;

public final class zzfa extends zzed implements zzey {
    zzfa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.adshield.internal.IAdShieldClient");
    }

    public final IObjectWrapper zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        Parcel zza = zza(6, zzZ);
        iObjectWrapper2 = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return iObjectWrapper2;
    }

    public final String zza(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeString(str);
        Parcel zza = zza(8, zzZ);
        str = zza.readString();
        zza.recycle();
        return str;
    }

    public final String zza(IObjectWrapper iObjectWrapper, byte[] bArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeByteArray(bArr);
        Parcel zza = zza(12, zzZ);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final boolean zza(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(3, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final String zzaf() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        Parcel zza = zza(10, zzZ);
        iObjectWrapper2 = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return iObjectWrapper2;
    }

    public final void zzb(String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(2, zzZ);
    }

    public final boolean zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(4, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean zzb(String str, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, z);
        Parcel zza = zza(11, zzZ);
        z = zzef.zza(zza);
        zza.recycle();
        return z;
    }

    public final String zzc(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(7, zzZ);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(9, zzZ);
    }

    public final void zzk(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(5, zzZ);
    }
}
