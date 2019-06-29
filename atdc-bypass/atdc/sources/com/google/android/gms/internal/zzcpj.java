package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public final class zzcpj extends zza {
    public static final Creator<zzcpj> CREATOR = new zzcpk();
    private static final String zzbyL = null;
    public static final zzcpj zzbyM = new zzcpj("", null);
    private int zzaku;
    private final String zzbyN;
    @Nullable
    private final String zzbyO;

    zzcpj(int i, @Nullable String str, @Nullable String str2) {
        this.zzaku = ((Integer) zzbo.zzu(Integer.valueOf(i))).intValue();
        if (str == null) {
            str = "";
        }
        this.zzbyN = str;
        this.zzbyO = str2;
    }

    private zzcpj(String str, String str2) {
        this(1, str, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcpj)) {
            return false;
        }
        zzcpj zzcpj = (zzcpj) obj;
        return zzbe.equal(this.zzbyN, zzcpj.zzbyN) && zzbe.equal(this.zzbyO, zzcpj.zzbyO);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbyN, this.zzbyO});
    }

    public final String toString() {
        String str = this.zzbyN;
        String str2 = this.zzbyO;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 40) + String.valueOf(str2).length());
        stringBuilder.append("NearbyDevice{handle=");
        stringBuilder.append(str);
        stringBuilder.append(", bluetoothAddress=");
        stringBuilder.append(str2);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 3, this.zzbyN, false);
        zzd.zza(parcel, 6, this.zzbyO, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
