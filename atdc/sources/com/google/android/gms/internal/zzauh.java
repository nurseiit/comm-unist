package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.awareness.state.Weather;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;

public final class zzauh extends zza implements Weather {
    public static final Creator<zzauh> CREATOR = new zzaui();
    private final float zzaot;
    private final float zzaou;
    private final float zzaov;
    private final int zzaow;
    private final int[] zzaox;

    public zzauh(float f, float f2, float f3, int i, int[] iArr) {
        this.zzaot = f;
        this.zzaou = f2;
        this.zzaov = f3;
        this.zzaow = i;
        this.zzaox = iArr;
    }

    private static float zza(int i, float f) {
        switch (i) {
            case 1:
                return f;
            case 2:
                return ((f - 32.0f) * 5.0f) / 9.0f;
            default:
                zzeq.zza("WeatherImpl", "Invalid temperature unit %s", Integer.valueOf(i));
                throw new IllegalArgumentException("Invalid temperature unit");
        }
    }

    public final int[] getConditions() {
        return this.zzaox;
    }

    public final float getDewPoint(int i) {
        return zza(i, this.zzaov);
    }

    public final float getFeelsLikeTemperature(int i) {
        return zza(i, this.zzaou);
    }

    public final int getHumidity() {
        return this.zzaow;
    }

    public final float getTemperature(int i) {
        return zza(i, this.zzaot);
    }

    public final String toString() {
        String str;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Temp=");
        stringBuilder.append(getTemperature(1));
        stringBuilder.append("F/");
        stringBuilder.append(getTemperature(2));
        stringBuilder.append("C, Feels=");
        stringBuilder.append(getFeelsLikeTemperature(1));
        stringBuilder.append("F/");
        stringBuilder.append(getFeelsLikeTemperature(2));
        stringBuilder.append("C, Dew=");
        stringBuilder.append(getDewPoint(1));
        stringBuilder.append("F/");
        stringBuilder.append(getDewPoint(2));
        stringBuilder.append("C, Humidity=");
        stringBuilder.append(getHumidity());
        stringBuilder.append(", Condition=");
        if (getConditions() == null) {
            str = "unknown";
        } else {
            stringBuilder.append("[");
            int[] conditions = getConditions();
            int length = conditions.length;
            int i = 0;
            Object obj = 1;
            while (i < length) {
                int i2 = conditions[i];
                if (obj == null) {
                    stringBuilder.append(",");
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
        zzd.zza(parcel, 2, this.zzaot);
        zzd.zza(parcel, 3, this.zzaou);
        zzd.zza(parcel, 4, this.zzaov);
        zzd.zzc(parcel, 5, getHumidity());
        zzd.zza(parcel, 6, getConditions(), false);
        zzd.zzI(parcel, i);
    }
}
