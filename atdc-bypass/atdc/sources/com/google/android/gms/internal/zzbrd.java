package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.internal.zzb;
import java.util.Collection;

final class zzbrd extends zzb {
    zzbrd(String str, Collection collection, Collection collection2, int i) {
        super(str, collection, collection2, 7000000);
    }

    /* Access modifiers changed, original: protected|final */
    /* renamed from: zze */
    public final Boolean zzc(DataHolder dataHolder, int i, int i2) {
        return Boolean.valueOf(dataHolder.zzc("trashed", i, i2) == 2);
    }
}
