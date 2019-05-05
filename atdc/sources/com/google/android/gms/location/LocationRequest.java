package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Arrays;

public final class LocationRequest extends zza implements ReflectedParcelable {
    public static final Creator<LocationRequest> CREATOR = new zzq();
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;
    private int mPriority;
    private boolean zzaXd;
    private long zzbhG;
    private long zzbhX;
    private long zzbhY;
    private int zzbhZ;
    private float zzbia;
    private long zzbib;

    public LocationRequest() {
        this.mPriority = 102;
        this.zzbhX = 3600000;
        this.zzbhY = 600000;
        this.zzaXd = false;
        this.zzbhG = Long.MAX_VALUE;
        this.zzbhZ = Integer.MAX_VALUE;
        this.zzbia = 0.0f;
        this.zzbib = 0;
    }

    LocationRequest(int i, long j, long j2, boolean z, long j3, int i2, float f, long j4) {
        this.mPriority = i;
        this.zzbhX = j;
        this.zzbhY = j2;
        this.zzaXd = z;
        this.zzbhG = j3;
        this.zzbhZ = i2;
        this.zzbia = f;
        this.zzbib = j4;
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    private static void zzI(long j) {
        if (j < 0) {
            StringBuilder stringBuilder = new StringBuilder(38);
            stringBuilder.append("invalid interval: ");
            stringBuilder.append(j);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.mPriority == locationRequest.mPriority && this.zzbhX == locationRequest.zzbhX && this.zzbhY == locationRequest.zzbhY && this.zzaXd == locationRequest.zzaXd && this.zzbhG == locationRequest.zzbhG && this.zzbhZ == locationRequest.zzbhZ && this.zzbia == locationRequest.zzbia && getMaxWaitTime() == locationRequest.getMaxWaitTime();
    }

    public final long getExpirationTime() {
        return this.zzbhG;
    }

    public final long getFastestInterval() {
        return this.zzbhY;
    }

    public final long getInterval() {
        return this.zzbhX;
    }

    public final long getMaxWaitTime() {
        long j = this.zzbib;
        return j < this.zzbhX ? this.zzbhX : j;
    }

    public final int getNumUpdates() {
        return this.zzbhZ;
    }

    public final int getPriority() {
        return this.mPriority;
    }

    public final float getSmallestDisplacement() {
        return this.zzbia;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mPriority), Long.valueOf(this.zzbhX), Float.valueOf(this.zzbia), Long.valueOf(this.zzbib)});
    }

    public final LocationRequest setExpirationDuration(long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = Long.MAX_VALUE;
        if (j <= Long.MAX_VALUE - elapsedRealtime) {
            j2 = j + elapsedRealtime;
        }
        this.zzbhG = j2;
        if (this.zzbhG < 0) {
            this.zzbhG = 0;
        }
        return this;
    }

    public final LocationRequest setExpirationTime(long j) {
        this.zzbhG = j;
        if (this.zzbhG < 0) {
            this.zzbhG = 0;
        }
        return this;
    }

    public final LocationRequest setFastestInterval(long j) {
        zzI(j);
        this.zzaXd = true;
        this.zzbhY = j;
        return this;
    }

    public final LocationRequest setInterval(long j) {
        zzI(j);
        this.zzbhX = j;
        if (!this.zzaXd) {
            this.zzbhY = (long) (((double) this.zzbhX) / 6.0d);
        }
        return this;
    }

    public final LocationRequest setMaxWaitTime(long j) {
        zzI(j);
        this.zzbib = j;
        return this;
    }

    public final LocationRequest setNumUpdates(int i) {
        if (i <= 0) {
            StringBuilder stringBuilder = new StringBuilder(31);
            stringBuilder.append("invalid numUpdates: ");
            stringBuilder.append(i);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.zzbhZ = i;
        return this;
    }

    public final LocationRequest setPriority(int i) {
        switch (i) {
            case 100:
            case 102:
            case 104:
            case 105:
                this.mPriority = i;
                return this;
            default:
                StringBuilder stringBuilder = new StringBuilder(28);
                stringBuilder.append("invalid quality: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public final LocationRequest setSmallestDisplacement(float f) {
        if (f < 0.0f) {
            StringBuilder stringBuilder = new StringBuilder(37);
            stringBuilder.append("invalid displacement: ");
            stringBuilder.append(f);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.zzbia = f;
        return this;
    }

    public final String toString() {
        String str;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Request[");
        switch (this.mPriority) {
            case 100:
                str = "PRIORITY_HIGH_ACCURACY";
                break;
            case 102:
                str = "PRIORITY_BALANCED_POWER_ACCURACY";
                break;
            case 104:
                str = "PRIORITY_LOW_POWER";
                break;
            case 105:
                str = "PRIORITY_NO_POWER";
                break;
            default:
                str = "???";
                break;
        }
        stringBuilder.append(str);
        if (this.mPriority != 105) {
            stringBuilder.append(" requested=");
            stringBuilder.append(this.zzbhX);
            stringBuilder.append("ms");
        }
        stringBuilder.append(" fastest=");
        stringBuilder.append(this.zzbhY);
        stringBuilder.append("ms");
        if (this.zzbib > this.zzbhX) {
            stringBuilder.append(" maxWait=");
            stringBuilder.append(this.zzbib);
            stringBuilder.append("ms");
        }
        if (this.zzbia > 0.0f) {
            stringBuilder.append(" smallestDisplacement=");
            stringBuilder.append(this.zzbia);
            stringBuilder.append("m");
        }
        if (this.zzbhG != Long.MAX_VALUE) {
            long elapsedRealtime = this.zzbhG - SystemClock.elapsedRealtime();
            stringBuilder.append(" expireIn=");
            stringBuilder.append(elapsedRealtime);
            stringBuilder.append("ms");
        }
        if (this.zzbhZ != Integer.MAX_VALUE) {
            stringBuilder.append(" num=");
            stringBuilder.append(this.zzbhZ);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.mPriority);
        zzd.zza(parcel, 2, this.zzbhX);
        zzd.zza(parcel, 3, this.zzbhY);
        zzd.zza(parcel, 4, this.zzaXd);
        zzd.zza(parcel, 5, this.zzbhG);
        zzd.zzc(parcel, 6, this.zzbhZ);
        zzd.zza(parcel, 7, this.zzbia);
        zzd.zza(parcel, 8, this.zzbib);
        zzd.zzI(parcel, i);
    }
}
