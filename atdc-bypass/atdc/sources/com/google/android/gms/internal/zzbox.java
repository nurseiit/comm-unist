package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.zza;
import com.google.android.gms.drive.zzv;
import java.util.List;

public final class zzbox extends zzv {
    public static final Creator<zzbox> CREATOR = new zzboy();
    private DataHolder zzaOR;
    private List<DriveId> zzaOS;
    private zza zzaOT;
    private boolean zzaOU;

    public zzbox(DataHolder dataHolder, List<DriveId> list, zza zza, boolean z) {
        this.zzaOR = dataHolder;
        this.zzaOS = list;
        this.zzaOT = zza;
        this.zzaOU = z;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzJ(Parcel parcel, int i) {
        i |= 1;
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaOR, i, false);
        zzd.zzc(parcel, 3, this.zzaOS, false);
        zzd.zza(parcel, 4, this.zzaOT, i, false);
        zzd.zza(parcel, 5, this.zzaOU);
        zzd.zzI(parcel, zze);
    }
}
