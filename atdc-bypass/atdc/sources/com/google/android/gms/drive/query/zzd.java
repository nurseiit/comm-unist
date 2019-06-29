package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.query.internal.zzj;
import com.google.android.gms.drive.query.internal.zzx;

public final class zzd implements zzj<String> {
    public final /* synthetic */ Object zza(zzx zzx, MetadataField metadataField, Object obj) {
        return String.format("cmp(%s,%s,%s)", new Object[]{zzx.getTag(), metadataField.getName(), obj});
    }

    public final /* synthetic */ Object zzcU(String str) {
        return String.format("fullTextSearch(%s)", new Object[]{str});
    }

    public final /* synthetic */ Object zzd(MetadataField metadataField) {
        return String.format("fieldOnly(%s)", new Object[]{metadataField.getName()});
    }

    public final /* synthetic */ Object zzd(MetadataField metadataField, Object obj) {
        return String.format("has(%s,%s)", new Object[]{metadataField.getName(), obj});
    }

    public final /* synthetic */ Object zztu() {
        return "ownedByMe()";
    }

    public final /* synthetic */ Object zztv() {
        return "all()";
    }

    public final /* synthetic */ Object zzv(Object obj) {
        return String.format("not(%s)", new Object[]{(String) obj});
    }
}
