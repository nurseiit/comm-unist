package com.google.firebase.database.connection.idl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import java.util.List;

public final class zzy extends zzed implements zzw {
    zzy(IBinder iBinder) {
        super(iBinder, "com.google.firebase.database.connection.idl.IPersistentConnectionDelegate");
    }

    public final void onDisconnect() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void zzGb() throws RemoteException {
        zzb(3, zzZ());
    }

    public final void zzN(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(6, zzZ);
    }

    public final void zza(List<String> list, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, z);
        zzZ.writeLong(j);
        zzb(1, zzZ);
    }

    public final void zza(List<String> list, List<zzak> list2, IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStringList(list);
        zzZ.writeTypedList(list2);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeLong(j);
        zzb(2, zzZ);
    }

    public final void zzaB(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(5, zzZ);
    }
}
