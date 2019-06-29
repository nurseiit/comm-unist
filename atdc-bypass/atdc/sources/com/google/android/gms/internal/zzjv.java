package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

public abstract class zzjv extends zzee implements zzju {
    public zzjv() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        zzjo zzjo = null;
        IBinder readStrongBinder;
        IInterface queryLocalInterface;
        switch (i) {
            case 1:
                IInterface zzaZ = zzaZ();
                parcel2.writeNoException();
                zzef.zza(parcel2, zzaZ);
                return true;
            case 2:
                readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzjo = queryLocalInterface instanceof zzjo ? (zzjo) queryLocalInterface : new zzjq(readStrongBinder);
                }
                zzb(zzjo);
                break;
            case 3:
                zza(zzpo.zzl(parcel.readStrongBinder()));
                break;
            case 4:
                zza(zzpr.zzm(parcel.readStrongBinder()));
                break;
            case 5:
                zza(parcel.readString(), zzpx.zzo(parcel.readStrongBinder()), zzpu.zzn(parcel.readStrongBinder()));
                break;
            case 6:
                zza((zzon) zzef.zza(parcel, zzon.CREATOR));
                break;
            case 7:
                zzkk zzkm;
                readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzkm = queryLocalInterface instanceof zzkk ? (zzkk) queryLocalInterface : new zzkm(readStrongBinder);
                }
                zzb(zzkm);
                break;
            case 8:
                zza(zzqa.zzp(parcel.readStrongBinder()), (zziv) zzef.zza(parcel, zziv.CREATOR));
                break;
            case 9:
                zza((PublisherAdViewOptions) zzef.zza(parcel, PublisherAdViewOptions.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
