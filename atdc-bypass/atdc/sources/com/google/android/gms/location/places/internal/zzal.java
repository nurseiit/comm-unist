package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Collections;
import java.util.List;

public final class zzal extends zza {
    public static final Creator<zzal> CREATOR = new zzao();
    private List<zzam> zzbkN;
    private List<zzan> zzbkO;

    zzal(List<zzam> list, List<zzan> list2) {
        this.zzbkN = Collections.unmodifiableList(list);
        this.zzbkO = Collections.unmodifiableList(list2);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbkN, false);
        zzd.zzc(parcel, 2, this.zzbkO, false);
        zzd.zzI(parcel, i);
    }
}
