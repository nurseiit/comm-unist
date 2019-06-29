package com.google.android.gms.location.places.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.location.places.PlacePhotoMetadata;
import com.google.android.gms.location.places.PlacePhotoResult;
import com.google.android.gms.location.places.Places;
import java.util.Arrays;

public final class zzap implements PlacePhotoMetadata {
    private int mIndex;
    private final int zzOb;
    private final int zzOc;
    private final String zzbkY;
    private final CharSequence zzbkZ;

    public zzap(String str, int i, int i2, CharSequence charSequence, int i3) {
        this.zzbkY = str;
        this.zzOb = i;
        this.zzOc = i2;
        this.zzbkZ = charSequence;
        this.mIndex = i3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzap)) {
            return false;
        }
        zzap zzap = (zzap) obj;
        return zzap.zzOb == this.zzOb && zzap.zzOc == this.zzOc && zzbe.equal(zzap.zzbkY, this.zzbkY) && zzbe.equal(zzap.zzbkZ, this.zzbkZ);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final CharSequence getAttributions() {
        return this.zzbkZ;
    }

    public final int getMaxHeight() {
        return this.zzOc;
    }

    public final int getMaxWidth() {
        return this.zzOb;
    }

    public final PendingResult<PlacePhotoResult> getPhoto(GoogleApiClient googleApiClient) {
        return getScaledPhoto(googleApiClient, getMaxWidth(), getMaxHeight());
    }

    public final PendingResult<PlacePhotoResult> getScaledPhoto(GoogleApiClient googleApiClient, int i, int i2) {
        return googleApiClient.zzd(new zzaq(this, Places.GEO_DATA_API, googleApiClient, i, i2));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzOb), Integer.valueOf(this.zzOc), this.zzbkY, this.zzbkZ});
    }

    public final boolean isDataValid() {
        return true;
    }
}
