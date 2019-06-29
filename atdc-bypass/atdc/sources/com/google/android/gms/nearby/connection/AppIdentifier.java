package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

@Deprecated
public final class AppIdentifier extends zza {
    public static final Creator<AppIdentifier> CREATOR = new zzb();
    private final String zzaVf;

    public AppIdentifier(String str) {
        this.zzaVf = zzbo.zzh(str, "Missing application identifier value");
    }

    public final String getIdentifier() {
        return this.zzaVf;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getIdentifier(), false);
        zzd.zzI(parcel, i);
    }
}
