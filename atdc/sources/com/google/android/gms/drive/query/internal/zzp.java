package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.metadata.zzb;
import java.util.Collection;
import java.util.Collections;

public final class zzp<T> extends zza {
    public static final zzq CREATOR = new zzq();
    private MetadataBundle zzaRe;
    private final zzb<T> zzaRr;

    public zzp(SearchableCollectionMetadataField<T> searchableCollectionMetadataField, T t) {
        this(MetadataBundle.zzb(searchableCollectionMetadataField, Collections.singleton(t)));
    }

    zzp(MetadataBundle metadataBundle) {
        this.zzaRe = metadataBundle;
        this.zzaRr = (zzb) zzi.zza(metadataBundle);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaRe, i, false);
        zzd.zzI(parcel, zze);
    }

    public final <F> F zza(zzj<F> zzj) {
        return zzj.zza(this.zzaRr, ((Collection) this.zzaRe.zza(this.zzaRr)).iterator().next());
    }
}
