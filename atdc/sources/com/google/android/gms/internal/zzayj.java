package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzz;

public interface zzayj extends IInterface {
    void disconnect() throws RemoteException;

    void requestStatus() throws RemoteException;

    void zza(double d, double d2, boolean z) throws RemoteException;

    void zza(String str, String str2, zzz zzz) throws RemoteException;

    void zza(boolean z, double d, boolean z2) throws RemoteException;

    void zzb(String str, LaunchOptions launchOptions) throws RemoteException;

    void zzb(String str, String str2, long j) throws RemoteException;

    void zzcc(String str) throws RemoteException;

    void zzcl(String str) throws RemoteException;

    void zzcm(String str) throws RemoteException;

    void zzoK() throws RemoteException;
}
