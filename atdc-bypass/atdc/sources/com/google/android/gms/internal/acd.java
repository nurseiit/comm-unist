package com.google.android.gms.internal;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class acd extends zzed implements acc {
    acd(IBinder iBinder) {
        super(iBinder, "com.google.firebase.storage.network.INetworkRequestFactory");
    }

    public final String zzLm() throws RemoteException {
        Parcel zza = zza(10, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final aca zza(Uri uri, IObjectWrapper iObjectWrapper) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(1, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final aca zza(Uri uri, IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeLong(j);
        Parcel zza = zza(3, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final aca zza(Uri uri, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        Parcel zza = zza(9, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final aca zza(Uri uri, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        zzZ.writeString(str);
        Parcel zza = zza(8, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final aca zza(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeString(str);
        Parcel zza = zza(6, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final aca zza(Uri uri, IObjectWrapper iObjectWrapper, String str, IObjectWrapper iObjectWrapper2, long j, int i, boolean z) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        zzZ.writeLong(j);
        zzZ.writeInt(i);
        zzef.zza(zzZ, z);
        Parcel zza = zza(5, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final aca zzb(Uri uri, IObjectWrapper iObjectWrapper) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(2, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final aca zzb(Uri uri, IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        aca aca;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeString(str);
        Parcel zza = zza(7, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            aca = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.firebase.storage.network.INetworkRequest");
            aca = queryLocalInterface instanceof aca ? (aca) queryLocalInterface : new acb(readStrongBinder);
        }
        zza.recycle();
        return aca;
    }

    public final String zzv(Uri uri) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        Parcel zza = zza(11, zzZ);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
