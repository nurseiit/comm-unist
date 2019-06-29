package com.google.android.gms.location.places.internal;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.Locale;

public final class zzat extends zza {
    public static final Creator<zzat> CREATOR = new zzau();
    private static zzat zzbld = new zzat("com.google.android.gms", Locale.getDefault(), null);
    private String zzaLx;
    private String zzbjT;
    private String zzble;
    private String zzblf;
    private int zzblg;
    private int zzblh;

    public zzat(String str, String str2, String str3, String str4, int i, int i2) {
        this.zzble = str;
        this.zzblf = str2;
        this.zzaLx = str3;
        this.zzbjT = str4;
        this.zzblg = i;
        this.zzblh = i2;
    }

    private zzat(String str, Locale locale, String str2) {
        this(str, locale.toString(), null, null, GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE, 0);
    }

    public zzat(String str, Locale locale, String str2, String str3, int i) {
        this(str, locale.toString(), str2, str3, GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzat)) {
            return false;
        }
        zzat zzat = (zzat) obj;
        return this.zzblg == zzat.zzblg && this.zzblh == zzat.zzblh && this.zzblf.equals(zzat.zzblf) && this.zzble.equals(zzat.zzble) && zzbe.equal(this.zzaLx, zzat.zzaLx) && zzbe.equal(this.zzbjT, zzat.zzbjT);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzble, this.zzblf, this.zzaLx, this.zzbjT, Integer.valueOf(this.zzblg), Integer.valueOf(this.zzblh)});
    }

    @SuppressLint({"DefaultLocale"})
    public final String toString() {
        return zzbe.zzt(this).zzg("clientPackageName", this.zzble).zzg("locale", this.zzblf).zzg("accountName", this.zzaLx).zzg("gCoreClientName", this.zzbjT).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzble, false);
        zzd.zza(parcel, 2, this.zzblf, false);
        zzd.zza(parcel, 3, this.zzaLx, false);
        zzd.zza(parcel, 4, this.zzbjT, false);
        zzd.zzc(parcel, 6, this.zzblg);
        zzd.zzc(parcel, 7, this.zzblh);
        zzd.zzI(parcel, i);
    }
}
