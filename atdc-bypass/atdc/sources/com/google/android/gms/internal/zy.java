package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.firebase.dynamiclinks.ShortDynamicLink.Warning;

public final class zy extends zza implements Warning {
    public static final Creator<zy> CREATOR = new aaa();
    private final String message;
    private final String zzckc;

    public zy(String str, String str2) {
        this.zzckc = str;
        this.message = str2;
    }

    public final String getCode() {
        return this.zzckc;
    }

    public final String getMessage() {
        return this.message;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, getCode(), false);
        zzd.zza(parcel, 2, getMessage(), false);
        zzd.zzI(parcel, i);
    }
}
