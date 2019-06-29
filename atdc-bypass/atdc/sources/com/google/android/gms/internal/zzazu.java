package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;

public final class zzazu extends zza {
    public static final Creator<zzazu> CREATOR = new zzazv();
    private boolean zzazA;
    public final aej zzazB;
    public zzbak zzazE;
    public byte[] zzazF;
    private int[] zzazG;
    private String[] zzazH;
    private int[] zzazI;
    private byte[][] zzazJ;
    private zzcqn[] zzazK;
    public final zzazr zzazL;
    public final zzazr zzazu;

    public zzazu(zzbak zzbak, aej aej, zzazr zzazr, zzazr zzazr2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, zzcqn[] zzcqnArr, boolean z) {
        this.zzazE = zzbak;
        this.zzazB = aej;
        this.zzazu = zzazr;
        this.zzazL = null;
        this.zzazG = iArr;
        this.zzazH = null;
        this.zzazI = iArr2;
        this.zzazJ = null;
        this.zzazK = null;
        this.zzazA = z;
    }

    zzazu(zzbak zzbak, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, zzcqn[] zzcqnArr) {
        this.zzazE = zzbak;
        this.zzazF = bArr;
        this.zzazG = iArr;
        this.zzazH = strArr;
        this.zzazB = null;
        this.zzazu = null;
        this.zzazL = null;
        this.zzazI = iArr2;
        this.zzazJ = bArr2;
        this.zzazK = zzcqnArr;
        this.zzazA = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzazu) {
            zzazu zzazu = (zzazu) obj;
            return zzbe.equal(this.zzazE, zzazu.zzazE) && Arrays.equals(this.zzazF, zzazu.zzazF) && Arrays.equals(this.zzazG, zzazu.zzazG) && Arrays.equals(this.zzazH, zzazu.zzazH) && zzbe.equal(this.zzazB, zzazu.zzazB) && zzbe.equal(this.zzazu, zzazu.zzazu) && zzbe.equal(this.zzazL, zzazu.zzazL) && Arrays.equals(this.zzazI, zzazu.zzazI) && Arrays.deepEquals(this.zzazJ, zzazu.zzazJ) && Arrays.equals(this.zzazK, zzazu.zzazK) && this.zzazA == zzazu.zzazA;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzazE, this.zzazF, this.zzazG, this.zzazH, this.zzazB, this.zzazu, this.zzazL, this.zzazI, this.zzazJ, this.zzazK, Boolean.valueOf(this.zzazA)});
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("LogEventParcelable[");
        stringBuilder.append(this.zzazE);
        stringBuilder.append(", LogEventBytes: ");
        stringBuilder.append(this.zzazF == null ? null : new String(this.zzazF));
        stringBuilder.append(", TestCodes: ");
        stringBuilder.append(Arrays.toString(this.zzazG));
        stringBuilder.append(", MendelPackages: ");
        stringBuilder.append(Arrays.toString(this.zzazH));
        stringBuilder.append(", LogEvent: ");
        stringBuilder.append(this.zzazB);
        stringBuilder.append(", ExtensionProducer: ");
        stringBuilder.append(this.zzazu);
        stringBuilder.append(", VeProducer: ");
        stringBuilder.append(this.zzazL);
        stringBuilder.append(", ExperimentIDs: ");
        stringBuilder.append(Arrays.toString(this.zzazI));
        stringBuilder.append(", ExperimentTokens: ");
        stringBuilder.append(Arrays.toString(this.zzazJ));
        stringBuilder.append(", ExperimentTokensParcelables: ");
        stringBuilder.append(Arrays.toString(this.zzazK));
        stringBuilder.append(", AddPhenotypeExperimentTokens: ");
        stringBuilder.append(this.zzazA);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzazE, i, false);
        zzd.zza(parcel, 3, this.zzazF, false);
        zzd.zza(parcel, 4, this.zzazG, false);
        zzd.zza(parcel, 5, this.zzazH, false);
        zzd.zza(parcel, 6, this.zzazI, false);
        zzd.zza(parcel, 7, this.zzazJ, false);
        zzd.zza(parcel, 8, this.zzazA);
        zzd.zza(parcel, 9, this.zzazK, i, false);
        zzd.zzI(parcel, zze);
    }
}
