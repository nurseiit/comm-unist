package com.google.android.gms.tagmanager;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzcvg;
import com.google.android.gms.internal.zzcvh;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;

public final class zzcv extends zzed implements zzct {
    zzcv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.tagmanager.ITagManagerServiceProvider");
    }

    public final zzcvg getService(IObjectWrapper iObjectWrapper, zzcn zzcn, zzce zzce) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzef.zza(zzZ, (IInterface) zzcn);
        zzef.zza(zzZ, (IInterface) zzce);
        Parcel zza = zza(1, zzZ);
        zzcvg zzak = zzcvh.zzak(zza.readStrongBinder());
        zza.recycle();
        return zzak;
    }
}
