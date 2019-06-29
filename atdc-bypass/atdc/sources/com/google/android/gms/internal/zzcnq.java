package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcnq extends zza {
    public static final Creator<zzcnq> CREATOR = new zzcnr();
    private final String zzbwG;
    @Nullable
    private final byte[] zzbwH;
    private final String zzbxp;

    public zzcnq(String str, String str2, @Nullable byte[] bArr) {
        this.zzbwG = str;
        this.zzbxp = str2;
        this.zzbwH = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcnq) {
            zzcnq zzcnq = (zzcnq) obj;
            return zzbe.equal(this.zzbwG, zzcnq.zzbwG) && zzbe.equal(this.zzbxp, zzcnq.zzbxp) && zzbe.equal(this.zzbwH, zzcnq.zzbwH);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwG, this.zzbxp, this.zzbwH});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwG, false);
        zzd.zza(parcel, 2, this.zzbxp, false);
        zzd.zza(parcel, 3, this.zzbwH, false);
        zzd.zzI(parcel, i);
    }

    public final String zzzF() {
        return this.zzbwG;
    }

    public final String zzzG() {
        return this.zzbxp;
    }

    @Nullable
    public final byte[] zzzI() {
        return this.zzbwH;
    }
}
