package com.google.android.gms.internal;

import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.List;

final class ux implements uy<T, Void> {
    private /* synthetic */ List zzcgw;

    ux(uv uvVar, List list) {
        this.zzcgw = list;
    }

    public final /* synthetic */ Object zza(qr qrVar, Object obj, Object obj2) {
        this.zzcgw.add(new SimpleImmutableEntry(qrVar, obj));
        return null;
    }
}
