package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

@zzzn
public final class zzvi implements MediationAdRequest {
    private final int zzAe;
    private final boolean zzAq;
    private final int zzMZ;
    private final Date zzda;
    private final Set<String> zzdc;
    private final boolean zzdd;
    private final Location zzde;

    public zzvi(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, boolean z2) {
        this.zzda = date;
        this.zzAe = i;
        this.zzdc = set;
        this.zzde = location;
        this.zzdd = z;
        this.zzMZ = i2;
        this.zzAq = z2;
    }

    public final Date getBirthday() {
        return this.zzda;
    }

    public final int getGender() {
        return this.zzAe;
    }

    public final Set<String> getKeywords() {
        return this.zzdc;
    }

    public final Location getLocation() {
        return this.zzde;
    }

    public final boolean isDesignedForFamilies() {
        return this.zzAq;
    }

    public final boolean isTesting() {
        return this.zzdd;
    }

    public final int taggedForChildDirectedTreatment() {
        return this.zzMZ;
    }
}
