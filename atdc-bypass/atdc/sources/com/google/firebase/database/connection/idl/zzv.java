package com.google.firebase.database.connection.idl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import java.util.List;

public final class zzv extends zzed implements zzt {
    zzv(IBinder iBinder) {
        super(iBinder, "com.google.firebase.database.connection.idl.IPersistentConnection");
    }

    public final void compareAndPut(List<String> list, IObjectWrapper iObjectWrapper, String str, zzah zzah) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzah);
        zzb(9, zzZ);
    }

    public final void initialize() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void interrupt(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(14, zzZ);
    }

    public final boolean isInterrupted(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(16, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void listen(List<String> list, IObjectWrapper iObjectWrapper, zzq zzq, long j, zzah zzah) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzq);
        zzZ.writeLong(j);
        zzef.zza(zzZ, (IInterface) zzah);
        zzb(5, zzZ);
    }

    public final void merge(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzah);
        zzb(10, zzZ);
    }

    public final void onDisconnectCancel(List<String> list, zzah zzah) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) zzah);
        zzb(13, zzZ);
    }

    public final void onDisconnectMerge(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzah);
        zzb(12, zzZ);
    }

    public final void onDisconnectPut(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzah);
        zzb(11, zzZ);
    }

    public final void purgeOutstandingWrites() throws RemoteException {
        zzb(7, zzZ());
    }

    public final void put(List<String> list, IObjectWrapper iObjectWrapper, zzah zzah) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzah);
        zzb(8, zzZ);
    }

    public final void refreshAuthToken() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void refreshAuthToken2(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(17, zzZ);
    }

    public final void resume(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(15, zzZ);
    }

    public final void setup(zzc zzc, zzk zzk, IObjectWrapper iObjectWrapper, zzw zzw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzc);
        zzef.zza(zzZ, (IInterface) zzk);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzw);
        zzb(1, zzZ);
    }

    public final void shutdown() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void unlisten(List<String> list, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(6, zzZ);
    }
}
