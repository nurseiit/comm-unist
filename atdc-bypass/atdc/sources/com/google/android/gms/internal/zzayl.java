package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.cast.ApplicationMetadata;

public interface zzayl extends IInterface {
    void onApplicationDisconnected(int i) throws RemoteException;

    void zzZ(int i) throws RemoteException;

    void zza(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) throws RemoteException;

    void zza(String str, double d, boolean z) throws RemoteException;

    void zza(String str, long j, int i) throws RemoteException;

    void zza(String str, byte[] bArr) throws RemoteException;

    void zzae(int i) throws RemoteException;

    void zzaf(int i) throws RemoteException;

    void zzag(int i) throws RemoteException;

    void zzb(zzaxq zzaxq) throws RemoteException;

    void zzb(zzayf zzayf) throws RemoteException;

    void zzb(String str, long j) throws RemoteException;

    void zzu(String str, String str2) throws RemoteException;
}
