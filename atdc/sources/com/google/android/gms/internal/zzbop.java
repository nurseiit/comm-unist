package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.zza;

public abstract class zzbop extends zzee implements zzboo {
    public zzbop() {
        attachInterface(this, "com.google.android.gms.drive.internal.IDriveServiceCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        Creator creator;
        switch (i) {
            case 1:
                zza((zzbpd) zzef.zza(parcel, zzbpd.CREATOR));
                break;
            case 2:
                zza((zzbpl) zzef.zza(parcel, zzbpl.CREATOR));
                break;
            case 3:
                zza((zzbpf) zzef.zza(parcel, zzbpf.CREATOR));
                break;
            case 4:
                zza((zzbpq) zzef.zza(parcel, zzbpq.CREATOR));
                break;
            case 5:
                zza((zzboz) zzef.zza(parcel, zzboz.CREATOR));
                break;
            case 6:
                onError((Status) zzef.zza(parcel, Status.CREATOR));
                break;
            case 7:
                onSuccess();
                break;
            case 8:
                zza((zzbpn) zzef.zza(parcel, zzbpn.CREATOR));
                break;
            case 9:
                creator = zzbpz.CREATOR;
                break;
            case 11:
                zzef.zza(parcel, zzbpp.CREATOR);
                zzbsx.zzL(parcel.readStrongBinder());
                break;
            case 12:
                creator = zzbpv.CREATOR;
                break;
            case 13:
                creator = zzbps.CREATOR;
                break;
            case 14:
                zza((zzbpb) zzef.zza(parcel, zzbpb.CREATOR));
                break;
            case 15:
                zzag(zzef.zza(parcel));
                break;
            case 16:
                creator = zzbpj.CREATOR;
                break;
            case 17:
                creator = zza.CREATOR;
                break;
            case 18:
                creator = zzbox.CREATOR;
                break;
            case 20:
                creator = zzbok.CREATOR;
                break;
            case 21:
                creator = zzbqr.CREATOR;
                break;
            case 22:
                creator = zzbpx.CREATOR;
                break;
            default:
                return false;
        }
        zzef.zza(parcel, creator);
        parcel2.writeNoException();
        return true;
    }
}
