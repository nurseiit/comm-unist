package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.List;

public class AutocompleteFilter extends zza implements ReflectedParcelable {
    public static final Creator<AutocompleteFilter> CREATOR = new zzc();
    public static final int TYPE_FILTER_ADDRESS = 2;
    public static final int TYPE_FILTER_CITIES = 5;
    public static final int TYPE_FILTER_ESTABLISHMENT = 34;
    public static final int TYPE_FILTER_GEOCODE = 1007;
    public static final int TYPE_FILTER_NONE = 0;
    public static final int TYPE_FILTER_REGIONS = 4;
    private int zzaku;
    private boolean zzbjm;
    private List<Integer> zzbjn;
    private String zzbjo;
    private int zzbjp;

    public static final class Builder {
        private boolean zzbjm = false;
        private String zzbjo = "";
        private int zzbjp = 0;

        public final AutocompleteFilter build() {
            return new AutocompleteFilter(1, false, Arrays.asList(new Integer[]{Integer.valueOf(this.zzbjp)}), this.zzbjo);
        }

        public final Builder setCountry(String str) {
            this.zzbjo = str;
            return this;
        }

        public final Builder setTypeFilter(int i) {
            this.zzbjp = i;
            return this;
        }
    }

    AutocompleteFilter(int i, boolean z, List<Integer> list, String str) {
        this.zzaku = i;
        this.zzbjn = list;
        i = (list == null || list.isEmpty()) ? 0 : ((Integer) list.iterator().next()).intValue();
        this.zzbjp = i;
        this.zzbjo = str;
        if (this.zzaku <= 0) {
            this.zzbjm = z ^ 1;
        } else {
            this.zzbjm = z;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompleteFilter)) {
            return false;
        }
        AutocompleteFilter autocompleteFilter = (AutocompleteFilter) obj;
        return this.zzbjp == autocompleteFilter.zzbjp && this.zzbjm == autocompleteFilter.zzbjm && this.zzbjo == autocompleteFilter.zzbjo;
    }

    public int getTypeFilter() {
        return this.zzbjp;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zzbjm), Integer.valueOf(this.zzbjp), this.zzbjo});
    }

    public String toString() {
        return zzbe.zzt(this).zzg("includeQueryPredictions", Boolean.valueOf(this.zzbjm)).zzg("typeFilter", Integer.valueOf(this.zzbjp)).zzg("country", this.zzbjo).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbjm);
        zzd.zza(parcel, 2, this.zzbjn, false);
        zzd.zza(parcel, 3, this.zzbjo, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
