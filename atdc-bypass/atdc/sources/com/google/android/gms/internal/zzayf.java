package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.Arrays;

public final class zzayf extends zza {
    public static final Creator<zzayf> CREATOR = new zzayg();
    private double zzaqD;
    private boolean zzaqE;
    private int zzaxT;
    private int zzaxU;
    private ApplicationMetadata zzaye;

    public zzayf() {
        this(Double.NaN, false, -1, null, -1);
    }

    zzayf(double d, boolean z, int i, ApplicationMetadata applicationMetadata, int i2) {
        this.zzaqD = d;
        this.zzaqE = z;
        this.zzaxT = i;
        this.zzaye = applicationMetadata;
        this.zzaxU = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzayf)) {
            return false;
        }
        zzayf zzayf = (zzayf) obj;
        return this.zzaqD == zzayf.zzaqD && this.zzaqE == zzayf.zzaqE && this.zzaxT == zzayf.zzaxT && zzaye.zza(this.zzaye, zzayf.zzaye) && this.zzaxU == zzayf.zzaxU;
    }

    public final int getActiveInputState() {
        return this.zzaxT;
    }

    public final ApplicationMetadata getApplicationMetadata() {
        return this.zzaye;
    }

    public final int getStandbyState() {
        return this.zzaxU;
    }

    public final double getVolume() {
        return this.zzaqD;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.zzaqD), Boolean.valueOf(this.zzaqE), Integer.valueOf(this.zzaxT), this.zzaye, Integer.valueOf(this.zzaxU)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaqD);
        zzd.zza(parcel, 3, this.zzaqE);
        zzd.zzc(parcel, 4, this.zzaxT);
        zzd.zza(parcel, 5, this.zzaye, i, false);
        zzd.zzc(parcel, 6, this.zzaxU);
        zzd.zzI(parcel, zze);
    }

    public final boolean zzoJ() {
        return this.zzaqE;
    }
}
