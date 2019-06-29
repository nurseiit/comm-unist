package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzf implements Creator<WalletFragmentOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        int i = 1;
        int i2 = 0;
        WalletFragmentStyle walletFragmentStyle = null;
        int i3 = 1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    i = zzb.zzg(parcel, readInt);
                    break;
                case 3:
                    i2 = zzb.zzg(parcel, readInt);
                    break;
                case 4:
                    walletFragmentStyle = (WalletFragmentStyle) zzb.zza(parcel, readInt, WalletFragmentStyle.CREATOR);
                    break;
                case 5:
                    i3 = zzb.zzg(parcel, readInt);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new WalletFragmentOptions(i, i2, walletFragmentStyle, i3);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new WalletFragmentOptions[i];
    }
}
