package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

@Deprecated
public final class zzcdw extends zza {
    public static final Creator<zzcdw> CREATOR = new zzcdx();
    private static zzcdw zzbli = new zzcdw("Home");
    private static zzcdw zzblj = new zzcdw("Work");
    private final String zzblk;

    zzcdw(String str) {
        this.zzblk = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcdw)) {
            return false;
        }
        return zzbe.equal(this.zzblk, ((zzcdw) obj).zzblk);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzblk});
    }

    public final String toString() {
        return zzbe.zzt(this).zzg("alias", this.zzblk).toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzblk, false);
        zzd.zzI(parcel, i);
    }
}
