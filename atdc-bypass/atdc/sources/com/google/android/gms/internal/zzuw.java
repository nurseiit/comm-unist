package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;

public interface zzuw extends IInterface {
    void onAdClicked() throws RemoteException;

    void onAdClosed() throws RemoteException;

    void onAdFailedToLoad(int i) throws RemoteException;

    void onAdImpression() throws RemoteException;

    void onAdLeftApplication() throws RemoteException;

    void onAdLoaded() throws RemoteException;

    void onAdOpened() throws RemoteException;

    void onAppEvent(String str, String str2) throws RemoteException;

    void zza(zzuz zzuz) throws RemoteException;

    void zzb(zzpj zzpj, String str) throws RemoteException;
}
