package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzxp extends zzee implements zzxo {
    public static zzxo zzu(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        return queryLocalInterface instanceof zzxo ? (zzxo) queryLocalInterface : new zzxq(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                boolean zzas = zzas(parcel.readString());
                parcel2.writeNoException();
                zzef.zza(parcel2, zzas);
                return true;
            case 2:
                zzxm zzxm;
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzxm = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult");
                    zzxm = queryLocalInterface instanceof zzxm ? (zzxm) queryLocalInterface : new zzxn(readStrongBinder);
                }
                zza(zzxm);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
