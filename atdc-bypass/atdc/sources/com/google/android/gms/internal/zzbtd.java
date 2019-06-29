package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.List;

public final class zzbtd extends zza {
    public static final Creator<zzbtd> CREATOR = new zzbte();
    private long zzayS;
    private List<zzbtl> zztH;

    public zzbtd(long j, List<zzbtl> list) {
        this.zzayS = j;
        this.zztH = list;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzayS);
        zzd.zzc(parcel, 3, this.zztH, false);
        zzd.zzI(parcel, i);
    }
}
