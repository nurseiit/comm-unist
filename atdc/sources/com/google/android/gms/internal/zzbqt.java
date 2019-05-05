package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;

public final class zzbqt extends zza {
    public static final Creator<zzbqt> CREATOR = new zzbqu();
    private DriveId zzaNt;

    public zzbqt(DriveId driveId) {
        this.zzaNt = driveId;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNt, i, false);
        zzd.zzI(parcel, zze);
    }
}
