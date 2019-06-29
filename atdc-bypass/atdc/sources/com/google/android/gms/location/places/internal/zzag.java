package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.PlaceLikelihood;
import java.util.Arrays;

public final class zzag extends zza implements PlaceLikelihood {
    public static final Creator<zzag> CREATOR = new zzah();
    private PlaceEntity zzbkI;
    private float zzbkJ;

    zzag(PlaceEntity placeEntity, float f) {
        this.zzbkI = placeEntity;
        this.zzbkJ = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzag)) {
            return false;
        }
        zzag zzag = (zzag) obj;
        return this.zzbkI.equals(zzag.zzbkI) && this.zzbkJ == zzag.zzbkJ;
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final float getLikelihood() {
        return this.zzbkJ;
    }

    public final Place getPlace() {
        return this.zzbkI;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbkI, Float.valueOf(this.zzbkJ)});
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("place", this.zzbkI).zzg("likelihood", Float.valueOf(this.zzbkJ)).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbkI, i, false);
        zzd.zza(parcel, 2, this.zzbkJ);
        zzd.zzI(parcel, zze);
    }
}
