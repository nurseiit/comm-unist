package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzcrz extends zzed implements zzcry {
    zzcrz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.safetynet.internal.ISafetyNetService");
    }

    public final void zzAj() throws RemoteException {
        zzb(13, zzZ());
    }

    public final void zza(zzcrw zzcrw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcrw);
        zzb(12, zzZ);
    }

    public final void zza(zzcrw zzcrw, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcrw);
        zzZ.writeString(str);
        zzb(6, zzZ);
    }

    public final void zza(zzcrw zzcrw, String str, int[] iArr, int i, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcrw);
        zzZ.writeString(str);
        zzZ.writeIntArray(iArr);
        zzZ.writeInt(i);
        zzZ.writeString(str2);
        zzb(3, zzZ);
    }

    public final void zza(zzcrw zzcrw, byte[] bArr, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcrw);
        zzZ.writeByteArray(bArr);
        zzZ.writeString(str);
        zzb(7, zzZ);
    }

    public final void zzb(zzcrw zzcrw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcrw);
        zzb(14, zzZ);
    }

    public final void zzc(zzcrw zzcrw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcrw);
        zzb(4, zzZ);
    }

    public final void zzd(zzcrw zzcrw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzcrw);
        zzb(5, zzZ);
    }
}
