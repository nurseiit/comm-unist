package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.query.internal.FilterHolder;

public final class zzbqe extends zza {
    public static final Creator<zzbqe> CREATOR = new zzbqf();
    private String[] zzaMC;
    private DriveId zzaME;
    private FilterHolder zzaPq;
    private String zzaoy;

    public zzbqe(String str, String[] strArr, DriveId driveId, FilterHolder filterHolder) {
        this.zzaoy = str;
        this.zzaMC = strArr;
        this.zzaME = driveId;
        this.zzaPq = filterHolder;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaoy, false);
        zzd.zza(parcel, 3, this.zzaMC, false);
        zzd.zza(parcel, 4, this.zzaME, i, false);
        zzd.zza(parcel, 5, this.zzaPq, i, false);
        zzd.zzI(parcel, zze);
    }
}
