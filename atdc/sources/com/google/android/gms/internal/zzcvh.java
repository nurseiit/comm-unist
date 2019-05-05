package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzcvh extends zzee implements zzcvg {
    public zzcvh() {
        attachInterface(this, "com.google.android.gms.tagmanager.internal.ITagManagerService");
    }

    public static zzcvg zzak(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerService");
        return queryLocalInterface instanceof zzcvg ? (zzcvg) queryLocalInterface : new zzcvi(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzn(parcel.readString(), parcel.readString(), parcel.readString());
                break;
            case 2:
                zzcvd zzcvd;
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcvd = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback");
                    zzcvd = queryLocalInterface instanceof zzcvd ? (zzcvd) queryLocalInterface : new zzcvf(readStrongBinder);
                }
                zza(readString, readString2, readString3, zzcvd);
                break;
            case 3:
                zzCr();
                break;
            default:
                switch (i) {
                    case 101:
                        zza(parcel.readString(), (Bundle) zzef.zza(parcel, Bundle.CREATOR), parcel.readString(), parcel.readLong(), zzef.zza(parcel));
                        break;
                    case 102:
                        dispatch();
                        break;
                    default:
                        return false;
                }
        }
        parcel2.writeNoException();
        return true;
    }
}
