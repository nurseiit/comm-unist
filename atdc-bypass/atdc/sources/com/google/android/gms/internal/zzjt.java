package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zzjt extends zzed implements zzjr {
    zzjt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final boolean isLoading() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final String zzaI() throws RemoteException {
        Parcel zza = zza(4, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final void zzc(zzir zzir) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzir);
        zzb(1, zzZ);
    }
}
