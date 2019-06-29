package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcnu extends zza {
    public static final Creator<zzcnu> CREATOR = new zzcnv();
    private final int statusCode;
    private final String zzbwG;
    @Nullable
    private final byte[] zzbwH;

    public zzcnu(String str, int i, @Nullable byte[] bArr) {
        this.zzbwG = str;
        this.statusCode = i;
        this.zzbwH = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcnu) {
            zzcnu zzcnu = (zzcnu) obj;
            return zzbe.equal(this.zzbwG, zzcnu.zzbwG) && zzbe.equal(Integer.valueOf(this.statusCode), Integer.valueOf(zzcnu.statusCode)) && zzbe.equal(this.zzbwH, zzcnu.zzbwH);
        }
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwG, Integer.valueOf(this.statusCode), this.zzbwH});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwG, false);
        zzd.zzc(parcel, 2, this.statusCode);
        zzd.zza(parcel, 3, this.zzbwH, false);
        zzd.zzI(parcel, i);
    }

    public final String zzzF() {
        return this.zzbwG;
    }
}
