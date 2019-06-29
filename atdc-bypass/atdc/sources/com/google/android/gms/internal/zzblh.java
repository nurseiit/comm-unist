package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzblh extends zza {
    public static final Creator<zzblh> CREATOR = new zzbli();
    private MetadataBundle zzaND;
    private DriveId zzaNF;

    public zzblh(DriveId driveId, MetadataBundle metadataBundle) {
        this.zzaNF = (DriveId) zzbo.zzu(driveId);
        this.zzaND = (MetadataBundle) zzbo.zzu(metadataBundle);
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNF, i, false);
        zzd.zza(parcel, 3, this.zzaND, i, false);
        zzd.zzI(parcel, zze);
    }
}
