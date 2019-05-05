package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.UserProfileChangeRequest;

public final class kd extends zzed implements kc {
    kd(IBinder iBinder) {
        super(iBinder, "com.google.firebase.auth.api.internal.IFirebaseAuthService");
    }

    public final void zza(ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(16, zzZ);
    }

    public final void zza(lf lfVar, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) lfVar);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(22, zzZ);
    }

    public final void zza(lj ljVar, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) ljVar);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(3, zzZ);
    }

    public final void zza(PhoneAuthCredential phoneAuthCredential, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) phoneAuthCredential);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(23, zzZ);
    }

    public final void zza(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(1, zzZ);
    }

    public final void zza(String str, lj ljVar, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) ljVar);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(12, zzZ);
    }

    public final void zza(String str, PhoneAuthCredential phoneAuthCredential, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) phoneAuthCredential);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(24, zzZ);
    }

    public final void zza(String str, UserProfileChangeRequest userProfileChangeRequest, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) userProfileChangeRequest);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(4, zzZ);
    }

    public final void zza(String str, String str2, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(5, zzZ);
    }

    public final void zza(String str, String str2, String str3, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzZ.writeString(str3);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(11, zzZ);
    }

    public final void zzb(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(2, zzZ);
    }

    public final void zzb(String str, String str2, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(6, zzZ);
    }

    public final void zzc(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(9, zzZ);
    }

    public final void zzc(String str, String str2, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(7, zzZ);
    }

    public final void zzd(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(10, zzZ);
    }

    public final void zzd(String str, String str2, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(8, zzZ);
    }

    public final void zze(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(13, zzZ);
    }

    public final void zze(String str, String str2, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(14, zzZ);
    }

    public final void zzf(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(15, zzZ);
    }

    public final void zzf(String str, String str2, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(21, zzZ);
    }

    public final void zzg(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(17, zzZ);
    }

    public final void zzh(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(18, zzZ);
    }

    public final void zzi(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(19, zzZ);
    }

    public final void zzj(String str, ka kaVar) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) kaVar);
        zzb(20, zzZ);
    }
}
