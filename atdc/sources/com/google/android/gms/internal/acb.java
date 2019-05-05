package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;

public final class acb extends zzed implements aca {
    acb(IBinder iBinder) {
        super(iBinder, "com.google.firebase.storage.network.INetworkRequest");
    }

    public final int getResultCode() throws RemoteException {
        Parcel zza = zza(12, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final void reset() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void zzLf() throws RemoteException {
        zzb(4, zzZ());
    }

    public final IObjectWrapper zzLg() throws RemoteException {
        Parcel zza = zza(7, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final IObjectWrapper zzLh() throws RemoteException {
        Parcel zza = zza(8, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final String zzLi() throws RemoteException {
        Parcel zza = zza(9, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final IObjectWrapper zzLj() throws RemoteException {
        Parcel zza = zza(11, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final boolean zzLk() throws RemoteException {
        Parcel zza = zza(13, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final int zzLl() throws RemoteException {
        Parcel zza = zza(14, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final void zzam(String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(5, zzZ);
    }

    public final void zzhM(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(1, zzZ);
    }

    public final void zzhN(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(3, zzZ);
    }

    public final String zzhO(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(6, zzZ);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
