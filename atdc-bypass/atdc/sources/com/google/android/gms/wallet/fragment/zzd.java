package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

public final class zzd implements Creator<WalletFragmentInitParams> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        String str = null;
        MaskedWalletRequest maskedWalletRequest = null;
        MaskedWallet maskedWallet = maskedWalletRequest;
        int i = -1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 3:
                    maskedWalletRequest = (MaskedWalletRequest) zzb.zza(parcel, readInt, MaskedWalletRequest.CREATOR);
                    break;
                case 4:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 5:
                    maskedWallet = (MaskedWallet) zzb.zza(parcel, readInt, MaskedWallet.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new WalletFragmentInitParams(str, maskedWalletRequest, i, maskedWallet);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new WalletFragmentInitParams[i];
    }
}
