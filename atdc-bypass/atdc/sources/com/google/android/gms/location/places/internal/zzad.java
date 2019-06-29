package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

public final class zzad implements Creator<PlaceEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = zzb.zzd(parcel);
        String str = null;
        List list = str;
        List list2 = list;
        Bundle bundle = list2;
        String str2 = bundle;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        List list3 = str5;
        LatLng latLng = list3;
        LatLngBounds latLngBounds = latLng;
        String str6 = latLngBounds;
        Uri uri = str6;
        zzaj zzaj = uri;
        zzal zzal = zzaj;
        zzae zzae = zzal;
        float f = 0.0f;
        boolean z = false;
        float f2 = 0.0f;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = zzb.zzq(parcel2, readInt);
                    break;
                case 2:
                    bundle = zzb.zzs(parcel2, readInt);
                    break;
                case 3:
                    zzaj = (zzaj) zzb.zza(parcel2, readInt, zzaj.CREATOR);
                    break;
                case 4:
                    latLng = (LatLng) zzb.zza(parcel2, readInt, LatLng.CREATOR);
                    break;
                case 5:
                    f = zzb.zzl(parcel2, readInt);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) zzb.zza(parcel2, readInt, LatLngBounds.CREATOR);
                    break;
                case 7:
                    str6 = zzb.zzq(parcel2, readInt);
                    break;
                case 8:
                    uri = (Uri) zzb.zza(parcel2, readInt, Uri.CREATOR);
                    break;
                case 9:
                    z = zzb.zzc(parcel2, readInt);
                    break;
                case 10:
                    f2 = zzb.zzl(parcel2, readInt);
                    break;
                case 11:
                    i = zzb.zzg(parcel2, readInt);
                    break;
                case 13:
                    list2 = zzb.zzB(parcel2, readInt);
                    break;
                case 14:
                    str3 = zzb.zzq(parcel2, readInt);
                    break;
                case 15:
                    str4 = zzb.zzq(parcel2, readInt);
                    break;
                case 16:
                    str5 = zzb.zzq(parcel2, readInt);
                    break;
                case 17:
                    list3 = zzb.zzC(parcel2, readInt);
                    break;
                case 19:
                    str2 = zzb.zzq(parcel2, readInt);
                    break;
                case 20:
                    list = zzb.zzB(parcel2, readInt);
                    break;
                case 21:
                    zzal = (zzal) zzb.zza(parcel2, readInt, zzal.CREATOR);
                    break;
                case 22:
                    zzae = (zzae) zzb.zza(parcel2, readInt, zzae.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        zzb.zzF(parcel2, zzd);
        return new PlaceEntity(str, list, list2, bundle, str2, str3, str4, str5, list3, latLng, f, latLngBounds, str6, uri, z, f2, i, zzaj, zzal, zzae);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new PlaceEntity[i];
    }
}
