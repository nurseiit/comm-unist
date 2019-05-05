package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Locale;

public final class zzf extends zza {
    public static final Creator<zzf> CREATOR = new zzg();
    private String zzaPB;
    private boolean zzaRg;

    public zzf(String str, boolean z) {
        this.zzaPB = str;
        this.zzaRg = z;
    }

    public final String toString() {
        Locale locale = Locale.US;
        String str = "FieldWithSortOrder[%s %s]";
        Object[] objArr = new Object[2];
        objArr[0] = this.zzaPB;
        objArr[1] = this.zzaRg ? "ASC" : "DESC";
        return String.format(locale, str, objArr);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzaPB, false);
        zzd.zza(parcel, 2, this.zzaRg);
        zzd.zzI(parcel, i);
    }
}
