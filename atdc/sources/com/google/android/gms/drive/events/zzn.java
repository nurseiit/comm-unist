package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.internal.zzbkp;
import java.util.Arrays;

public final class zzn extends zza implements DriveEvent {
    public static final Creator<zzn> CREATOR = new zzo();
    private zzbkp zzaNl;

    public zzn(zzbkp zzbkp) {
        this.zzaNl = zzbkp;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        return zzbe.equal(this.zzaNl, ((zzn) obj).zzaNl);
    }

    public final int getType() {
        return 8;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaNl});
    }

    public final String toString() {
        return String.format("TransferProgressEvent[%s]", new Object[]{this.zzaNl.toString()});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNl, i, false);
        zzd.zzI(parcel, zze);
    }

    public final zzbkp zzte() {
        return this.zzaNl;
    }
}
