package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzkj extends zzed implements zzkh {
    zzkj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    public final zzju createAdLoaderBuilder(IObjectWrapper iObjectWrapper, String str, zzuq zzuq, int i) throws RemoteException {
        zzju zzju;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzuq);
        zzZ.writeInt(i);
        Parcel zza = zza(3, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzju = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzju = queryLocalInterface instanceof zzju ? (zzju) queryLocalInterface : new zzjw(readStrongBinder);
        }
        zza.recycle();
        return zzju;
    }

    public final zzwx createAdOverlay(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(8, zzZ);
        zzwx zzr = zzwy.zzr(zza.readStrongBinder());
        zza.recycle();
        return zzr;
    }

    public final zzjz createBannerAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, zzuq zzuq, int i) throws RemoteException {
        zzjz zzjz;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zziv);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzuq);
        zzZ.writeInt(i);
        Parcel zza = zza(1, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzjz = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzjz = queryLocalInterface instanceof zzjz ? (zzjz) queryLocalInterface : new zzkb(readStrongBinder);
        }
        zza.recycle();
        return zzjz;
    }

    public final zzxj createInAppPurchaseManager(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(7, zzZ);
        zzxj zzt = zzxk.zzt(zza.readStrongBinder());
        zza.recycle();
        return zzt;
    }

    public final zzjz createInterstitialAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, zzuq zzuq, int i) throws RemoteException {
        zzjz zzjz;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zziv);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzuq);
        zzZ.writeInt(i);
        Parcel zza = zza(2, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzjz = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzjz = queryLocalInterface instanceof zzjz ? (zzjz) queryLocalInterface : new zzkb(readStrongBinder);
        }
        zza.recycle();
        return zzjz;
    }

    public final zzow createNativeAdViewDelegate(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        Parcel zza = zza(5, zzZ);
        zzow zzj = zzox.zzj(zza.readStrongBinder());
        zza.recycle();
        return zzj;
    }

    public final zzacy createRewardedVideoAd(IObjectWrapper iObjectWrapper, zzuq zzuq, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzuq);
        zzZ.writeInt(i);
        Parcel zza = zza(6, zzZ);
        zzacy zzv = zzacz.zzv(zza.readStrongBinder());
        zza.recycle();
        return zzv;
    }

    public final zzjz createSearchAdManager(IObjectWrapper iObjectWrapper, zziv zziv, String str, int i) throws RemoteException {
        zzjz zzjz;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zziv);
        zzZ.writeString(str);
        zzZ.writeInt(i);
        Parcel zza = zza(10, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzjz = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzjz = queryLocalInterface instanceof zzjz ? (zzjz) queryLocalInterface : new zzkb(readStrongBinder);
        }
        zza.recycle();
        return zzjz;
    }

    public final zzkn getMobileAdsSettingsManager(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzkn zzkn;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        Parcel zza = zza(4, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzkn = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzkn = queryLocalInterface instanceof zzkn ? (zzkn) queryLocalInterface : new zzkp(readStrongBinder);
        }
        zza.recycle();
        return zzkn;
    }

    public final zzkn getMobileAdsSettingsManagerWithClientJarVersion(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzkn zzkn;
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzZ.writeInt(i);
        Parcel zza = zza(9, zzZ);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzkn = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzkn = queryLocalInterface instanceof zzkn ? (zzkn) queryLocalInterface : new zzkp(readStrongBinder);
        }
        zza.recycle();
        return zzkn;
    }
}
