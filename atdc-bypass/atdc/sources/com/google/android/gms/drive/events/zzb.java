package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import java.util.Locale;

public final class zzb extends zza implements DriveEvent {
    public static final Creator<zzb> CREATOR = new zzc();
    private zze zzaMR;
    private String zzakh;

    public zzb(String str, zze zze) {
        this.zzakh = str;
        this.zzaMR = zze;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzb zzb = (zzb) obj;
        return zzbe.equal(this.zzaMR, zzb.zzaMR) && zzbe.equal(this.zzakh, zzb.zzakh);
    }

    public final int getType() {
        return 4;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaMR, this.zzakh});
    }

    public final String toString() {
        return String.format(Locale.US, "ChangesAvailableEvent [changesAvailableOptions=%s]", new Object[]{this.zzaMR});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzakh, false);
        zzd.zza(parcel, 3, this.zzaMR, i, false);
        zzd.zzI(parcel, zze);
    }
}
