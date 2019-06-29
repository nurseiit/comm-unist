package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzbzk;
import com.google.android.gms.internal.zzbzl;

public final class zzag extends zza {
    public static final Creator<zzag> CREATOR = new zzah();
    private final zzbzk zzaWQ;
    private final int zzaku;

    zzag(int i, IBinder iBinder) {
        this.zzaku = i;
        this.zzaWQ = zzbzl.zzX(iBinder);
    }

    public zzag(zzbzk zzbzk) {
        this.zzaku = 2;
        this.zzaWQ = zzbzk;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaWQ.asBinder(), false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
