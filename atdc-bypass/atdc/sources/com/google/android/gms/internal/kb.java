package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.firebase.auth.PhoneAuthCredential;

public abstract class kb extends zzee implements ka {
    public kb() {
        attachInterface(this, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzb((kx) zzef.zza(parcel, kx.CREATOR));
                return true;
            case 2:
                zza((kx) zzef.zza(parcel, kx.CREATOR), (kv) zzef.zza(parcel, kv.CREATOR));
                return true;
            case 3:
                zza((kt) zzef.zza(parcel, kt.CREATOR));
                return true;
            case 4:
                zza((ld) zzef.zza(parcel, ld.CREATOR));
                return true;
            case 5:
                onFailure((Status) zzef.zza(parcel, Status.CREATOR));
                return true;
            case 6:
                zzEN();
                return true;
            case 7:
                zzEO();
                return true;
            case 8:
                zzgq(parcel.readString());
                return true;
            case 9:
                zzgr(parcel.readString());
                return true;
            case 10:
                onVerificationCompleted((PhoneAuthCredential) zzef.zza(parcel, PhoneAuthCredential.CREATOR));
                return true;
            case 11:
                zzgs(parcel.readString());
                return true;
            default:
                return false;
        }
    }
}
