package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzf;
import java.util.Set;

public final class zzo extends zza {
    public static final Creator<zzo> CREATOR = new zzp();
    private static zzo zzbjW = zzt("test_type", 1);
    private static zzo zzbjX = zzt("labeled_place", 6);
    private static zzo zzbjY = zzt("here_content", 7);
    private static Set<zzo> zzbjZ = zzf.zza(zzbjW, zzbjX, zzbjY);
    private String zzVB;
    private int zzbka;

    zzo(String str, int i) {
        zzbo.zzcF(str);
        this.zzVB = str;
        this.zzbka = i;
    }

    private static zzo zzt(String str, int i) {
        return new zzo(str, i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzo)) {
            return false;
        }
        zzo zzo = (zzo) obj;
        return this.zzVB.equals(zzo.zzVB) && this.zzbka == zzo.zzbka;
    }

    public final int hashCode() {
        return this.zzVB.hashCode();
    }

    public final String toString() {
        return this.zzVB;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzVB, false);
        zzd.zzc(parcel, 2, this.zzbka);
        zzd.zzI(parcel, i);
    }
}
