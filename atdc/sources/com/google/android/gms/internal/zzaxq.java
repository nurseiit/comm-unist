package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Arrays;

public final class zzaxq extends zza {
    public static final Creator<zzaxq> CREATOR = new zzaxr();
    private String zzaxF;

    public zzaxq() {
        this(null);
    }

    zzaxq(String str) {
        this.zzaxF = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaxq)) {
            return false;
        }
        return zzaye.zza(this.zzaxF, ((zzaxq) obj).zzaxF);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaxF});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaxF, false);
        zzd.zzI(parcel, i);
    }

    public final String zzoy() {
        return this.zzaxF;
    }
}
