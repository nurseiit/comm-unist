package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcoa extends zza {
    public static final Creator<zzcoa> CREATOR = new zzcob();
    private final String zzbxq;

    public zzcoa(String str) {
        this.zzbxq = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcoa)) {
            return false;
        }
        return zzbe.equal(this.zzbxq, ((zzcoa) obj).zzbxq);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbxq});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbxq, false);
        zzd.zzI(parcel, i);
    }

    public final String zzzJ() {
        return this.zzbxq;
    }
}
