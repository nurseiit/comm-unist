package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

public final class zzjw extends zzed implements zzju {
    zzjw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    public final void zza(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) publisherAdViewOptions);
        zzb(9, zzZ);
    }

    public final void zza(zzon zzon) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzon);
        zzb(6, zzZ);
    }

    public final void zza(zzpn zzpn) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzpn);
        zzb(3, zzZ);
    }

    public final void zza(zzpq zzpq) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzpq);
        zzb(4, zzZ);
    }

    public final void zza(zzpz zzpz, zziv zziv) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzpz);
        zzef.zza(zzZ, (Parcelable) zziv);
        zzb(8, zzZ);
    }

    public final void zza(String str, zzpw zzpw, zzpt zzpt) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzpw);
        zzef.zza(zzZ, (IInterface) zzpt);
        zzb(5, zzZ);
    }

    public final zzjr zzaZ() throws RemoteException {
        zzjr zzjr;
        Parcel zza = zza(1, zzZ());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzjr = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzjr = queryLocalInterface instanceof zzjr ? (zzjr) queryLocalInterface : new zzjt(readStrongBinder);
        }
        zza.recycle();
        return zzjr;
    }

    public final void zzb(zzjo zzjo) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzjo);
        zzb(2, zzZ);
    }

    public final void zzb(zzkk zzkk) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzkk);
        zzb(7, zzZ);
    }
}
