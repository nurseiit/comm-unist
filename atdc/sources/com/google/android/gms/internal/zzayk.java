package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzz;

public final class zzayk extends zzed implements zzayj {
    zzayk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.internal.ICastDeviceController");
    }

    public final void disconnect() throws RemoteException {
        zzc(1, zzZ());
    }

    public final void requestStatus() throws RemoteException {
        zzc(6, zzZ());
    }

    public final void zza(double d, double d2, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeDouble(d);
        zzZ.writeDouble(d2);
        zzef.zza(zzZ, z);
        zzc(7, zzZ);
    }

    public final void zza(String str, String str2, zzz zzz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (Parcelable) zzz);
        zzc(14, zzZ);
    }

    public final void zza(boolean z, double d, boolean z2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzZ.writeDouble(d);
        zzef.zza(zzZ, z2);
        zzc(8, zzZ);
    }

    public final void zzb(String str, LaunchOptions launchOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) launchOptions);
        zzc(13, zzZ);
    }

    public final void zzb(String str, String str2, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeLong(j);
        zzc(9, zzZ);
    }

    public final void zzcc(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzc(5, zzZ);
    }

    public final void zzcl(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzc(11, zzZ);
    }

    public final void zzcm(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzc(12, zzZ);
    }

    public final void zzoK() throws RemoteException {
        zzc(4, zzZ());
    }
}
