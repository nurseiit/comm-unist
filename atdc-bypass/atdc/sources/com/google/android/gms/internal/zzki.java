package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper.zza;

public abstract class zzki extends zzee implements zzkh {
    public zzki() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    public static zzkh asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
        return queryLocalInterface instanceof zzkh ? (zzkh) queryLocalInterface : new zzkj(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        IInterface createBannerAdManager;
        switch (i) {
            case 1:
                createBannerAdManager = createBannerAdManager(zza.zzM(parcel.readStrongBinder()), (zziv) zzef.zza(parcel, zziv.CREATOR), parcel.readString(), zzur.zzq(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 2:
                createBannerAdManager = createInterstitialAdManager(zza.zzM(parcel.readStrongBinder()), (zziv) zzef.zza(parcel, zziv.CREATOR), parcel.readString(), zzur.zzq(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                createBannerAdManager = createAdLoaderBuilder(zza.zzM(parcel.readStrongBinder()), parcel.readString(), zzur.zzq(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 4:
                createBannerAdManager = getMobileAdsSettingsManager(zza.zzM(parcel.readStrongBinder()));
                break;
            case 5:
                createBannerAdManager = createNativeAdViewDelegate(zza.zzM(parcel.readStrongBinder()), zza.zzM(parcel.readStrongBinder()));
                break;
            case 6:
                createBannerAdManager = createRewardedVideoAd(zza.zzM(parcel.readStrongBinder()), zzur.zzq(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 7:
                createBannerAdManager = createInAppPurchaseManager(zza.zzM(parcel.readStrongBinder()));
                break;
            case 8:
                createBannerAdManager = createAdOverlay(zza.zzM(parcel.readStrongBinder()));
                break;
            case 9:
                createBannerAdManager = getMobileAdsSettingsManagerWithClientJarVersion(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                createBannerAdManager = createSearchAdManager(zza.zzM(parcel.readStrongBinder()), (zziv) zzef.zza(parcel, zziv.CREATOR), parcel.readString(), parcel.readInt());
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        zzef.zza(parcel2, createBannerAdManager);
        return true;
    }
}
