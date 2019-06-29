package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;

public final class zzg implements Creator<HintRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArr = credentialPickerConfig;
        String str = strArr;
        String str2 = str;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        credentialPickerConfig = (CredentialPickerConfig) zzb.zza(parcel, readInt, CredentialPickerConfig.CREATOR);
                        break;
                    case 2:
                        z = zzb.zzc(parcel, readInt);
                        break;
                    case 3:
                        z2 = zzb.zzc(parcel, readInt);
                        break;
                    case 4:
                        strArr = zzb.zzA(parcel, readInt);
                        break;
                    case 5:
                        z3 = zzb.zzc(parcel, readInt);
                        break;
                    case 6:
                        str = zzb.zzq(parcel, readInt);
                        break;
                    case 7:
                        str2 = zzb.zzq(parcel, readInt);
                        break;
                    default:
                        zzb.zzb(parcel, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel, readInt);
        }
        zzb.zzF(parcel, zzd);
        return new HintRequest(i, credentialPickerConfig, z, z2, strArr, z3, str, str2);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new HintRequest[i];
    }
}
