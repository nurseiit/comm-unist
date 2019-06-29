package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzboa extends zza {
    public static final Creator<zzboa> CREATOR = new zzbob();
    final IBinder zzaOG;

    zzboa(IBinder iBinder) {
        this.zzaOG = iBinder;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaOG, false);
        zzd.zzI(parcel, i);
    }
}
