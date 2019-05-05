package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import java.util.Locale;

public final class ChangeEvent extends zza implements ResourceEvent {
    public static final Creator<ChangeEvent> CREATOR = new zza();
    private DriveId zzaLV;
    private int zzaMQ;

    public ChangeEvent(DriveId driveId, int i) {
        this.zzaLV = driveId;
        this.zzaMQ = i;
    }

    public final DriveId getDriveId() {
        return this.zzaLV;
    }

    public final int getType() {
        return 1;
    }

    public final boolean hasBeenDeleted() {
        return (this.zzaMQ & 4) != 0;
    }

    public final boolean hasContentChanged() {
        return (this.zzaMQ & 2) != 0;
    }

    public final boolean hasMetadataChanged() {
        return (this.zzaMQ & 1) != 0;
    }

    public final String toString() {
        return String.format(Locale.US, "ChangeEvent [id=%s,changeFlags=%x]", new Object[]{this.zzaLV, Integer.valueOf(this.zzaMQ)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaLV, i, false);
        zzd.zzc(parcel, 3, this.zzaMQ);
        zzd.zzI(parcel, zze);
    }
}
