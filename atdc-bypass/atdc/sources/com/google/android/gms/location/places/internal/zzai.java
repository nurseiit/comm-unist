package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.PlaceLikelihood;

public final class zzai extends zzav implements PlaceLikelihood {
    public zzai(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public final /* synthetic */ Object freeze() {
        PlaceEntity placeEntity = (PlaceEntity) getPlace().freeze();
        return new zzag((PlaceEntity) zzbo.zzu(placeEntity), getLikelihood());
    }

    public final float getLikelihood() {
        return zza("place_likelihood", -1.0f);
    }

    public final Place getPlace() {
        return new zzas(this.zzaCX, this.zzaFx);
    }
}
