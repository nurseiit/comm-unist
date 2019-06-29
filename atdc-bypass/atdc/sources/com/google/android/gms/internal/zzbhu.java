package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzbhu extends zza {
    public static final Creator<zzbhu> CREATOR = new zzbhv();
    private final byte[] zzaKA;

    public zzbhu(byte[] bArr) {
        this.zzaKA = bArr;
    }

    public final byte[] getPayload() {
        return this.zzaKA;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaKA, false);
        zzd.zzI(parcel, i);
    }
}
