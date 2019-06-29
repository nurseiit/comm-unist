package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.zze;
import com.google.android.gms.drive.events.zzp;
import com.google.android.gms.drive.events.zzt;

public final class zzbkr extends zza {
    public static final Creator<zzbkr> CREATOR = new zzbks();
    final int zzaJo;
    final DriveId zzaLV;
    private zze zzaMR;
    private zzt zzaNr;
    private zzp zzaNs;

    public zzbkr(int i, DriveId driveId) {
        this((DriveId) zzbo.zzu(driveId), 1, null, null, null);
    }

    zzbkr(DriveId driveId, int i, zze zze, zzt zzt, zzp zzp) {
        this.zzaLV = driveId;
        this.zzaJo = i;
        this.zzaMR = zze;
        this.zzaNr = zzt;
        this.zzaNs = zzp;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaLV, i, false);
        zzd.zzc(parcel, 3, this.zzaJo);
        zzd.zza(parcel, 4, this.zzaMR, i, false);
        zzd.zza(parcel, 5, this.zzaNr, i, false);
        zzd.zza(parcel, 6, this.zzaNs, i, false);
        zzd.zzI(parcel, zze);
    }
}
