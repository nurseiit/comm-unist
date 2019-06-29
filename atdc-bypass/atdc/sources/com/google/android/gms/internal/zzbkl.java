package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;

public final class zzbkl extends zza {
    public static final Creator<zzbkl> CREATOR = new zzbkm();
    private ArrayList<zzbii> zzaLO;

    zzbkl(ArrayList<zzbii> arrayList) {
        this.zzaLO = arrayList;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 3, this.zzaLO, false);
        zzd.zzI(parcel, i);
    }
}
