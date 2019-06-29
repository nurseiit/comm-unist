package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import java.util.ArrayList;
import java.util.List;

public final class zzph extends zzed implements zzpf {
    zzph(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    public final void destroy() throws RemoteException {
        zzb(10, zzZ());
    }

    public final String getAdvertiser() throws RemoteException {
        Parcel zza = zza(8, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final String getBody() throws RemoteException {
        Parcel zza = zza(5, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final String getCallToAction() throws RemoteException {
        Parcel zza = zza(7, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final Bundle getExtras() throws RemoteException {
        Parcel zza = zza(9, zzZ());
        Bundle bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final String getHeadline() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final List getImages() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        ArrayList zzb = zzef.zzb(zza);
        zza.recycle();
        return zzb;
    }

    public final zzks getVideoController() throws RemoteException {
        Parcel zza = zza(11, zzZ());
        zzks zzg = zzkt.zzg(zza.readStrongBinder());
        zza.recycle();
        return zzg;
    }

    public final void zzc(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(12, zzZ);
    }

    public final boolean zzd(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        Parcel zza = zza(13, zzZ);
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void zze(Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(14, zzZ);
    }

    public final IObjectWrapper zzei() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }

    public final zzos zzem() throws RemoteException {
        zzos zzos;
        Parcel zza = zza(6, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzos = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzos = queryLocalInterface instanceof zzos ? (zzos) queryLocalInterface : new zzou(readStrongBinder);
        }
        zza.recycle();
        return zzos;
    }
}
