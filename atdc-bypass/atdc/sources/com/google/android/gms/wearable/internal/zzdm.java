package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import java.util.List;

public final class zzdm extends zzed implements zzdk {
    zzdm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IWearableListener");
    }

    public final void onConnectedNodes(List<zzeg> list) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeTypedList(list);
        zzc(5, zzZ);
    }

    public final void zzS(DataHolder dataHolder) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) dataHolder);
        zzc(1, zzZ);
    }

    public final void zza(zzaa zzaa) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzaa);
        zzc(8, zzZ);
    }

    public final void zza(zzai zzai) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzai);
        zzc(7, zzZ);
    }

    public final void zza(zzdx zzdx) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzdx);
        zzc(2, zzZ);
    }

    public final void zza(zzeg zzeg) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzeg);
        zzc(3, zzZ);
    }

    public final void zza(zzi zzi) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzi);
        zzc(9, zzZ);
    }

    public final void zza(zzl zzl) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzl);
        zzc(6, zzZ);
    }

    public final void zzb(zzeg zzeg) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzeg);
        zzc(4, zzZ);
    }
}
