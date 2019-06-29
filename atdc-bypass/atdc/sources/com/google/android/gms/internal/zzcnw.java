package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcnw extends zza {
    public static final Creator<zzcnw> CREATOR = new zzcnx();
    private final String zzbwG;

    public zzcnw(String str) {
        this.zzbwG = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcnw)) {
            return false;
        }
        return zzbe.equal(this.zzbwG, ((zzcnw) obj).zzbwG);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwG});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwG, false);
        zzd.zzI(parcel, i);
    }

    public final String zzzF() {
        return this.zzbwG;
    }
}
