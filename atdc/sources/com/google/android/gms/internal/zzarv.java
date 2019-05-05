package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzarv extends zza {
    public static final Creator<zzarv> CREATOR = new zzarw();
    private int zzaku;
    private final Credential zzalx;

    zzarv(int i, Credential credential) {
        this.zzaku = i;
        this.zzalx = credential;
    }

    public zzarv(Credential credential) {
        this(1, credential);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzalx, i, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, zze);
    }
}
