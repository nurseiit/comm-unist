package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.drive.DriveSpace;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class zze extends zza {
    public static final Creator<zze> CREATOR = new zzf();
    private int zzaMS;
    private boolean zzaMT;
    private List<DriveSpace> zzaMU;
    private final Set<DriveSpace> zzaMV;
    private int zzaku;

    zze(int i, int i2, boolean z, List<DriveSpace> list) {
        this(i, i2, z, list, list == null ? null : new HashSet(list));
    }

    private zze(int i, int i2, boolean z, List<DriveSpace> list, Set<DriveSpace> set) {
        this.zzaku = i;
        this.zzaMS = i2;
        this.zzaMT = z;
        this.zzaMU = list;
        this.zzaMV = set;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zze zze = (zze) obj;
        return zzbe.equal(this.zzaMV, zze.zzaMV) && this.zzaMS == zze.zzaMS && this.zzaMT == zze.zzaMT;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaMV, Integer.valueOf(this.zzaMS), Boolean.valueOf(this.zzaMT)});
    }

    public final String toString() {
        return String.format(Locale.US, "ChangesAvailableOptions[ChangesSizeLimit=%d, Repeats=%s, Spaces=%s]", new Object[]{Integer.valueOf(this.zzaMS), Boolean.valueOf(this.zzaMT), this.zzaMU});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzaku);
        zzd.zzc(parcel, 2, this.zzaMS);
        zzd.zza(parcel, 3, this.zzaMT);
        zzd.zzc(parcel, 4, this.zzaMU, false);
        zzd.zzI(parcel, i);
    }
}
