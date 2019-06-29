package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class DiscoveryOptions extends zza {
    public static final Creator<DiscoveryOptions> CREATOR = new zzd();
    private final Strategy zzbwl;

    public DiscoveryOptions(Strategy strategy) {
        this.zzbwl = strategy;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DiscoveryOptions)) {
            return false;
        }
        return zzbe.equal(this.zzbwl, ((DiscoveryOptions) obj).zzbwl);
    }

    public final Strategy getStrategy() {
        return this.zzbwl;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwl});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getStrategy(), i, false);
        zzd.zzI(parcel, zze);
    }
}
