package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

public final class zw extends zzed implements zv {
    zw(IBinder iBinder) {
        super(iBinder, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
    }

    public final void zza(zt ztVar, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) ztVar);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(2, zzZ);
    }

    public final void zza(zt ztVar, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) ztVar);
        zzZ.writeString(str);
        zzb(1, zzZ);
    }
}
