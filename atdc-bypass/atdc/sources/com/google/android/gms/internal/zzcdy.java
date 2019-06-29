package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.List;

@Deprecated
public final class zzcdy extends zza {
    public static final Creator<zzcdy> CREATOR = new zzcea();
    private final String zzakh;
    private final String zzbjI;
    private final List<zzcdw> zzbll;

    zzcdy(String str, String str2, List<zzcdw> list) {
        this.zzakh = str;
        this.zzbjI = str2;
        this.zzbll = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcdy)) {
            return false;
        }
        zzcdy zzcdy = (zzcdy) obj;
        return this.zzakh.equals(zzcdy.zzakh) && this.zzbjI.equals(zzcdy.zzbjI) && this.zzbll.equals(zzcdy.zzbll);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzakh, this.zzbjI, this.zzbll});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("accountName", this.zzakh).zzg("placeId", this.zzbjI).zzg("placeAliases", this.zzbll).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzakh, false);
        zzd.zza(parcel, 2, this.zzbjI, false);
        zzd.zzc(parcel, 6, this.zzbll, false);
        zzd.zzI(parcel, i);
    }
}
