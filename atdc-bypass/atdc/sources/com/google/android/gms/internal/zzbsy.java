package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;

public final class zzbsy extends zzed implements zzbsw {
    zzbsy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.drive.realtime.internal.IRealtimeService");
    }

    public final void zza(int i, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(30, zzZ);
    }

    public final void zza(int i, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(50, zzZ);
    }

    public final void zza(DriveId driveId, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) driveId);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(48, zzZ);
    }

    public final void zza(zzbry zzbry, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbry);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(18, zzZ);
    }

    public final void zza(zzbsa zzbsa, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbsa);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(41, zzZ);
    }

    public final void zza(zzbsa zzbsa, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbsa);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(19, zzZ);
    }

    public final void zza(zzbsc zzbsc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsc);
        zzb(2, zzZ);
    }

    public final void zza(zzbse zzbse) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbse);
        zzb(32, zzZ);
    }

    public final void zza(zzbsg zzbsg) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsg);
        zzb(31, zzZ);
    }

    public final void zza(zzbsm zzbsm) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsm);
        zzb(36, zzZ);
    }

    public final void zza(zzbso zzbso) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbso);
        zzb(34, zzZ);
    }

    public final void zza(zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(22, zzZ);
    }

    public final void zza(zzbsu zzbsu) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsu);
        zzb(40, zzZ);
    }

    public final void zza(zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(3, zzZ);
    }

    public final void zza(zzbtf zzbtf, zzbsz zzbsz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbtf);
        zzef.zza(zzZ, (IInterface) zzbsz);
        zzb(26, zzZ);
    }

    public final void zza(String str, int i, int i2, zzbsk zzbsk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, (IInterface) zzbsk);
        zzb(17, zzZ);
    }

    public final void zza(String str, int i, int i2, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(11, zzZ);
    }

    public final void zza(String str, int i, DataHolder dataHolder, zzbsk zzbsk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzef.zza(zzZ, (Parcelable) dataHolder);
        zzef.zza(zzZ, (IInterface) zzbsk);
        zzb(16, zzZ);
    }

    public final void zza(String str, int i, DataHolder dataHolder, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzef.zza(zzZ, (Parcelable) dataHolder);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(15, zzZ);
    }

    public final void zza(String str, int i, zzbsz zzbsz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzef.zza(zzZ, (IInterface) zzbsz);
        zzb(46, zzZ);
    }

    public final void zza(String str, int i, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(28, zzZ);
    }

    public final void zza(String str, int i, String str2, int i2, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeString(str2);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(37, zzZ);
    }

    public final void zza(String str, int i, String str2, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(10, zzZ);
    }

    public final void zza(String str, DataHolder dataHolder, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) dataHolder);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(6, zzZ);
    }

    public final void zza(String str, zzbsi zzbsi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsi);
        zzb(20, zzZ);
    }

    public final void zza(String str, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(7, zzZ);
    }

    public final void zza(String str, zzbss zzbss) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbss);
        zzb(27, zzZ);
    }

    public final void zza(String str, zzbsu zzbsu) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsu);
        zzb(5, zzZ);
    }

    public final void zza(String str, zzbsz zzbsz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsz);
        zzb(1, zzZ);
    }

    public final void zza(String str, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(38, zzZ);
    }

    public final void zza(String str, String str2, DataHolder dataHolder, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (Parcelable) dataHolder);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(43, zzZ);
    }

    public final void zza(String str, String str2, zzbsi zzbsi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzbsi);
        zzb(4, zzZ);
    }

    public final void zza(String str, String str2, zzbsk zzbsk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzbsk);
        zzb(21, zzZ);
    }

    public final void zza(String str, String str2, zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(12, zzZ);
    }

    public final void zza(boolean z, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(47, zzZ);
    }

    public final void zzb(zzbsc zzbsc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsc);
        zzb(33, zzZ);
    }

    public final void zzb(zzbsq zzbsq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsq);
        zzb(23, zzZ);
    }

    public final void zzb(zzbsu zzbsu) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsu);
        zzb(29, zzZ);
    }

    public final void zzb(zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(35, zzZ);
    }

    public final void zzb(String str, zzbsi zzbsi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsi);
        zzb(13, zzZ);
    }

    public final void zzb(String str, zzbsu zzbsu) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsu);
        zzb(8, zzZ);
    }

    public final void zzb(String str, zzbsz zzbsz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsz);
        zzb(9, zzZ);
    }

    public final void zzb(String str, zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(39, zzZ);
    }

    public final void zzb(String str, String str2, zzbsi zzbsi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzbsi);
        zzb(42, zzZ);
    }

    public final void zzc(zzbsc zzbsc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsc);
        zzb(45, zzZ);
    }

    public final void zzc(zzbtb zzbtb) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbtb);
        zzb(49, zzZ);
    }

    public final void zzc(String str, zzbsu zzbsu) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzbsu);
        zzb(14, zzZ);
    }

    public final zzbtn zzd(String str, String str2, String str3) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeString(str3);
        Parcel zza = zza(51, zzZ);
        zzbtn zzbtn = (zzbtn) zzef.zza(zza, zzbtn.CREATOR);
        zza.recycle();
        return zzbtn;
    }

    public final void zzd(zzbsc zzbsc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsc);
        zzb(24, zzZ);
    }

    public final void zze(zzbsc zzbsc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzbsc);
        zzb(25, zzZ);
    }

    public final void zztw() throws RemoteException {
        zzb(44, zzZ());
    }
}
