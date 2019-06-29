package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.zzp;

public final class zzbqk extends zza {
    public static final Creator<zzbqk> CREATOR = new zzbql();
    private int zzaJo;
    private DriveId zzaLV;
    private zzp zzaNs;

    public zzbqk(DriveId driveId, int i) {
        this(driveId, i, null);
    }

    zzbqk(DriveId driveId, int i, zzp zzp) {
        this.zzaLV = driveId;
        this.zzaJo = i;
        this.zzaNs = zzp;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaLV, i, false);
        zzd.zzc(parcel, 3, this.zzaJo);
        zzd.zza(parcel, 4, this.zzaNs, i, false);
        zzd.zzI(parcel, zze);
    }
}
