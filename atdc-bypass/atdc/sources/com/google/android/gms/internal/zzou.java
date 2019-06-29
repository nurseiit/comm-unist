package com.google.android.gms.internal;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;

public final class zzou extends zzed implements zzos {
    zzou(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public final double getScale() throws RemoteException {
        Parcel zza = zza(3, zzZ());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    public final Uri getUri() throws RemoteException {
        Parcel zza = zza(2, zzZ());
        Uri uri = (Uri) zzef.zza(zza, Uri.CREATOR);
        zza.recycle();
        return uri;
    }

    public final IObjectWrapper zzeg() throws RemoteException {
        Parcel zza = zza(1, zzZ());
        IObjectWrapper zzM = zza.zzM(zza.readStrongBinder());
        zza.recycle();
        return zzM;
    }
}
