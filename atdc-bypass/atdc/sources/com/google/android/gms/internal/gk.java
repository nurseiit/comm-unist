package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.zzab;

public abstract class gk extends zzee implements gj {
    public gk() {
        attachInterface(this, "com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        Creator creator;
        switch (i) {
            case 1:
                zza(parcel.readInt(), (MaskedWallet) zzef.zza(parcel, MaskedWallet.CREATOR), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                return true;
            case 2:
                zza(parcel.readInt(), (FullWallet) zzef.zza(parcel, FullWallet.CREATOR), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                return true;
            case 3:
                zza(parcel.readInt(), zzef.zza(parcel), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                return true;
            case 4:
                zzg(parcel.readInt(), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                return true;
            case 6:
                zzb(parcel.readInt(), zzef.zza(parcel), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                return true;
            case 7:
                zzef.zza(parcel, Status.CREATOR);
                creator = fw.CREATOR;
                break;
            case 8:
            case 11:
                creator = Status.CREATOR;
                break;
            case 9:
                zza((Status) zzef.zza(parcel, Status.CREATOR), zzef.zza(parcel), (Bundle) zzef.zza(parcel, Bundle.CREATOR));
                return true;
            case 10:
                zzef.zza(parcel, Status.CREATOR);
                creator = fy.CREATOR;
                break;
            case 12:
                zzef.zza(parcel, Status.CREATOR);
                creator = zzab.CREATOR;
                break;
            default:
                return false;
        }
        zzef.zza(parcel, creator);
        zzef.zza(parcel, Bundle.CREATOR);
        return true;
    }
}
