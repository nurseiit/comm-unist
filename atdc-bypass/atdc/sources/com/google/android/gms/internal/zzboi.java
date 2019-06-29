package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;

public final class zzboi extends zza {
    public static final Creator<zzboi> CREATOR = new zzboj();
    private DriveId zzaNt;
    private boolean zzaOO;

    public zzboi(DriveId driveId, boolean z) {
        this.zzaNt = driveId;
        this.zzaOO = z;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNt, i, false);
        zzd.zza(parcel, 3, this.zzaOO);
        zzd.zzI(parcel, zze);
    }
}
