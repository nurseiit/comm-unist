package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.fence.FenceUpdateRequest;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;

public final class zzbjj extends zza implements FenceUpdateRequest {
    public static final Creator<zzbjj> CREATOR = new zzbjk();
    public final ArrayList<zzbjt> zzaLj;

    @Deprecated
    public zzbjj() {
        this(new ArrayList());
    }

    public zzbjj(ArrayList<zzbjt> arrayList) {
        this.zzaLj = arrayList;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaLj, false);
        zzd.zzI(parcel, i);
    }
}
