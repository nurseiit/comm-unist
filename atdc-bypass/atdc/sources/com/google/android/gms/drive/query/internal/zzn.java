package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzn<T> extends zza {
    public static final zzo CREATOR = new zzo();
    private MetadataBundle zzaRe;
    private MetadataField<T> zzaRf;

    public zzn(SearchableMetadataField<T> searchableMetadataField, T t) {
        this(MetadataBundle.zzb(searchableMetadataField, t));
    }

    zzn(MetadataBundle metadataBundle) {
        this.zzaRe = metadataBundle;
        this.zzaRf = zzi.zza(metadataBundle);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaRe, i, false);
        zzd.zzI(parcel, zze);
    }

    public final <F> F zza(zzj<F> zzj) {
        return zzj.zzd(this.zzaRf, this.zzaRe.zza(this.zzaRf));
    }
}
