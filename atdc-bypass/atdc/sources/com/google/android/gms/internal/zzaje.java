package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.zzo;

@zzzn
public final class zzaje extends zza {
    public static final Creator<zzaje> CREATOR = new zzajf();
    public String zzaP;
    public int zzaaO;
    public int zzaaP;
    public boolean zzaaQ;
    public boolean zzaaR;

    public zzaje(int i, int i2, boolean z) {
        this(i, i2, z, false, false);
    }

    public zzaje(int i, int i2, boolean z, boolean z2) {
        this((int) zzo.GOOGLE_PLAY_SERVICES_VERSION_CODE, i2, true, false, z2);
    }

    private zzaje(int i, int i2, boolean z, boolean z2, boolean z3) {
        String valueOf = String.valueOf("afma-sdk-a-v");
        Object obj = z ? "0" : "1";
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 24) + String.valueOf(obj).length());
        stringBuilder.append(valueOf);
        stringBuilder.append(i);
        stringBuilder.append(".");
        stringBuilder.append(i2);
        stringBuilder.append(".");
        stringBuilder.append(obj);
        this(stringBuilder.toString(), i, i2, z, z3);
    }

    zzaje(String str, int i, int i2, boolean z, boolean z2) {
        this.zzaP = str;
        this.zzaaO = i;
        this.zzaaP = i2;
        this.zzaaQ = z;
        this.zzaaR = z2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaP, false);
        zzd.zzc(parcel, 3, this.zzaaO);
        zzd.zzc(parcel, 4, this.zzaaP);
        zzd.zza(parcel, 5, this.zzaaQ);
        zzd.zza(parcel, 6, this.zzaaR);
        zzd.zzI(parcel, i);
    }
}
