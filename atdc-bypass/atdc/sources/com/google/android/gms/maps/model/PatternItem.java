package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PatternItem extends zza {
    public static final Creator<PatternItem> CREATOR = new zzi();
    private static final String TAG = "PatternItem";
    private final int type;
    @Nullable
    private final Float zzbnL;

    public PatternItem(int i, @Nullable Float f) {
        boolean z = true;
        if (i != 1 && (f == null || f.floatValue() < 0.0f)) {
            z = false;
        }
        String valueOf = String.valueOf(f);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 45);
        stringBuilder.append("Invalid PatternItem: type=");
        stringBuilder.append(i);
        stringBuilder.append(" length=");
        stringBuilder.append(valueOf);
        zzbo.zzb(z, stringBuilder.toString());
        this.type = i;
        this.zzbnL = f;
    }

    @Nullable
    static List<PatternItem> zzF(@Nullable List<PatternItem> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj : list) {
            Object obj2;
            if (obj2 == null) {
                obj2 = null;
            } else {
                Gap dash;
                switch (obj2.type) {
                    case 0:
                        dash = new Dash(obj2.zzbnL.floatValue());
                        break;
                    case 1:
                        obj2 = new Dot();
                        continue;
                    case 2:
                        dash = new Gap(obj2.zzbnL.floatValue());
                        break;
                    default:
                        String str = TAG;
                        int i = obj2.type;
                        StringBuilder stringBuilder = new StringBuilder(37);
                        stringBuilder.append("Unknown PatternItem type: ");
                        stringBuilder.append(i);
                        Log.w(str, stringBuilder.toString());
                        continue;
                }
                obj2 = dash;
            }
            arrayList.add(obj2);
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.type == patternItem.type && zzbe.equal(this.zzbnL, patternItem.zzbnL);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.type), this.zzbnL});
    }

    public String toString() {
        int i = this.type;
        String valueOf = String.valueOf(this.zzbnL);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 39);
        stringBuilder.append("[PatternItem: type=");
        stringBuilder.append(i);
        stringBuilder.append(" length=");
        stringBuilder.append(valueOf);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.type);
        zzd.zza(parcel, 3, this.zzbnL, false);
        zzd.zzI(parcel, i);
    }
}
