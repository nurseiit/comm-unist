package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzaan extends zzee implements zzaam {
    public zzaan() {
        attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        zzaap zzaap = null;
        IBinder readStrongBinder;
        IInterface queryLocalInterface;
        switch (i) {
            case 1:
                zzaai zzc = zzc((zzaae) zzef.zza(parcel, zzaae.CREATOR));
                parcel2.writeNoException();
                zzef.zzb(parcel2, zzc);
                return true;
            case 2:
                zzaae zzaae = (zzaae) zzef.zza(parcel, zzaae.CREATOR);
                readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    zzaap = queryLocalInterface instanceof zzaap ? (zzaap) queryLocalInterface : new zzaar(readStrongBinder);
                }
                zza(zzaae, zzaap);
                break;
            case 3:
                zzaas zzaat;
                zzaax zzaax = (zzaax) zzef.zza(parcel, zzaax.CREATOR);
                readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonResponseListener");
                    zzaat = queryLocalInterface instanceof zzaas ? (zzaas) queryLocalInterface : new zzaat(readStrongBinder);
                }
                zza(zzaax, zzaat);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
