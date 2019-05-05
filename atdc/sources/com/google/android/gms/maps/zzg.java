package com.google.android.gms.maps;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.maps.GoogleMap.InfoWindowAdapter;
import com.google.android.gms.maps.internal.zzi;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.zzp;

final class zzg extends zzi {
    private /* synthetic */ InfoWindowAdapter zzblF;

    zzg(GoogleMap googleMap, InfoWindowAdapter infoWindowAdapter) {
        this.zzblF = infoWindowAdapter;
    }

    public final IObjectWrapper zzh(zzp zzp) {
        return zzn.zzw(this.zzblF.getInfoWindow(new Marker(zzp)));
    }

    public final IObjectWrapper zzi(zzp zzp) {
        return zzn.zzw(this.zzblF.getInfoContents(new Marker(zzp)));
    }
}
