package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper.zza;

public abstract class zzaeb extends zzee implements zzaea {
    public zzaeb() {
        attachInterface(this, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzaea zzx(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof zzaea ? (zzaea) queryLocalInterface : new zzaec(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzq(zza.zzM(parcel.readStrongBinder()));
                break;
            case 2:
                zzc(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                zzr(zza.zzM(parcel.readStrongBinder()));
                break;
            case 4:
                zzs(zza.zzM(parcel.readStrongBinder()));
                break;
            case 5:
                zzt(zza.zzM(parcel.readStrongBinder()));
                break;
            case 6:
                zzu(zza.zzM(parcel.readStrongBinder()));
                break;
            case 7:
                zza(zza.zzM(parcel.readStrongBinder()), (zzaee) zzef.zza(parcel, zzaee.CREATOR));
                break;
            case 8:
                zzv(zza.zzM(parcel.readStrongBinder()));
                break;
            case 9:
                zzd(zza.zzM(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                zzw(zza.zzM(parcel.readStrongBinder()));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
