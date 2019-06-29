package com.google.android.gms.location.places;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.Locale;

public final class PlacesOptions implements Optional {
    @Nullable
    public final String zzakh;
    @Nullable
    public final String zzbjS;
    @Nullable
    public final String zzbjT;
    public final int zzbjU;
    @Nullable
    public final Locale zzbjV;

    public static class Builder {
        private int zzbjU = 0;

        public PlacesOptions build() {
            return new PlacesOptions(this, null);
        }
    }

    private PlacesOptions(Builder builder) {
        this.zzbjS = null;
        this.zzbjT = null;
        this.zzbjU = 0;
        this.zzakh = null;
        this.zzbjV = null;
    }

    /* synthetic */ PlacesOptions(Builder builder, zzn zzn) {
        this(builder);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof PlacesOptions) && zzbe.equal(null, null) && zzbe.equal(null, null) && zzbe.equal(Integer.valueOf(0), Integer.valueOf(0)) && zzbe.equal(null, null) && zzbe.equal(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{null, null, Integer.valueOf(0), null, null});
    }
}
