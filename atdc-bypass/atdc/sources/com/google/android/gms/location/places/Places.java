package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.location.places.internal.zzaa;
import com.google.android.gms.location.places.internal.zzac;
import com.google.android.gms.location.places.internal.zzh;
import com.google.android.gms.location.places.internal.zzm;
import com.google.android.gms.location.places.internal.zzo;
import com.google.android.gms.location.places.internal.zzx;

public class Places {
    public static final Api<PlacesOptions> GEO_DATA_API = new Api("Places.GEO_DATA_API", new zzo(), zzbjL);
    public static final GeoDataApi GeoDataApi = new zzh();
    public static final Api<PlacesOptions> PLACE_DETECTION_API = new Api("Places.PLACE_DETECTION_API", new zzac(), zzbjM);
    public static final PlaceDetectionApi PlaceDetectionApi = new zzx();
    private static zzf<zzm> zzbjL = new zzf();
    private static zzf<zzaa> zzbjM = new zzf();

    private Places() {
    }
}
