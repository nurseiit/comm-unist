package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzate extends zza {
    public static final Creator<zzate> CREATOR = new zzatf();
    private final int zzanY;
    private final double zzanZ;

    public zzate(int i, double d) {
        this.zzanY = i;
        this.zzanZ = d;
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toString(this.zzanY));
        double d = this.zzanZ;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 69);
        stringBuilder.append("PowerConnectionState = ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" Battery Percentage = ");
        stringBuilder.append(d);
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzanY);
        zzd.zza(parcel, 3, this.zzanZ);
        zzd.zzI(parcel, i);
    }
}
