package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.FileUploadPreferences;

public final class zzbog extends zza implements FileUploadPreferences {
    public static final Creator<zzbog> CREATOR = new zzboh();
    private int zzaOL;
    private int zzaOM;
    private boolean zzaON;

    public zzbog(int i, int i2, boolean z) {
        this.zzaOL = i;
        this.zzaOM = i2;
        this.zzaON = z;
    }

    private static boolean zzaP(int i) {
        switch (i) {
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    private static boolean zzaQ(int i) {
        switch (i) {
            case 256:
            case 257:
                return true;
            default:
                return false;
        }
    }

    public final int getBatteryUsagePreference() {
        return !zzaQ(this.zzaOM) ? 0 : this.zzaOM;
    }

    public final int getNetworkTypePreference() {
        return !zzaP(this.zzaOL) ? 0 : this.zzaOL;
    }

    public final boolean isRoamingAllowed() {
        return this.zzaON;
    }

    public final void setBatteryUsagePreference(int i) {
        if (zzaQ(i)) {
            this.zzaOM = i;
            return;
        }
        throw new IllegalArgumentException("Invalid battery usage preference value.");
    }

    public final void setNetworkTypePreference(int i) {
        if (zzaP(i)) {
            this.zzaOL = i;
            return;
        }
        throw new IllegalArgumentException("Invalid data connection preference value.");
    }

    public final void setRoamingAllowed(boolean z) {
        this.zzaON = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaOL);
        zzd.zzc(parcel, 3, this.zzaOM);
        zzd.zza(parcel, 4, this.zzaON);
        zzd.zzI(parcel, i);
    }
}
