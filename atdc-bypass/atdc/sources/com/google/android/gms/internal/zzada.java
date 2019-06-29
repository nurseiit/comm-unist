package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzada extends zzed implements zzacy {
    zzada(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public final void destroy() throws RemoteException {
        zzb(8, zzZ());
    }

    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(12, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final boolean isLoaded() throws RemoteException {
        Parcel zza = zza(5, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void pause() throws RemoteException {
        zzb(6, zzZ());
    }

    public final void resume() throws RemoteException {
        zzb(7, zzZ());
    }

    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(34, zzZ);
    }

    public final void setUserId(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(4, zzZ);
    }

    public final void show() throws RemoteException {
        zzb(2, zzZ());
    }

    public final void zza(zzadd zzadd) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzadd);
        zzb(3, zzZ);
    }

    public final void zza(zzadj zzadj) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzadj);
        zzb(1, zzZ);
    }

    public final void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(9, zzZ);
    }

    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(10, zzZ);
    }

    public final void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(11, zzZ);
    }
}
