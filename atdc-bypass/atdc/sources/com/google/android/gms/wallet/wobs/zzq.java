package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzq extends zza {
    public static final Creator<zzq> CREATOR = new zzr();
    private String body;
    private String zzbQQ;
    private zzm zzbQU;
    private zzo zzbQV;
    private zzo zzbQW;

    zzq() {
    }

    zzq(String str, String str2, zzm zzm, zzo zzo, zzo zzo2) {
        this.zzbQQ = str;
        this.body = str2;
        this.zzbQU = zzm;
        this.zzbQV = zzo;
        this.zzbQW = zzo2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbQQ, false);
        zzd.zza(parcel, 3, this.body, false);
        zzd.zza(parcel, 4, this.zzbQU, i, false);
        zzd.zza(parcel, 5, this.zzbQV, i, false);
        zzd.zza(parcel, 6, this.zzbQW, i, false);
        zzd.zzI(parcel, zze);
    }
}
