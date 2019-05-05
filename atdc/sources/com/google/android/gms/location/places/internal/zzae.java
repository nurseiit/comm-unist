package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Collections;
import java.util.List;

public final class zzae extends zza {
    public static final Creator<zzae> CREATOR = new zzaf();
    private final List<Integer> zzbjj;
    private final String zzbjk;
    private final Uri zzbjl;
    private final float zzbkx;
    private final int zzbky;

    zzae(List<Integer> list, String str, Uri uri, float f, int i) {
        this.zzbjj = Collections.unmodifiableList(list);
        this.zzbjk = str;
        this.zzbjl = uri;
        this.zzbkx = f;
        this.zzbky = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbjj, false);
        zzd.zza(parcel, 2, this.zzbjk, false);
        zzd.zza(parcel, 3, this.zzbjl, i, false);
        zzd.zza(parcel, 4, this.zzbkx);
        zzd.zzc(parcel, 5, this.zzbky);
        zzd.zzI(parcel, zze);
    }
}
