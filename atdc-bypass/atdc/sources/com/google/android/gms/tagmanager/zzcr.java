package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;

public abstract class zzcr extends zzee implements zzcq {
    public zzcr() {
        attachInterface(this, "com.google.android.gms.tagmanager.ITagManagerApi");
    }

    public static zzcq asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ITagManagerApi");
        return queryLocalInterface instanceof zzcq ? (zzcq) queryLocalInterface : new zzcs(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        zzce zzce = null;
        switch (i) {
            case 1:
                zzcn zzcn;
                IObjectWrapper zzM = zza.zzM(parcel.readStrongBinder());
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcn = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
                    zzcn = queryLocalInterface instanceof zzcn ? (zzcn) queryLocalInterface : new zzcp(readStrongBinder);
                }
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                    zzce = queryLocalInterface2 instanceof zzce ? (zzce) queryLocalInterface2 : new zzcg(readStrongBinder2);
                }
                initialize(zzM, zzcn, zzce);
                break;
            case 2:
                preview((Intent) zzef.zza(parcel, Intent.CREATOR), zza.zzM(parcel.readStrongBinder()));
                break;
            case 3:
                zzcn zzcn2;
                Intent intent = (Intent) zzef.zza(parcel, Intent.CREATOR);
                IObjectWrapper zzM2 = zza.zzM(parcel.readStrongBinder());
                IObjectWrapper zzM3 = zza.zzM(parcel.readStrongBinder());
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzcn2 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.tagmanager.IMeasurementProxy");
                    zzcn2 = queryLocalInterface3 instanceof zzcn ? (zzcn) queryLocalInterface3 : new zzcp(readStrongBinder3);
                }
                readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder3.queryLocalInterface("com.google.android.gms.tagmanager.ICustomEvaluatorProxy");
                    zzce = queryLocalInterface4 instanceof zzce ? (zzce) queryLocalInterface4 : new zzcg(readStrongBinder3);
                }
                previewIntent(intent, zzM2, zzM3, zzcn2, zzce);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
