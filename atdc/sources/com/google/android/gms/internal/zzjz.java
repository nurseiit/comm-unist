package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzjz extends IInterface {
    void destroy() throws RemoteException;

    String getAdUnitId() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    zzks getVideoController() throws RemoteException;

    boolean isLoading() throws RemoteException;

    boolean isReady() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void setManualImpressionsEnabled(boolean z) throws RemoteException;

    void setUserId(String str) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void stopLoading() throws RemoteException;

    void zza(zzadd zzadd) throws RemoteException;

    void zza(zziv zziv) throws RemoteException;

    void zza(zzjl zzjl) throws RemoteException;

    void zza(zzjo zzjo) throws RemoteException;

    void zza(zzke zzke) throws RemoteException;

    void zza(zzkk zzkk) throws RemoteException;

    void zza(zzky zzky) throws RemoteException;

    void zza(zzlx zzlx) throws RemoteException;

    void zza(zznh zznh) throws RemoteException;

    void zza(zzxg zzxg) throws RemoteException;

    void zza(zzxo zzxo, String str) throws RemoteException;

    boolean zza(zzir zzir) throws RemoteException;

    String zzaI() throws RemoteException;

    IObjectWrapper zzal() throws RemoteException;

    zziv zzam() throws RemoteException;

    void zzao() throws RemoteException;

    zzke zzax() throws RemoteException;

    zzjo zzay() throws RemoteException;
}
