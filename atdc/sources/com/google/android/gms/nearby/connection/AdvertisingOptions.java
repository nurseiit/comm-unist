package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class AdvertisingOptions extends zza {
    public static final Creator<AdvertisingOptions> CREATOR = new zza();
    private final Strategy zzbwl;
    @Nullable
    private final boolean zzbwm;

    public AdvertisingOptions(Strategy strategy) {
        this(strategy, true);
    }

    public AdvertisingOptions(Strategy strategy, @Nullable boolean z) {
        this.zzbwl = strategy;
        this.zzbwm = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdvertisingOptions) {
            AdvertisingOptions advertisingOptions = (AdvertisingOptions) obj;
            return zzbe.equal(this.zzbwl, advertisingOptions.zzbwl) && zzbe.equal(Boolean.valueOf(this.zzbwm), Boolean.valueOf(advertisingOptions.zzbwm));
        }
    }

    public final Strategy getStrategy() {
        return this.zzbwl;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwl, Boolean.valueOf(this.zzbwm)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, getStrategy(), i, false);
        zzd.zza(parcel, 2, this.zzbwm);
        zzd.zzI(parcel, zze);
    }
}
