package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzb<T> extends zza {
    public static final zzc CREATOR = new zzc();
    private zzx zzaRd;
    private MetadataBundle zzaRe;
    private MetadataField<T> zzaRf;

    public zzb(zzx zzx, SearchableMetadataField<T> searchableMetadataField, T t) {
        this(zzx, MetadataBundle.zzb(searchableMetadataField, t));
    }

    zzb(zzx zzx, MetadataBundle metadataBundle) {
        this.zzaRd = zzx;
        this.zzaRe = metadataBundle;
        this.zzaRf = zzi.zza(metadataBundle);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaRd, i, false);
        zzd.zza(parcel, 2, this.zzaRe, i, false);
        zzd.zzI(parcel, zze);
    }

    public final <F> F zza(zzj<F> zzj) {
        return zzj.zza(this.zzaRd, this.zzaRf, this.zzaRe.zza(this.zzaRf));
    }
}
