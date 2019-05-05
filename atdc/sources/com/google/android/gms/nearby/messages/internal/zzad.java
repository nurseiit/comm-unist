package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzad extends zza {
    public static final Creator<zzad> CREATOR = new zzae();
    private String type;
    private int zzaku;
    private String zzbxU;

    zzad(int i, String str, String str2) {
        this.zzaku = i;
        this.zzbxU = str;
        this.type = str2;
    }

    public zzad(String str, String str2) {
        this(1, str, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzad) || hashCode() != obj.hashCode()) {
            return false;
        }
        zzad zzad = (zzad) obj;
        return zzbe.equal(this.zzbxU, zzad.zzbxU) && zzbe.equal(this.type, zzad.type);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbxU, this.type});
    }

    public final String toString() {
        String str = this.zzbxU;
        String str2 = this.type;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 17) + String.valueOf(str2).length());
        stringBuilder.append("namespace=");
        stringBuilder.append(str);
        stringBuilder.append(", type=");
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzbxU, false);
        zzd.zza(parcel, 2, this.type, false);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
