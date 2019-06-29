package com.google.android.gms.cast.framework;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public interface zzs extends IInterface {

    public static abstract class zza extends zzee implements zzs {
        public static zzs zzC(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.IReconnectionService");
            return queryLocalInterface instanceof zzs ? (zzs) queryLocalInterface : new zzt(iBinder);
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (zza(i, parcel, parcel2, i2)) {
                return true;
            }
            switch (i) {
                case 1:
                    onCreate();
                    break;
                case 2:
                    i = onStartCommand((Intent) zzef.zza(parcel, Intent.CREATOR), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(i);
                    return true;
                case 3:
                    IBinder onBind = onBind((Intent) zzef.zza(parcel, Intent.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(onBind);
                    return true;
                case 4:
                    onDestroy();
                    break;
                case 5:
                    IInterface zznv = zznv();
                    parcel2.writeNoException();
                    zzef.zza(parcel2, zznv);
                    return true;
                default:
                    return false;
            }
            parcel2.writeNoException();
            return true;
        }
    }

    IBinder onBind(Intent intent) throws RemoteException;

    void onCreate() throws RemoteException;

    void onDestroy() throws RemoteException;

    int onStartCommand(Intent intent, int i, int i2) throws RemoteException;

    IObjectWrapper zznv() throws RemoteException;
}
