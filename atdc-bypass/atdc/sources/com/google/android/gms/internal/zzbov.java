package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;

public final class zzbov extends zza {
    public static final Creator<zzbov> CREATOR = new zzbow();
    private DriveId zzaOQ;

    public zzbov(DriveId driveId) {
        this.zzaOQ = driveId;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaOQ, i, false);
        zzd.zzI(parcel, zze);
    }
}
