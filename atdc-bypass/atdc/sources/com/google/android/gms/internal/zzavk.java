package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzavk extends zzed implements zzavj {
    zzavk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
    }

    public final void zzB(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) iObjectWrapper);
        zzb(2, zzZ);
    }

    public final Bitmap zzn(Uri uri) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) uri);
        Parcel zza = zza(1, zzZ);
        Bitmap bitmap = (Bitmap) zzef.zza(zza, Bitmap.CREATOR);
        zza.recycle();
        return bitmap;
    }
}
