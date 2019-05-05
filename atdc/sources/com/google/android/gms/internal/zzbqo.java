package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import java.util.List;

public final class zzbqo extends zza {
    public static final Creator<zzbqo> CREATOR = new zzbqp();
    private DriveId zzaPt;
    private List<DriveId> zzaPu;

    public zzbqo(DriveId driveId, List<DriveId> list) {
        this.zzaPt = driveId;
        this.zzaPu = list;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaPt, i, false);
        zzd.zzc(parcel, 3, this.zzaPu, false);
        zzd.zzI(parcel, zze);
    }
}
