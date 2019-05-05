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

public final class zzt extends zza {
    public static final Creator<zzt> CREATOR = new zzu();
    private List<DriveSpace> zzaMU;
    private final Set<DriveSpace> zzaMV;

    zzt(List<DriveSpace> list) {
        this(list, list == null ? null : new HashSet(list));
    }

    private zzt(List<DriveSpace> list, Set<DriveSpace> set) {
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
        return zzbe.equal(this.zzaMV, ((zzt) obj).zzaMV);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaMV});
    }

    public final String toString() {
        return String.format(Locale.US, "TransferStateOptions[Spaces=%s]", new Object[]{this.zzaMU});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaMU, false);
        zzd.zzI(parcel, i);
    }
}
