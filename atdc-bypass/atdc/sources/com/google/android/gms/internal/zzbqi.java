package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.query.Query;

public final class zzbqi extends zza {
    public static final Creator<zzbqi> CREATOR = new zzbqj();
    private Query zzaPs;

    public zzbqi(Query query) {
        this.zzaPs = query;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaPs, i, false);
        zzd.zzI(parcel, zze);
    }
}
