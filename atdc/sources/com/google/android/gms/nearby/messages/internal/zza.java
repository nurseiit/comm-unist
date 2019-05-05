package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.nearby.messages.BleSignal;
import java.util.Arrays;

public final class zza extends com.google.android.gms.common.internal.safeparcel.zza implements BleSignal {
    public static final Creator<zza> CREATOR = new zzb();
    private int zzaku;
    private int zzbyS;
    private int zzbyT;

    zza(int i, int i2, int i3) {
        this.zzaku = i;
        this.zzbyS = i2;
        if (-169 >= i3 || i3 >= 87) {
            i3 = Integer.MIN_VALUE;
        }
        this.zzbyT = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BleSignal)) {
            return false;
        }
        BleSignal bleSignal = (BleSignal) obj;
        return this.zzbyS == bleSignal.getRssi() && this.zzbyT == bleSignal.getTxPower();
    }

    public final int getRssi() {
        return this.zzbyS;
    }

    public final int getTxPower() {
        return this.zzbyT;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzbyS), Integer.valueOf(this.zzbyT)});
    }

    public final String toString() {
        int i = this.zzbyS;
        int i2 = this.zzbyT;
        StringBuilder stringBuilder = new StringBuilder(48);
        stringBuilder.append("BleSignal{rssi=");
        stringBuilder.append(i);
        stringBuilder.append(", txPower=");
        stringBuilder.append(i2);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zzc(parcel, 2, this.zzbyS);
        zzd.zzc(parcel, 3, this.zzbyT);
        zzd.zzI(parcel, i);
    }
}
