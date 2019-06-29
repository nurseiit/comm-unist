package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzcno extends zza {
    public static final Creator<zzcno> CREATOR = new zzcnp();
    private final String zzbwG;
    @Nullable
    private final byte[] zzbwH;
    private final String zzbwp;
    private final boolean zzbwq;
    private final String zzbxp;

    public zzcno(String str, String str2, String str3, boolean z, @Nullable byte[] bArr) {
        this.zzbwG = str;
        this.zzbxp = str2;
        this.zzbwp = str3;
        this.zzbwq = z;
        this.zzbwH = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzcno) {
            zzcno zzcno = (zzcno) obj;
            return zzbe.equal(this.zzbwG, zzcno.zzbwG) && zzbe.equal(this.zzbxp, zzcno.zzbxp) && zzbe.equal(this.zzbwp, zzcno.zzbwp) && zzbe.equal(Boolean.valueOf(this.zzbwq), Boolean.valueOf(zzcno.zzbwq)) && Arrays.equals(this.zzbwH, zzcno.zzbwH);
        }
    }

    public final String getAuthenticationToken() {
        return this.zzbwp;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbwG, this.zzbxp, this.zzbwp, Boolean.valueOf(this.zzbwq), this.zzbwH});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbwG, false);
        zzd.zza(parcel, 2, this.zzbxp, false);
        zzd.zza(parcel, 3, this.zzbwp, false);
        zzd.zza(parcel, 4, this.zzbwq);
        zzd.zza(parcel, 5, this.zzbwH, false);
        zzd.zzI(parcel, i);
    }

    public final String zzzF() {
        return this.zzbwG;
    }

    public final String zzzG() {
        return this.zzbxp;
    }

    public final boolean zzzH() {
        return this.zzbwq;
    }
}
