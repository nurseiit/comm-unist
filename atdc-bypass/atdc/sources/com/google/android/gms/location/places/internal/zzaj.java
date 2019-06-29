package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.List;

@Deprecated
public final class zzaj extends zza {
    public static final Creator<zzaj> CREATOR = new zzak();
    private String address;
    private String name;
    private String zzbkK;
    private String zzbkL;
    private List<String> zzbkM;

    public zzaj(String str, String str2, String str3, String str4, List<String> list) {
        this.name = str;
        this.address = str2;
        this.zzbkK = str3;
        this.zzbkL = str4;
        this.zzbkM = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaj)) {
            return false;
        }
        zzaj zzaj = (zzaj) obj;
        return zzbe.equal(this.name, zzaj.name) && zzbe.equal(this.address, zzaj.address) && zzbe.equal(this.zzbkK, zzaj.zzbkK) && zzbe.equal(this.zzbkL, zzaj.zzbkL) && zzbe.equal(this.zzbkM, zzaj.zzbkM);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, this.address, this.zzbkK, this.zzbkL});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("name", this.name).zzg("address", this.address).zzg("internationalPhoneNumber", this.zzbkK).zzg("regularOpenHours", this.zzbkL).zzg("attributions", this.zzbkM).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.name, false);
        zzd.zza(parcel, 2, this.address, false);
        zzd.zza(parcel, 3, this.zzbkK, false);
        zzd.zza(parcel, 4, this.zzbkL, false);
        zzd.zzb(parcel, 5, this.zzbkM, false);
        zzd.zzI(parcel, i);
    }
}
