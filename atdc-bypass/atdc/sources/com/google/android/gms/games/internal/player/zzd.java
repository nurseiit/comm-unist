package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;

public final class zzd extends zzc implements zza {
    private final zze zzaYZ;

    public zzd(DataHolder dataHolder, int i, zze zze) {
        super(dataHolder, i);
        this.zzaYZ = zze;
    }

    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return zzb.zza(this, obj);
    }

    public final /* synthetic */ Object freeze() {
        return new zzb(this);
    }

    public final int hashCode() {
        return zzb.zza(this);
    }

    public final String toString() {
        return zzb.zzb(this);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        ((zzb) ((zza) freeze())).writeToParcel(parcel, i);
    }

    public final String zzvf() {
        return getString(this.zzaYZ.zzbcs);
    }

    public final String zzvg() {
        return getString(this.zzaYZ.zzbct);
    }

    public final long zzvh() {
        return getLong(this.zzaYZ.zzbcu);
    }

    public final Uri zzvi() {
        return zzcw(this.zzaYZ.zzbcv);
    }

    public final Uri zzvj() {
        return zzcw(this.zzaYZ.zzbcw);
    }

    public final Uri zzvk() {
        return zzcw(this.zzaYZ.zzbcx);
    }
}
