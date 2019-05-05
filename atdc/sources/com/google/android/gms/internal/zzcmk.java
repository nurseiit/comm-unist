package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcmk extends zza {
    public static final Creator<zzcmk> CREATOR = new zzcml();
    private final String zzbwG;

    public zzcmk(String str) {
        this.zzbwG = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcmk)) {
            return false;
        }
        return zzbe.equal(this.zzbwG, ((zzcmk) obj).zzbwG);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwG});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwG, false);
        zzd.zzI(parcel, i);
    }
}
