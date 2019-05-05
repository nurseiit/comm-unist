package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;

public final class zzkb extends zzed implements zzjz {
    zzkb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    public final void destroy() throws RemoteException {
        zzb(2, zzZ());
    }

    public final String getAdUnitId() throws RemoteException {
        Parcel zza = zza(31, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(18, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final zzks getVideoController() throws RemoteException {
        zzks zzks;
        Parcel zza = zza(26, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzks = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzks = queryLocalInterface instanceof zzks ? (zzks) queryLocalInterface : new zzku(readStrongBinder);
        }
        zza.recycle();
        return zzks;
    }

    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(23, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final boolean isReady() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void pause() throws RemoteException {
        zzb(5, zzZ());
    }

    public final void resume() throws RemoteException {
        zzb(6, zzZ());
    }

    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(34, zzZ);
    }

    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(22, zzZ);
    }

    public final void setUserId(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(25, zzZ);
    }

    public final void showInterstitial() throws RemoteException {
        zzb(9, zzZ());
    }

    public final void stopLoading() throws RemoteException {
        zzb(10, zzZ());
    }

    public final void zza(zzadd zzadd) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzadd);
        zzb(24, zzZ);
    }

    public final void zza(zziv zziv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zziv);
        zzb(13, zzZ);
    }

    public final void zza(zzjl zzjl) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzjl);
        zzb(20, zzZ);
    }

    public final void zza(zzjo zzjo) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzjo);
        zzb(7, zzZ);
    }

    public final void zza(zzke zzke) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzke);
        zzb(8, zzZ);
    }

    public final void zza(zzkk zzkk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzkk);
        zzb(21, zzZ);
    }

    public final void zza(zzky zzky) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzky);
        zzb(30, zzZ);
    }

    public final void zza(zzlx zzlx) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzlx);
        zzb(29, zzZ);
    }

    public final void zza(zznh zznh) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zznh);
        zzb(19, zzZ);
    }

    public final void zza(zzxg zzxg) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzxg);
        zzb(14, zzZ);
    }

    public final void zza(zzxo zzxo, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzxo);
        zzZ.writeString(str);
        zzb(15, zzZ);
    }

    public final boolean zza(zzir zzir) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzir);
        Parcel zza = zza(4, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final String zzaI() throws RemoteException {
        Parcel zza = zza(35, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final IObjectWrapper zzal() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final zziv zzam() throws RemoteException {
        Parcel zza = zza(12, zzZ());
        zziv zziv = (zziv) zzef.zza(zza, zziv.CREATOR);
        zza.recycle();
        return zziv;
    }

    public final void zzao() throws RemoteException {
        zzb(11, zzZ());
    }

    public final zzke zzax() throws RemoteException {
        zzke zzke;
        Parcel zza = zza(32, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzke = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzke = queryLocalInterface instanceof zzke ? (zzke) queryLocalInterface : new zzkg(readStrongBinder);
        }
        zza.recycle();
        return zzke;
    }

    public final zzjo zzay() throws RemoteException {
        zzjo zzjo;
        Parcel zza = zza(33, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzjo = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzjo = queryLocalInterface instanceof zzjo ? (zzjo) queryLocalInterface : new zzjq(readStrongBinder);
        }
        zza.recycle();
        return zzjo;
    }
}
