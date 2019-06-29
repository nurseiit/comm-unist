package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzkh extends IInterface {
    zzju createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzuq zzuq, int i) throws RemoteException;

    zzwx createAdOverlay(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzjz createBannerAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, zzuq zzuq, int i) throws RemoteException;

    zzxj createInAppPurchaseManager(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzjz createInterstitialAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, zzuq zzuq, int i) throws RemoteException;

    zzow createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException;

    zzacy createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzuq zzuq, int i) throws RemoteException;

    zzjz createSearchAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, int i) throws RemoteException;

    zzkn getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) throws RemoteException;

    zzkn getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) throws RemoteException;
}
