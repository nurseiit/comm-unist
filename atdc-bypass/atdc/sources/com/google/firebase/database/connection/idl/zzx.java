package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper.zza;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzef;
import java.util.List;

public abstract class zzx extends zzee implements zzw {
    public zzx() {
        attachInterface(this, "com.google.firebase.database.connection.idl.IPersistentConnectionDelegate");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza((List) parcel.createStringArrayList(), zza.zzM(parcel.readStrongBinder()), zzef.zza(parcel), parcel.readLong());
                break;
            case 2:
                zza((List) parcel.createStringArrayList(), (List) parcel.createTypedArrayList(zzak.CREATOR), zza.zzM(parcel.readStrongBinder()), parcel.readLong());
                break;
            case 3:
                zzGb();
                break;
            case 4:
                onDisconnect();
                break;
            case 5:
                zzaB(zzef.zza(parcel));
                break;
            case 6:
                zzN(zza.zzM(parcel.readStrongBinder()));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
