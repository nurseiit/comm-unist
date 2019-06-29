package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.PutDataRequest;

public interface zzdn extends IInterface {
    void zza(zzdi zzdi) throws RemoteException;

    void zza(zzdi zzdi, int i) throws RemoteException;

    void zza(zzdi zzdi, Uri uri) throws RemoteException;

    void zza(zzdi zzdi, Uri uri, int i) throws RemoteException;

    void zza(zzdi zzdi, Asset asset) throws RemoteException;

    void zza(zzdi zzdi, PutDataRequest putDataRequest) throws RemoteException;

    void zza(zzdi zzdi, zzd zzd) throws RemoteException;

    void zza(zzdi zzdi, zzdg zzdg, String str) throws RemoteException;

    void zza(zzdi zzdi, zzeo zzeo) throws RemoteException;

    void zza(zzdi zzdi, String str) throws RemoteException;

    void zza(zzdi zzdi, String str, int i) throws RemoteException;

    void zza(zzdi zzdi, String str, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException;

    void zza(zzdi zzdi, String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) throws RemoteException;

    void zza(zzdi zzdi, String str, String str2) throws RemoteException;

    void zza(zzdi zzdi, String str, String str2, byte[] bArr) throws RemoteException;

    void zzb(zzdi zzdi) throws RemoteException;

    void zzb(zzdi zzdi, Uri uri, int i) throws RemoteException;

    void zzb(zzdi zzdi, zzdg zzdg, String str) throws RemoteException;

    void zzb(zzdi zzdi, String str) throws RemoteException;

    void zzb(zzdi zzdi, String str, int i) throws RemoteException;

    void zzc(zzdi zzdi) throws RemoteException;

    void zzc(zzdi zzdi, String str) throws RemoteException;
}
