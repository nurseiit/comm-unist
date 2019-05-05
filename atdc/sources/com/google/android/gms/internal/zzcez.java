package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class zzcez extends zza {
    public static final Creator<zzcez> CREATOR = new zzcfa();
    public final String name;
    public final zzcew zzbpM;
    public final long zzbpN;
    public final String zzbpc;

    zzcez(zzcez zzcez, long j) {
        zzbo.zzu(zzcez);
        this.name = zzcez.name;
        this.zzbpM = zzcez.zzbpM;
        this.zzbpc = zzcez.zzbpc;
        this.zzbpN = j;
    }

    public zzcez(String str, zzcew zzcew, String str2, long j) {
        this.name = str;
        this.zzbpM = zzcew;
        this.zzbpc = str2;
        this.zzbpN = j;
    }

    public final String toString() {
        String str = this.zzbpc;
        String str2 = this.name;
        String valueOf = String.valueOf(this.zzbpM);
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str).length() + 21) + String.valueOf(str2).length()) + String.valueOf(valueOf).length());
        stringBuilder.append("origin=");
        stringBuilder.append(str);
        stringBuilder.append(",name=");
        stringBuilder.append(str2);
        stringBuilder.append(",params=");
        stringBuilder.append(valueOf);
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.name, false);
        zzd.zza(parcel, 3, this.zzbpM, i, false);
        zzd.zza(parcel, 4, this.zzbpc, false);
        zzd.zza(parcel, 5, this.zzbpN);
        zzd.zzI(parcel, zze);
    }
}
