package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public final class zzbiw extends zza {
    public static final Creator<zzbiw> CREATOR = new zzbix();
    private String zzaKW;
    private zzbiy zzaKX;
    private long zzaKY;

    public zzbiw(String str, long j, zzbiy zzbiy) {
        this(zzbo.zzcF(str), (zzbiy) zzbo.zzu(zzbiy), j);
    }

    zzbiw(String str, zzbiy zzbiy, long j) {
        this.zzaKW = str;
        this.zzaKX = zzbiy;
        this.zzaKY = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbiw)) {
            return false;
        }
        zzbiw zzbiw = (zzbiw) obj;
        return TextUtils.equals(this.zzaKW, zzbiw.zzaKW) && this.zzaKY == zzbiw.zzaKY;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaKW, Long.valueOf(this.zzaKY)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaKW, false);
        zzd.zza(parcel, 3, this.zzaKX, i, false);
        zzd.zza(parcel, 4, this.zzaKY);
        zzd.zzI(parcel, zze);
    }
}
