package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Base64;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class zzcqn extends zza {
    public static final Creator<zzcqn> CREATOR = new zzcqt();
    private static byte[][] zzazi = new byte[0][];
    private static zzcqn zzbAc = new zzcqn("", null, zzazi, zzazi, zzazi, zzazi, null, null);
    private static final zzcqs zzbAl = new zzcqo();
    private static final zzcqs zzbAm = new zzcqp();
    private static final zzcqs zzbAn = new zzcqq();
    private static final zzcqs zzbAo = new zzcqr();
    private String zzbAd;
    private byte[] zzbAe;
    private byte[][] zzbAf;
    private byte[][] zzbAg;
    private byte[][] zzbAh;
    private byte[][] zzbAi;
    private int[] zzbAj;
    private byte[][] zzbAk;

    public zzcqn(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6) {
        this.zzbAd = str;
        this.zzbAe = bArr;
        this.zzbAf = bArr2;
        this.zzbAg = bArr3;
        this.zzbAh = bArr4;
        this.zzbAi = bArr5;
        this.zzbAj = iArr;
        this.zzbAk = bArr6;
    }

    private static void zza(StringBuilder stringBuilder, String str, int[] iArr) {
        stringBuilder.append(str);
        stringBuilder.append("=");
        if (iArr == null) {
            str = "null";
        } else {
            stringBuilder.append("(");
            int length = iArr.length;
            int i = 0;
            Object obj = 1;
            while (i < length) {
                int i2 = iArr[i];
                if (obj == null) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(i2);
                i++;
                obj = null;
            }
            str = ")";
        }
        stringBuilder.append(str);
    }

    private static void zza(StringBuilder stringBuilder, String str, byte[][] bArr) {
        stringBuilder.append(str);
        stringBuilder.append("=");
        if (bArr == null) {
            str = "null";
        } else {
            stringBuilder.append("(");
            int length = bArr.length;
            int i = 0;
            Object obj = 1;
            while (i < length) {
                byte[] bArr2 = bArr[i];
                if (obj == null) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append("'");
                stringBuilder.append(Base64.encodeToString(bArr2, 3));
                stringBuilder.append("'");
                i++;
                obj = null;
            }
            str = ")";
        }
        stringBuilder.append(str);
    }

    private static List<String> zzb(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] encodeToString : bArr) {
            arrayList.add(Base64.encodeToString(encodeToString, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static List<Integer> zzc(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int valueOf : iArr) {
            arrayList.add(Integer.valueOf(valueOf));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzcqn) {
            zzcqn zzcqn = (zzcqn) obj;
            if (zzcqu.equals(this.zzbAd, zzcqn.zzbAd) && Arrays.equals(this.zzbAe, zzcqn.zzbAe) && zzcqu.equals(zzb(this.zzbAf), zzb(zzcqn.zzbAf)) && zzcqu.equals(zzb(this.zzbAg), zzb(zzcqn.zzbAg)) && zzcqu.equals(zzb(this.zzbAh), zzb(zzcqn.zzbAh)) && zzcqu.equals(zzb(this.zzbAi), zzb(zzcqn.zzbAi)) && zzcqu.equals(zzc(this.zzbAj), zzc(zzcqn.zzbAj)) && zzcqu.equals(zzb(this.zzbAk), zzb(zzcqn.zzbAk))) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str;
        StringBuilder stringBuilder = new StringBuilder("ExperimentTokens");
        stringBuilder.append("(");
        if (this.zzbAd == null) {
            str = "null";
        } else {
            str = String.valueOf("'");
            String str2 = this.zzbAd;
            String valueOf = String.valueOf("'");
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(str).length() + String.valueOf(str2).length()) + String.valueOf(valueOf).length());
            stringBuilder2.append(str);
            stringBuilder2.append(str2);
            stringBuilder2.append(valueOf);
            str = stringBuilder2.toString();
        }
        stringBuilder.append(str);
        stringBuilder.append(", ");
        byte[] bArr = this.zzbAe;
        stringBuilder.append("direct");
        stringBuilder.append("=");
        if (bArr == null) {
            str = "null";
        } else {
            stringBuilder.append("'");
            stringBuilder.append(Base64.encodeToString(bArr, 3));
            str = "'";
        }
        stringBuilder.append(str);
        stringBuilder.append(", ");
        zza(stringBuilder, "GAIA", this.zzbAf);
        stringBuilder.append(", ");
        zza(stringBuilder, "PSEUDO", this.zzbAg);
        stringBuilder.append(", ");
        zza(stringBuilder, "ALWAYS", this.zzbAh);
        stringBuilder.append(", ");
        zza(stringBuilder, "OTHER", this.zzbAi);
        stringBuilder.append(", ");
        zza(stringBuilder, "weak", this.zzbAj);
        stringBuilder.append(", ");
        zza(stringBuilder, "directs", this.zzbAk);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzbAd, false);
        zzd.zza(parcel, 3, this.zzbAe, false);
        zzd.zza(parcel, 4, this.zzbAf, false);
        zzd.zza(parcel, 5, this.zzbAg, false);
        zzd.zza(parcel, 6, this.zzbAh, false);
        zzd.zza(parcel, 7, this.zzbAi, false);
        zzd.zza(parcel, 8, this.zzbAj, false);
        zzd.zza(parcel, 9, this.zzbAk, false);
        zzd.zzI(parcel, i);
    }
}
