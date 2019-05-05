package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzuy extends zzed implements zzuw {
    zzuy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public final void onAdClicked() throws RemoteException {
        zzb(1, zzZ());
    }

    public final void onAdClosed() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(3, zzZ);
    }

    public final void onAdImpression() throws RemoteException {
        zzb(8, zzZ());
    }

    public final void onAdLeftApplication() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void onAdLoaded() throws RemoteException {
        zzb(6, zzZ());
    }

    public final void onAdOpened() throws RemoteException {
        zzb(5, zzZ());
    }

    public final void onAppEvent(String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(9, zzZ);
    }

    public final void zza(zzuz zzuz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzuz);
        zzb(7, zzZ);
    }

    public final void zzb(zzpj zzpj, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzpj);
        zzZ.writeString(str);
        zzb(10, zzZ);
    }
}
