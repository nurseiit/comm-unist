package com.google.android.gms.location.places;

import com.google.android.gms.location.places.internal.zzag;
import java.util.Comparator;

final class zzi implements Comparator<zzag> {
    zzi() {
    }

    public final /* synthetic */ int compare(Object obj, Object obj2) {
        return -Float.compare(((zzag) obj).getLikelihood(), ((zzag) obj2).getLikelihood());
    }
}
