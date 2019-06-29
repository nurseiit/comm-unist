package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzt extends zzed implements zzs {
    zzt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.nearby.messages.internal.INearbyMessagesService");
    }

    public final void zza(SubscribeRequest subscribeRequest) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) subscribeRequest);
        zzc(3, zzZ);
    }

    public final void zza(zzax zzax) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzax);
        zzc(1, zzZ);
    }

    public final void zza(zzaz zzaz) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaz);
        zzc(8, zzZ);
    }

    public final void zza(zzbc zzbc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbc);
        zzc(2, zzZ);
    }

    public final void zza(zzbe zzbe) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzbe);
        zzc(4, zzZ);
    }

    public final void zza(zzh zzh) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzh);
        zzc(7, zzZ);
    }

    public final void zza(zzj zzj) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzj);
        zzc(9, zzZ);
    }
}
