package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.firebase.auth.PhoneAuthCredential;

public interface ka extends IInterface {
    void onFailure(Status status) throws RemoteException;

    void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) throws RemoteException;

    void zzEN() throws RemoteException;

    void zzEO() throws RemoteException;

    void zza(kt ktVar) throws RemoteException;

    void zza(kx kxVar, kv kvVar) throws RemoteException;

    void zza(ld ldVar) throws RemoteException;

    void zzb(kx kxVar) throws RemoteException;

    void zzgq(String str) throws RemoteException;

    void zzgr(String str) throws RemoteException;

    void zzgs(String str) throws RemoteException;
}
