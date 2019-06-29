package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.location.places.PlaceLikelihood;
import com.google.android.gms.location.places.internal.zzag;
import java.util.ArrayList;
import java.util.List;

public final class zzatb extends zza {
    public static final Creator<zzatb> CREATOR = new zzatd();
    private final ArrayList<zzag> zzanX;

    zzatb(ArrayList<zzag> arrayList) {
        this.zzanX = arrayList;
    }

    public final List<PlaceLikelihood> getPlaceLikelihoods() {
        return this.zzanX;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzanX, false);
        zzd.zzI(parcel, i);
    }
}
