package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzbpq extends zza {
    public static final Creator<zzbpq> CREATOR = new zzbpr();
    final MetadataBundle zzaND;

    public zzbpq(MetadataBundle metadataBundle) {
        this.zzaND = metadataBundle;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaND, i, false);
        zzd.zzI(parcel, zze);
    }
}
