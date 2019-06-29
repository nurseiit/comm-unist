package com.google.android.gms.internal;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.location.ActivityRecognitionResult;

public final class zzati extends zza {
    public static final Creator<zzati> CREATOR = new zzaua();
    private final ActivityRecognitionResult zzaob;
    private final zzast zzaoc;
    private final zzasx zzaod;
    private final zzasz zzaoe;
    private final DataHolder zzaof;
    private final zzate zzaog;
    private final zzatg zzaoh;
    private final zzauh zzaoi;
    private final zzaue zzaoj;
    private final Location zzde;

    public zzati(ActivityRecognitionResult activityRecognitionResult, zzast zzast, zzasx zzasx, Location location, zzasz zzasz, DataHolder dataHolder, zzate zzate, zzatg zzatg, zzauh zzauh, zzaue zzaue) {
        this.zzaob = activityRecognitionResult;
        this.zzaoc = zzast;
        this.zzaod = zzasx;
        this.zzde = location;
        this.zzaoe = zzasz;
        this.zzaof = dataHolder;
        this.zzaog = zzate;
        this.zzaoh = zzatg;
        this.zzaoi = zzauh;
        this.zzaoj = zzaue;
    }

    public final ActivityRecognitionResult getActivityRecognitionResult() {
        return this.zzaob;
    }

    public final Location getLocation() {
        return this.zzde;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaob, i, false);
        zzd.zza(parcel, 3, this.zzaoc, i, false);
        zzd.zza(parcel, 4, this.zzaod, i, false);
        zzd.zza(parcel, 5, this.zzde, i, false);
        zzd.zza(parcel, 6, this.zzaoe, i, false);
        zzd.zza(parcel, 7, this.zzaof, i, false);
        zzd.zza(parcel, 8, this.zzaog, i, false);
        zzd.zza(parcel, 9, this.zzaoh, i, false);
        zzd.zza(parcel, 10, this.zzaoi, i, false);
        zzd.zza(parcel, 11, this.zzaoj, i, false);
        zzd.zzI(parcel, zze);
    }

    public final zzast zzmW() {
        return this.zzaoc;
    }

    public final zzasx zzmX() {
        return this.zzaod;
    }

    public final DataHolder zzmY() {
        return this.zzaof;
    }

    public final zzauh zzmZ() {
        return this.zzaoi;
    }

    public final zzaue zzna() {
        return this.zzaoj;
    }
}
