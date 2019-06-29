package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzbld extends zza {
    public static final Creator<zzbld> CREATOR = new zzble();
    private int zzaLT;
    private DriveId zzaME;
    private MetadataBundle zzaND;
    private Integer zzaNE;
    private String zzaoy;

    public zzbld(MetadataBundle metadataBundle, int i, String str, DriveId driveId, Integer num) {
        this.zzaND = metadataBundle;
        this.zzaLT = i;
        this.zzaoy = str;
        this.zzaME = driveId;
        this.zzaNE = num;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaND, i, false);
        zzd.zzc(parcel, 3, this.zzaLT);
        zzd.zza(parcel, 4, this.zzaoy, false);
        zzd.zza(parcel, 5, this.zzaME, i, false);
        zzd.zza(parcel, 6, this.zzaNE, false);
        zzd.zzI(parcel, zze);
    }
}
