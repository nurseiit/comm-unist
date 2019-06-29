package com.google.android.gms.internal;

import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.internal.zzm;
import java.util.Collection;

final class zzbre extends zzm<BitmapTeleporter> {
    zzbre(String str, Collection collection, Collection collection2, int i) {
        super(str, collection, collection2, 4400000);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzc(DataHolder dataHolder, int i, int i2) {
        throw new IllegalStateException("Thumbnail field is write only");
    }
}
