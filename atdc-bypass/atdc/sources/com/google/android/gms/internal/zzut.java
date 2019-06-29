package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

public interface zzut extends IInterface {
    void destroy() throws RemoteException;

    Bundle getInterstitialAdapterInfo() throws RemoteException;

    zzks getVideoController() throws RemoteException;

    IObjectWrapper getView() throws RemoteException;

    boolean isInitialized() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void showVideo() throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzaea zzaea, List<String> list) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, zzaea zzaea, String str2) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, zzuw zzuw) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, String str2, zzuw zzuw) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, String str2, zzuw zzuw, zzon zzon, List<String> list) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zziv zziv, zzir zzir, String str, zzuw zzuw) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zziv zziv, zzir zzir, String str, String str2, zzuw zzuw) throws RemoteException;

    void zza(zzir zzir, String str, String str2) throws RemoteException;

    void zzc(zzir zzir, String str) throws RemoteException;

    zzvc zzfq() throws RemoteException;

    zzvf zzfr() throws RemoteException;

    Bundle zzfs() throws RemoteException;

    Bundle zzft() throws RemoteException;

    boolean zzfu() throws RemoteException;

    zzpj zzfv() throws RemoteException;

    void zzk(IObjectWrapper iObjectWrapper) throws RemoteException;
}
