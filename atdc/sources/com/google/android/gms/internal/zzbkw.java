package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.zzc;
import com.google.android.gms.drive.zzp;

public final class zzbkw extends zza {
    public static final Creator<zzbkw> CREATOR = new zzbkx();
    private String zzaMr;
    private boolean zzaMs;
    private boolean zzaMw;
    private DriveId zzaNt;
    private MetadataBundle zzaNu;
    private zzc zzaNv;
    private int zzaNw;
    private int zzaNx;
    private boolean zzaNy;

    public zzbkw(DriveId driveId, MetadataBundle metadataBundle, int i, boolean z, zzp zzp) {
        this(driveId, metadataBundle, null, zzp.zzsQ(), zzp.zzsP(), zzp.zzsR(), i, z, zzp.zzsV());
    }

    zzbkw(DriveId driveId, MetadataBundle metadataBundle, zzc zzc, boolean z, String str, int i, int i2, boolean z2, boolean z3) {
        this.zzaNt = driveId;
        this.zzaNu = metadataBundle;
        this.zzaNv = zzc;
        this.zzaMs = z;
        this.zzaMr = str;
        this.zzaNw = i;
        this.zzaNx = i2;
        this.zzaNy = z2;
        this.zzaMw = z3;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNt, i, false);
        zzd.zza(parcel, 3, this.zzaNu, i, false);
        zzd.zza(parcel, 4, this.zzaNv, i, false);
        zzd.zza(parcel, 5, this.zzaMs);
        zzd.zza(parcel, 6, this.zzaMr, false);
        zzd.zzc(parcel, 7, this.zzaNw);
        zzd.zzc(parcel, 8, this.zzaNx);
        zzd.zza(parcel, 9, this.zzaNy);
        zzd.zza(parcel, 10, this.zzaMw);
        zzd.zzI(parcel, zze);
    }
}
