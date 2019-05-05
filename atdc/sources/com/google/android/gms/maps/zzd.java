package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.internal.zzac;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.zzp;

final class zzd extends zzac {
    private /* synthetic */ OnInfoWindowClickListener zzblC;

    zzd(GoogleMap googleMap, OnInfoWindowClickListener onInfoWindowClickListener) {
        this.zzblC = onInfoWindowClickListener;
    }

    public final void zze(zzp zzp) {
        this.zzblC.onInfoWindowClick(new Marker(zzp));
    }
}
