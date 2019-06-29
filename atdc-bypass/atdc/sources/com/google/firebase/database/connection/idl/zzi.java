package com.google.firebase.database.connection.idl;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.ol;

final class zzi extends zza {
    public static final Creator<zzi> CREATOR = new zzj();
    private String host;
    private boolean secure;
    private String zzbxU;

    public zzi(String str, String str2, boolean z) {
        this.host = str;
        this.zzbxU = str2;
        this.secure = z;
    }

    public static ol zza(zzi zzi) {
        return new ol(zzi.host, zzi.zzbxU, zzi.secure);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.host, false);
        zzd.zza(parcel, 3, this.zzbxU, false);
        zzd.zza(parcel, 4, this.secure);
        zzd.zzI(parcel, i);
    }
}
