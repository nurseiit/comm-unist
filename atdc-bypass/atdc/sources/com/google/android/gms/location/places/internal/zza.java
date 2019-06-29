package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.style.CharacterStyle;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.location.places.AutocompletePrediction;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class zza extends com.google.android.gms.common.internal.safeparcel.zza implements AutocompletePrediction {
    public static final Creator<zza> CREATOR = new zzc();
    private static final List<zzb> zzbkb = Collections.emptyList();
    private String zzbjI;
    private List<Integer> zzbjj;
    private String zzbkc;
    private List<zzb> zzbkd;
    private int zzbke;
    private String zzbkf;
    private List<zzb> zzbkg;
    private String zzbkh;
    private List<zzb> zzbki;

    zza(String str, List<Integer> list, int i, String str2, List<zzb> list2, String str3, List<zzb> list3, String str4, List<zzb> list4) {
        this.zzbjI = str;
        this.zzbjj = list;
        this.zzbke = i;
        this.zzbkc = str2;
        this.zzbkd = list2;
        this.zzbkf = str3;
        this.zzbkg = list3;
        this.zzbkh = str4;
        this.zzbki = list4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zza)) {
            return false;
        }
        zza zza = (zza) obj;
        return zzbe.equal(this.zzbjI, zza.zzbjI) && zzbe.equal(this.zzbjj, zza.zzbjj) && zzbe.equal(Integer.valueOf(this.zzbke), Integer.valueOf(zza.zzbke)) && zzbe.equal(this.zzbkc, zza.zzbkc) && zzbe.equal(this.zzbkd, zza.zzbkd) && zzbe.equal(this.zzbkf, zza.zzbkf) && zzbe.equal(this.zzbkg, zza.zzbkg) && zzbe.equal(this.zzbkh, zza.zzbkh) && zzbe.equal(this.zzbki, zza.zzbki);
    }

    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final CharSequence getFullText(@Nullable CharacterStyle characterStyle) {
        return zzg.zza(this.zzbkc, this.zzbkd, characterStyle);
    }

    @Nullable
    public final String getPlaceId() {
        return this.zzbjI;
    }

    public final List<Integer> getPlaceTypes() {
        return this.zzbjj;
    }

    public final CharSequence getPrimaryText(@Nullable CharacterStyle characterStyle) {
        return zzg.zza(this.zzbkf, this.zzbkg, characterStyle);
    }

    public final CharSequence getSecondaryText(@Nullable CharacterStyle characterStyle) {
        return zzg.zza(this.zzbkh, this.zzbki, characterStyle);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbjI, this.zzbjj, Integer.valueOf(this.zzbke), this.zzbkc, this.zzbkd, this.zzbkf, this.zzbkg, this.zzbkh, this.zzbki});
    }

    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("placeId", this.zzbjI).zzg("placeTypes", this.zzbjj).zzg("fullText", this.zzbkc).zzg("fullTextMatchedSubstrings", this.zzbkd).zzg("primaryText", this.zzbkf).zzg("primaryTextMatchedSubstrings", this.zzbkg).zzg("secondaryText", this.zzbkh).zzg("secondaryTextMatchedSubstrings", this.zzbki).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbkc, false);
        zzd.zza(parcel, 2, this.zzbjI, false);
        zzd.zza(parcel, 3, this.zzbjj, false);
        zzd.zzc(parcel, 4, this.zzbkd, false);
        zzd.zzc(parcel, 5, this.zzbke);
        zzd.zza(parcel, 6, this.zzbkf, false);
        zzd.zzc(parcel, 7, this.zzbkg, false);
        zzd.zza(parcel, 8, this.zzbkh, false);
        zzd.zzc(parcel, 9, this.zzbki, false);
        zzd.zzI(parcel, i);
    }
}
