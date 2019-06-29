package com.google.android.gms.location.places;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.internal.zzas;

public class PlaceBuffer extends AbstractDataBuffer<Place> implements Result {
    private final Status mStatus;
    private final String zzbjs;

    public PlaceBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.mStatus = PlacesStatusCodes.zzaH(dataHolder.getStatusCode());
        String string = (dataHolder == null || dataHolder.zzqN() == null) ? null : dataHolder.zzqN().getString("com.google.android.gms.location.places.PlaceBuffer.ATTRIBUTIONS_EXTRA_KEY");
        this.zzbjs = string;
    }

    public Place get(int i) {
        return new zzas(this.zzaCX, i);
    }

    @Nullable
    public CharSequence getAttributions() {
        return this.zzbjs;
    }

    public Status getStatus() {
        return this.mStatus;
    }
}
