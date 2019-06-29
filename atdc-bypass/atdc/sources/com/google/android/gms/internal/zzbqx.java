package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzbqx extends zza {
    public static final Creator<zzbqx> CREATOR = new zzbqy();
    private DriveId zzaNt;
    private MetadataBundle zzaNu;

    public zzbqx(DriveId driveId, MetadataBundle metadataBundle) {
        this.zzaNt = driveId;
        this.zzaNu = metadataBundle;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNt, i, false);
        zzd.zza(parcel, 3, this.zzaNu, i, false);
        zzd.zzI(parcel, zze);
    }
}
