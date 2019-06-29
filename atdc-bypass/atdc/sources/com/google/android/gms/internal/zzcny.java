package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcny extends zza {
    public static final Creator<zzcny> CREATOR = new zzcnz();
    private final String zzbwo;
    private final String zzbwr;
    private final String zzbxq;

    public zzcny(String str, String str2, String str3) {
        this.zzbxq = str;
        this.zzbwr = str2;
        this.zzbwo = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcny) {
            zzcny zzcny = (zzcny) obj;
            return zzbe.equal(this.zzbxq, zzcny.zzbxq) && zzbe.equal(this.zzbwr, zzcny.zzbwr) && zzbe.equal(this.zzbwo, zzcny.zzbwo);
        }
    }

    public final String getEndpointName() {
        return this.zzbwo;
    }

    public final String getServiceId() {
        return this.zzbwr;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbxq, this.zzbwr, this.zzbwo});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbxq, false);
        zzd.zza(parcel, 2, this.zzbwr, false);
        zzd.zza(parcel, 3, this.zzbwo, false);
        zzd.zzI(parcel, i);
    }

    public final String zzzJ() {
        return this.zzbxq;
    }
}
