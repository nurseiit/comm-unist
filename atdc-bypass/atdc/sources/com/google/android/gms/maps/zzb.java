package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap.OnMarkerClickListener;
import com.google.android.gms.maps.internal.zzas;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.zzp;

final class zzb extends zzas {
    private /* synthetic */ OnMarkerClickListener zzblA;

    zzb(GoogleMap googleMap, OnMarkerClickListener onMarkerClickListener) {
        this.zzblA = onMarkerClickListener;
    }

    public final boolean zza(zzp zzp) {
        return this.zzblA.onMarkerClick(new Marker(zzp));
    }
}
