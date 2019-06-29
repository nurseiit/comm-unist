package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;

public final class zzcbz extends zza {
    public static final Creator<zzcbz> CREATOR = new zzcca();
    private String packageName;
    private int uid;

    public zzcbz(int i, String str) {
        this.uid = i;
        this.packageName = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof zzcbz)) {
            return false;
        }
        zzcbz zzcbz = (zzcbz) obj;
        return zzcbz.uid == this.uid && zzbe.equal(zzcbz.packageName, this.packageName);
    }

    public final int hashCode() {
        return this.uid;
    }

    public final String toString() {
        return String.format("%d:%s", new Object[]{Integer.valueOf(this.uid), this.packageName});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.uid);
        zzd.zza(parcel, 2, this.packageName, false);
        zzd.zzI(parcel, i);
    }
}
