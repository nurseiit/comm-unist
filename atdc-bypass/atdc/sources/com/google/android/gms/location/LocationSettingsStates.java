package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.safeparcel.zze;

public final class LocationSettingsStates extends zza {
    public static final Creator<LocationSettingsStates> CREATOR = new zzx();
    private final boolean zzbin;
    private final boolean zzbio;
    private final boolean zzbip;
    private final boolean zzbiq;
    private final boolean zzbir;
    private final boolean zzbis;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.zzbin = z;
        this.zzbio = z2;
        this.zzbip = z3;
        this.zzbiq = z4;
        this.zzbir = z5;
        this.zzbis = z6;
    }

    public static LocationSettingsStates fromIntent(Intent intent) {
        return (LocationSettingsStates) zze.zza(intent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
    }

    public final boolean isBlePresent() {
        return this.zzbis;
    }

    public final boolean isBleUsable() {
        return this.zzbip;
    }

    public final boolean isGpsPresent() {
        return this.zzbiq;
    }

    public final boolean isGpsUsable() {
        return this.zzbin;
    }

    public final boolean isLocationPresent() {
        return this.zzbiq || this.zzbir;
    }

    public final boolean isLocationUsable() {
        return this.zzbin || this.zzbio;
    }

    public final boolean isNetworkLocationPresent() {
        return this.zzbir;
    }

    public final boolean isNetworkLocationUsable() {
        return this.zzbio;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, isGpsUsable());
        zzd.zza(parcel, 2, isNetworkLocationUsable());
        zzd.zza(parcel, 3, isBleUsable());
        zzd.zza(parcel, 4, isGpsPresent());
        zzd.zza(parcel, 5, isNetworkLocationPresent());
        zzd.zza(parcel, 6, isBlePresent());
        zzd.zzI(parcel, i);
    }
}
