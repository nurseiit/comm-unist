package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public final class zza implements Creator<Credential> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        Uri uri = str2;
        List list = uri;
        String str3 = list;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 != 1000) {
                switch (i2) {
                    case 1:
                        str = zzb.zzq(parcel2, readInt);
                        break;
                    case 2:
                        str2 = zzb.zzq(parcel2, readInt);
                        break;
                    case 3:
                        uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                        break;
                    case 4:
                        list = zzb.zzc(parcel2, readInt, IdToken.CREATOR);
                        break;
                    case 5:
                        str3 = zzb.zzq(parcel2, readInt);
                        break;
                    case 6:
                        str4 = zzb.zzq(parcel2, readInt);
                        break;
                    case 7:
                        str5 = zzb.zzq(parcel2, readInt);
                        break;
                    case 8:
                        str6 = zzb.zzq(parcel2, readInt);
                        break;
                    case 9:
                        str7 = zzb.zzq(parcel2, readInt);
                        break;
                    case 10:
                        str8 = zzb.zzq(parcel2, readInt);
                        break;
                    default:
                        zzb.zzb(parcel2, readInt);
                        break;
                }
            }
            i = zzb.zzg(parcel2, readInt);
        }
        zzb.zzF(parcel2, zzd);
        return new Credential(i, str, str2, uri, list, str3, str4, str5, str6, str7, str8);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Credential[i];
    }
}
