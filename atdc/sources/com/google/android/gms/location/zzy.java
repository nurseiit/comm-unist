package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Arrays;

public final class zzy extends zza {
    public static final Creator<zzy> CREATOR = new zzz();
    private int zzbit;
    private int zzbiu;
    private long zzbiv;
    private long zzbiw;

    zzy(int i, int i2, long j, long j2) {
        this.zzbit = i;
        this.zzbiu = i2;
        this.zzbiv = j;
        this.zzbiw = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzy zzy = (zzy) obj;
        return this.zzbit == zzy.zzbit && this.zzbiu == zzy.zzbiu && this.zzbiv == zzy.zzbiv && this.zzbiw == zzy.zzbiw;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzbiu), Integer.valueOf(this.zzbit), Long.valueOf(this.zzbiw), Long.valueOf(this.zzbiv)});
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("NetworkLocationStatus:");
        stringBuilder.append(" Wifi status: ");
        stringBuilder.append(this.zzbit);
        stringBuilder.append(" Cell status: ");
        stringBuilder.append(this.zzbiu);
        stringBuilder.append(" elapsed time NS: ");
        stringBuilder.append(this.zzbiw);
        stringBuilder.append(" system time ms: ");
        stringBuilder.append(this.zzbiv);
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbit);
        zzd.zzc(parcel, 2, this.zzbiu);
        zzd.zza(parcel, 3, this.zzbiv);
        zzd.zza(parcel, 4, this.zzbiw);
        zzd.zzI(parcel, i);
    }
}
