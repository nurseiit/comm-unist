package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.state.TimeIntervals;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzaue extends zza implements TimeIntervals {
    public static final Creator<zzaue> CREATOR = new zzauf();
    private final int[] zzaos;

    public zzaue(int[] iArr) {
        this.zzaos = iArr;
    }

    public final int[] getTimeIntervals() {
        return this.zzaos;
    }

    public final boolean hasTimeInterval(int i) {
        if (this.zzaos == null) {
            return false;
        }
        for (int i2 : this.zzaos) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String str;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("TimeIntervals=");
        if (this.zzaos == null) {
            str = "unknown";
        } else {
            stringBuilder.append("[");
            int[] iArr = this.zzaos;
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
            str = "]";
        }
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getTimeIntervals(), false);
        zzd.zzI(parcel, i);
    }
}
