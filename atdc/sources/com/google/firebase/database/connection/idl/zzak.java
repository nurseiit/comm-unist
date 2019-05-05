package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.pe;
import java.util.List;

final class zzak extends zza {
    public static final Creator<zzak> CREATOR = new zzal();
    private List<String> zzcbD;
    private List<String> zzcbE;

    public zzak(List<String> list, List<String> list2) {
        this.zzcbD = list;
        this.zzcbE = list2;
    }

    public static pe zza(zzak zzak, Object obj) {
        return new pe(zzak.zzcbD, zzak.zzcbE, obj);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzb(parcel, 2, this.zzcbD, false);
        zzd.zzb(parcel, 3, this.zzcbE, false);
        zzd.zzI(parcel, i);
    }
}
