package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public interface zzavj extends IInterface {

    public static abstract class zza extends zzee implements zzavj {
        public static zzavj zzF(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            return queryLocalInterface instanceof zzavj ? (zzavj) queryLocalInterface : new zzavk(iBinder);
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (zza(i, parcel, parcel2, i2)) {
                return true;
            }
            switch (i) {
                case 1:
                    Bitmap zzn = zzn((Uri) zzef.zza(parcel, Uri.CREATOR));
                    parcel2.writeNoException();
                    zzef.zzb(parcel2, zzn);
                    return true;
                case 2:
                    zzB(com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }

    void zzB(IObjectWrapper iObjectWrapper) throws RemoteException;

    Bitmap zzn(Uri uri) throws RemoteException;
}
