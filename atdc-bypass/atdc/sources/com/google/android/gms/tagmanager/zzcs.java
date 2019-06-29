package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzcs extends zzed implements zzcq {
    zzcs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.ITagManagerApi");
    }

    public final void initialize(IObjectWrapper iObjectWrapper, zzcn zzcn, zzce zzce) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzcn);
        zzef.zza(zzZ, (IInterface) zzce);
        zzb(1, zzZ);
    }

    public final void preview(Intent intent, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) intent);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(2, zzZ);
    }

    public final void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzcn zzcn, zzce zzce) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) intent);
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) iObjectWrapper2);
        zzef.zza(zzZ, (IInterface) zzcn);
        zzef.zza(zzZ, (IInterface) zzce);
        zzb(3, zzZ);
    }
}
