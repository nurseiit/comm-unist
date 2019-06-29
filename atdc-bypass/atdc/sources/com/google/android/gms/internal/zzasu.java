package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.state.BeaconState.BeaconInfo;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public final class zzasu extends zza implements BeaconInfo {
    public static final Creator<zzasu> CREATOR = new zzass();
    private final String zzVB;
    private final String zzanR;
    private final byte[] zzanS;

    public zzasu(String str, String str2, byte[] bArr) {
        this.zzanR = zzbo.zzcF(str);
        this.zzVB = zzbo.zzcF(str2);
        this.zzanS = bArr;
    }

    public final byte[] getContent() {
        return this.zzanS;
    }

    public final String getNamespace() {
        return this.zzanR;
    }

    public final String getType() {
        return this.zzVB;
    }

    public final String toString() {
        Object str = this.zzanS == null ? "<null>" : new String(this.zzanS);
        String str2 = this.zzanR;
        String str3 = this.zzVB;
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str2).length() + 6) + String.valueOf(str3).length()) + String.valueOf(str).length());
        stringBuilder.append("(");
        stringBuilder.append(str2);
        stringBuilder.append(", ");
        stringBuilder.append(str3);
        stringBuilder.append(", ");
        stringBuilder.append(str);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getNamespace(), false);
        zzd.zza(parcel, 3, getType(), false);
        zzd.zza(parcel, 4, getContent(), false);
        zzd.zzI(parcel, i);
    }
}
