package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;

public class MapValue extends zza implements ReflectedParcelable {
    public static final Creator<MapValue> CREATOR = new zzw();
    private final int zzaUT;
    private final float zzaUU;
    private final int zzaku;

    public MapValue(int i, float f) {
        this(1, 2, f);
    }

    MapValue(int i, int i2, float f) {
        this.zzaku = i;
        this.zzaUT = i2;
        this.zzaUU = f;
    }

    public final float asFloat() {
        zzbo.zza(this.zzaUT == 2, (Object) "Value is not in float format");
        return this.zzaUU;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MapValue) {
            MapValue mapValue = (MapValue) obj;
            obj = (this.zzaUT != mapValue.zzaUT || (this.zzaUT == 2 ? asFloat() != mapValue.asFloat() : this.zzaUU != mapValue.zzaUU)) ? null : 1;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (int) this.zzaUU;
    }

    public String toString() {
        return this.zzaUT != 2 ? "unknown" : Float.toString(asFloat());
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaUT);
        zzd.zza(parcel, 2, this.zzaUU);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
