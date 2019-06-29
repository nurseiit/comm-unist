package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.DriveFile;

public final class zzbla extends zza {
    public static final Creator<zzbla> CREATOR = new zzblb();
    private int zzaLU;

    public zzbla(int i) {
        boolean z = i == DriveFile.MODE_WRITE_ONLY || i == DriveFile.MODE_READ_WRITE;
        zzbo.zzb(z, (Object) "Cannot create a new read-only contents!");
        this.zzaLU = i;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaLU);
        zzd.zzI(parcel, i);
    }
}
