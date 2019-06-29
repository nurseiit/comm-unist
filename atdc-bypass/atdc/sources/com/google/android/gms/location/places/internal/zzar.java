package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.PlacePhotoMetadata;
import com.google.android.gms.location.places.PlacePhotoResult;

public final class zzar extends zzav implements PlacePhotoMetadata {
    private final String zzbkY = getString("photo_fife_url");

    public zzar(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    public final /* synthetic */ Object freeze() {
        return new zzap(this.zzbkY, getMaxWidth(), getMaxHeight(), getAttributions(), this.zzaFx);
    }

    public final CharSequence getAttributions() {
        return zzD("photo_attributions", null);
    }

    public final int getMaxHeight() {
        return zzu("photo_max_height", 0);
    }

    public final int getMaxWidth() {
        return zzu("photo_max_width", 0);
    }

    public final PendingResult<PlacePhotoResult> getPhoto(GoogleApiClient googleApiClient) {
        return getScaledPhoto(googleApiClient, getMaxWidth(), getMaxHeight());
    }

    public final PendingResult<PlacePhotoResult> getScaledPhoto(GoogleApiClient googleApiClient, int i, int i2) {
        return ((PlacePhotoMetadata) freeze()).getScaledPhoto(googleApiClient, i, i2);
    }
}
