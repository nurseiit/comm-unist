package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzb extends zza {
    public static final Creator<zzb> CREATOR = new zzy();
    private int zzajK = 0;
    private final String zzakh;
    private final boolean zzbVA;
    private final boolean zzbVB;
    private final String zzbVI;
    private final byte[] zzbVJ;

    zzb(int i, boolean z, String str, String str2, byte[] bArr, boolean z2) {
        this.zzajK = i;
        this.zzbVA = z;
        this.zzbVI = str;
        this.zzakh = str2;
        this.zzbVJ = bArr;
        this.zzbVB = z2;
    }

    public zzb(boolean z, String str, String str2, byte[] bArr, boolean z2) {
        this.zzbVA = z;
        this.zzbVI = null;
        this.zzakh = null;
        this.zzbVJ = null;
        this.zzbVB = false;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("MetadataImpl { ");
        stringBuilder.append("{ eventStatus: '");
        stringBuilder.append(this.zzajK);
        stringBuilder.append("' } ");
        stringBuilder.append("{ uploadable: '");
        stringBuilder.append(this.zzbVA);
        stringBuilder.append("' } ");
        if (this.zzbVI != null) {
            stringBuilder.append("{ completionToken: '");
            stringBuilder.append(this.zzbVI);
            stringBuilder.append("' } ");
        }
        if (this.zzakh != null) {
            stringBuilder.append("{ accountName: '");
            stringBuilder.append(this.zzakh);
            stringBuilder.append("' } ");
        }
        if (this.zzbVJ != null) {
            stringBuilder.append("{ ssbContext: [ ");
            for (byte b : this.zzbVJ) {
                stringBuilder.append("0x");
                stringBuilder.append(Integer.toHexString(b));
                stringBuilder.append(" ");
            }
            stringBuilder.append("] } ");
        }
        stringBuilder.append("{ contextOnly: '");
        stringBuilder.append(this.zzbVB);
        stringBuilder.append("' } ");
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzajK);
        zzd.zza(parcel, 2, this.zzbVA);
        zzd.zza(parcel, 3, this.zzbVI, false);
        zzd.zza(parcel, 4, this.zzakh, false);
        zzd.zza(parcel, 5, this.zzbVJ, false);
        zzd.zza(parcel, 6, this.zzbVB);
        zzd.zzI(parcel, i);
    }

    public final void zzbS(int i) {
        this.zzajK = i;
    }
}
