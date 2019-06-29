package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.zzb;
import java.util.List;

public interface zzj<F> {
    <T> F zza(zzb<T> zzb, T t);

    <T> F zza(zzx zzx, MetadataField<T> metadataField, T t);

    F zza(zzx zzx, List<F> list);

    F zzcU(String str);

    F zzd(MetadataField<?> metadataField);

    <T> F zzd(MetadataField<T> metadataField, T t);

    F zztu();

    F zztv();

    F zzv(F f);
}
