package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzx extends zza {
    public static final Creator<zzx> CREATOR = new zzy();
    public static final zzx zzaRA = new zzx("or");
    private static zzx zzaRB = new zzx("not");
    public static final zzx zzaRC = new zzx("contains");
    public static final zzx zzaRu = new zzx("=");
    public static final zzx zzaRv = new zzx("<");
    public static final zzx zzaRw = new zzx("<=");
    public static final zzx zzaRx = new zzx(">");
    public static final zzx zzaRy = new zzx(">=");
    public static final zzx zzaRz = new zzx("and");
    private String mTag;

    zzx(String str) {
        this.mTag = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzx zzx = (zzx) obj;
        if (this.mTag == null) {
            if (zzx.mTag != null) {
                return false;
            }
        } else if (!this.mTag.equals(zzx.mTag)) {
            return false;
        }
        return true;
    }

    public final String getTag() {
        return this.mTag;
    }

    public final int hashCode() {
        return (this.mTag == null ? 0 : this.mTag.hashCode()) + 31;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.mTag, false);
        zzd.zzI(parcel, i);
    }
}
