package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.zzb;

public final class zzbrm extends zzb implements SearchableMetadataField<Boolean> {
    public zzbrm(String str, int i) {
        super(str, 4100000);
    }

    /* Access modifiers changed, original: protected|final */
    /* renamed from: zze */
    public final Boolean zzc(DataHolder dataHolder, int i, int i2) {
        return Boolean.valueOf(dataHolder.zzc(getName(), i, i2) != 0);
    }
}
