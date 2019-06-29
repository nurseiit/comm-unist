package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzd extends zza {
    public static final Creator<zzd> CREATOR = new zze();
    private MetadataBundle zzaRe;
    private final MetadataField<?> zzaRf;

    public zzd(SearchableMetadataField<?> searchableMetadataField) {
        this(MetadataBundle.zzb(searchableMetadataField, null));
    }

    zzd(MetadataBundle metadataBundle) {
        this.zzaRe = metadataBundle;
        this.zzaRf = zzi.zza(metadataBundle);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = com.google.android.gms.common.internal.safeparcel.zzd.zze(parcel);
        com.google.android.gms.common.internal.safeparcel.zzd.zza(parcel, 1, this.zzaRe, i, false);
        com.google.android.gms.common.internal.safeparcel.zzd.zzI(parcel, zze);
    }

    public final <T> T zza(zzj<T> zzj) {
        return zzj.zzd(this.zzaRf);
    }
}
