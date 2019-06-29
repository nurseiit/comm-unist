package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;

public final class zzbqb extends zza {
    public static final Creator<zzbqb> CREATOR = new zzbqc();
    private int zzaLU;
    private DriveId zzaNt;
    private int zzaPo;

    public zzbqb(DriveId driveId, int i, int i2) {
        this.zzaNt = driveId;
        this.zzaLU = i;
        this.zzaPo = i2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNt, i, false);
        zzd.zzc(parcel, 3, this.zzaLU);
        zzd.zzc(parcel, 4, this.zzaPo);
        zzd.zzI(parcel, zze);
    }
}
