package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;

public final class zzbak extends zza {
    public static final Creator<zzbak> CREATOR = new zzbal();
    private String packageName;
    private boolean zzazU;
    private int zzazj;
    public final String zzazk;
    public final int zzazl;
    private String zzazm;
    private String zzazn;
    private boolean zzazo;
    private int zzazp;

    public zzbak(String str, int i, int i2, String str2, String str3, String str4, boolean z, int i3) {
        this.packageName = (String) zzbo.zzu(str);
        this.zzazj = i;
        this.zzazl = i2;
        this.zzazk = str2;
        this.zzazm = str3;
        this.zzazn = str4;
        this.zzazU = z ^ 1;
        this.zzazo = z;
        this.zzazp = i3;
    }

    public zzbak(String str, int i, int i2, String str2, String str3, boolean z, String str4, boolean z2, int i3) {
        this.packageName = str;
        this.zzazj = i;
        this.zzazl = i2;
        this.zzazm = str2;
        this.zzazn = str3;
        this.zzazU = z;
        this.zzazk = str4;
        this.zzazo = z2;
        this.zzazp = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbak) {
            zzbak zzbak = (zzbak) obj;
            return zzbe.equal(this.packageName, zzbak.packageName) && this.zzazj == zzbak.zzazj && this.zzazl == zzbak.zzazl && zzbe.equal(this.zzazk, zzbak.zzazk) && zzbe.equal(this.zzazm, zzbak.zzazm) && zzbe.equal(this.zzazn, zzbak.zzazn) && this.zzazU == zzbak.zzazU && this.zzazo == zzbak.zzazo && this.zzazp == zzbak.zzazp;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.packageName, Integer.valueOf(this.zzazj), Integer.valueOf(this.zzazl), this.zzazk, this.zzazm, this.zzazn, Boolean.valueOf(this.zzazU), Boolean.valueOf(this.zzazo), Integer.valueOf(this.zzazp)});
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("PlayLoggerContext[");
        stringBuilder.append("package=");
        stringBuilder.append(this.packageName);
        stringBuilder.append(',');
        stringBuilder.append("packageVersionCode=");
        stringBuilder.append(this.zzazj);
        stringBuilder.append(',');
        stringBuilder.append("logSource=");
        stringBuilder.append(this.zzazl);
        stringBuilder.append(',');
        stringBuilder.append("logSourceName=");
        stringBuilder.append(this.zzazk);
        stringBuilder.append(',');
        stringBuilder.append("uploadAccount=");
        stringBuilder.append(this.zzazm);
        stringBuilder.append(',');
        stringBuilder.append("loggingId=");
        stringBuilder.append(this.zzazn);
        stringBuilder.append(',');
        stringBuilder.append("logAndroidId=");
        stringBuilder.append(this.zzazU);
        stringBuilder.append(',');
        stringBuilder.append("isAnonymous=");
        stringBuilder.append(this.zzazo);
        stringBuilder.append(',');
        stringBuilder.append("qosTier=");
        stringBuilder.append(this.zzazp);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.packageName, false);
        zzd.zzc(parcel, 3, this.zzazj);
        zzd.zzc(parcel, 4, this.zzazl);
        zzd.zza(parcel, 5, this.zzazm, false);
        zzd.zza(parcel, 6, this.zzazn, false);
        zzd.zza(parcel, 7, this.zzazU);
        zzd.zza(parcel, 8, this.zzazk, false);
        zzd.zza(parcel, 9, this.zzazo);
        zzd.zzc(parcel, 10, this.zzazp);
        zzd.zzI(parcel, i);
    }
}
