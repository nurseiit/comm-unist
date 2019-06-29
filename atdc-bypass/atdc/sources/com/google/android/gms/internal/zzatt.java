package com.google.android.gms.internal;

import com.google.android.gms.awareness.snapshot.PlacesResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.places.PlaceLikelihood;
import java.util.List;

final class zzatt implements PlacesResult {
    private /* synthetic */ zzaud zzaok;
    private boolean zzaol = false;
    private List<PlaceLikelihood> zzaom = null;

    zzatt(zzats zzats, zzaud zzaud) {
        this.zzaok = zzaud;
    }

    public final List<PlaceLikelihood> getPlaceLikelihoods() {
        if (this.zzaol) {
            return this.zzaom;
        }
        this.zzaol = true;
        if (this.zzaok.zznb() == null) {
            return null;
        }
        DataHolder zzmY = this.zzaok.zznb().zzmY();
        if (zzmY == null) {
            return null;
        }
        zzatc zzatc = new zzatc(zzmY);
        try {
            if (zzatc.getCount() <= 0) {
                return null;
            }
            this.zzaom = ((zzatb) ((SafeParcelable) zzatc.get(0))).getPlaceLikelihoods();
            List list = this.zzaom;
            zzatc.release();
            return list;
        } finally {
            zzatc.release();
        }
    }

    public final Status getStatus() {
        return this.zzaok.getStatus();
    }
}
