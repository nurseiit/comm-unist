package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import java.util.List;

public final class zzuv extends zzed implements zzut {
    zzuv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    public final void destroy() throws RemoteException {
        zzb(5, zzZ());
    }

    public final Bundle getInterstitialAdapterInfo() throws RemoteException {
        Parcel zza = zza(18, zzZ());
        Bundle bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final zzks getVideoController() throws RemoteException {
        Parcel zza = zza(26, zzZ());
        zzks zzg = zzkt.zzg(zza.readStrongBinder());
        zza.recycle();
        return zzg;
    }

    public final IObjectWrapper getView() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final boolean isInitialized() throws RemoteException {
        Parcel zza = zza(13, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void pause() throws RemoteException {
        zzb(8, zzZ());
    }

    public final void resume() throws RemoteException {
        zzb(9, zzZ());
    }

    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, z);
        zzb(25, zzZ);
    }

    public final void showInterstitial() throws RemoteException {
        zzb(4, zzZ());
    }

    public final void showVideo() throws RemoteException {
        zzb(12, zzZ());
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzaea zzaea, List<String> list) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzaea);
        zzZ.writeStringList(list);
        zzb(23, zzZ);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, zzaea zzaea, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzaea);
        zzZ.writeString(str2);
        zzb(10, zzZ);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, zzuw zzuw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzuw);
        zzb(3, zzZ);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, String str2, zzuw zzuw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzuw);
        zzb(7, zzZ);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzir zzir, String str, String str2, zzuw zzuw, zzon zzon, List<String> list) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzuw);
        zzef.zza(zzZ, (Parcelable) zzon);
        zzZ.writeStringList(list);
        zzb(14, zzZ);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zziv zziv, zzir zzir, String str, zzuw zzuw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zziv);
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzuw);
        zzb(1, zzZ);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zziv zziv, zzir zzir, String str, String str2, zzuw zzuw) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (Parcelable) zziv);
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (IInterface) zzuw);
        zzb(6, zzZ);
    }

    public final void zza(zzir zzir, String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(20, zzZ);
    }

    public final void zzc(zzir zzir, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzir);
        zzZ.writeString(str);
        zzb(11, zzZ);
    }

    public final zzvc zzfq() throws RemoteException {
        zzvc zzvc;
        Parcel zza = zza(15, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzvc = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzvc = queryLocalInterface instanceof zzvc ? (zzvc) queryLocalInterface : new zzve(readStrongBinder);
        }
        zza.recycle();
        return zzvc;
    }

    public final zzvf zzfr() throws RemoteException {
        zzvf zzvf;
        Parcel zza = zza(16, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzvf = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzvf = queryLocalInterface instanceof zzvf ? (zzvf) queryLocalInterface : new zzvh(readStrongBinder);
        }
        zza.recycle();
        return zzvf;
    }

    public final Bundle zzfs() throws RemoteException {
        Parcel zza = zza(17, zzZ());
        Bundle bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final Bundle zzft() throws RemoteException {
        Parcel zza = zza(19, zzZ());
        Bundle bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final boolean zzfu() throws RemoteException {
        Parcel zza = zza(22, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final zzpj zzfv() throws RemoteException {
        Parcel zza = zza(24, zzZ());
        zzpj zzk = zzpk.zzk(zza.readStrongBinder());
        zza.recycle();
        return zzk;
    }

    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(21, zzZ);
    }
}
