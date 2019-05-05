package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Arrays;
import java.util.Comparator;

public class DetectedActivity extends zza {
    public static final Creator<DetectedActivity> CREATOR = new zzd();
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    private static int[] zzbhA = new int[]{0, 1, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 16, 17};
    private static Comparator<DetectedActivity> zzbhy = new zzc();
    private static int[] zzbhz = new int[]{9, 10};
    private int zzbhB;
    private int zzbhC;

    public DetectedActivity(int i, int i2) {
        this.zzbhB = i;
        this.zzbhC = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DetectedActivity detectedActivity = (DetectedActivity) obj;
        return this.zzbhB == detectedActivity.zzbhB && this.zzbhC == detectedActivity.zzbhC;
    }

    public int getConfidence() {
        return this.zzbhC;
    }

    public int getType() {
        int i = this.zzbhB;
        return i > 17 ? 4 : i;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzbhB), Integer.valueOf(this.zzbhC)});
    }

    public String toString() {
        Object obj;
        int type = getType();
        switch (type) {
            case 0:
                obj = "IN_VEHICLE";
                break;
            case 1:
                obj = "ON_BICYCLE";
                break;
            case 2:
                obj = "ON_FOOT";
                break;
            case 3:
                obj = "STILL";
                break;
            case 4:
                obj = "UNKNOWN";
                break;
            case 5:
                obj = "TILTING";
                break;
            default:
                switch (type) {
                    case 7:
                        obj = "WALKING";
                        break;
                    case 8:
                        obj = "RUNNING";
                        break;
                    default:
                        switch (type) {
                            case 16:
                                obj = "IN_ROAD_VEHICLE";
                                break;
                            case 17:
                                obj = "IN_RAIL_VEHICLE";
                                break;
                            default:
                                obj = Integer.toString(type);
                                break;
                        }
                }
        }
        String valueOf = String.valueOf(obj);
        int i = this.zzbhC;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 48);
        stringBuilder.append("DetectedActivity [type=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", confidence=");
        stringBuilder.append(i);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbhB);
        zzd.zzc(parcel, 2, this.zzbhC);
        zzd.zzI(parcel, i);
    }
}
