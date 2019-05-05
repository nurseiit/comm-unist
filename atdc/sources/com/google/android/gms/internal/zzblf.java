package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.zzc;
import com.google.android.gms.drive.zzm;

public final class zzblf extends zza {
    public static final Creator<zzblf> CREATOR = new zzblg();
    private String zzaMr;
    private String zzaMu;
    private MetadataBundle zzaND;
    private Integer zzaNE;
    private DriveId zzaNF;
    private boolean zzaNG;
    private int zzaNH;
    private int zzaNI;
    private zzc zzaNv;

    public zzblf(DriveId driveId, MetadataBundle metadataBundle, int i, int i2, zzm zzm) {
        this(driveId, metadataBundle, null, Integer.valueOf(i2), zzm.zzsQ(), zzm.zzsP(), zzm.zzsR(), i, zzm.zzsT());
    }

    zzblf(DriveId driveId, MetadataBundle metadataBundle, zzc zzc, Integer num, boolean z, String str, int i, int i2, String str2) {
        if (!(zzc == null || i2 == 0)) {
            zzbo.zzb(zzc.getRequestId() == i2, (Object) "inconsistent contents reference");
        }
        if ((num == null || num.intValue() == 0) && zzc == null && i2 == 0) {
            throw new IllegalArgumentException("Need a valid contents");
        }
        this.zzaNF = (DriveId) zzbo.zzu(driveId);
        this.zzaND = (MetadataBundle) zzbo.zzu(metadataBundle);
        this.zzaNv = zzc;
        this.zzaNE = num;
        this.zzaMr = str;
        this.zzaNH = i;
        this.zzaNG = z;
        this.zzaNI = i2;
        this.zzaMu = str2;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzaNF, i, false);
        zzd.zza(parcel, 3, this.zzaND, i, false);
        zzd.zza(parcel, 4, this.zzaNv, i, false);
        zzd.zza(parcel, 5, this.zzaNE, false);
        zzd.zza(parcel, 6, this.zzaNG);
        zzd.zza(parcel, 7, this.zzaMr, false);
        zzd.zzc(parcel, 8, this.zzaNH);
        zzd.zzc(parcel, 9, this.zzaNI);
        zzd.zza(parcel, 10, this.zzaMu, false);
        zzd.zzI(parcel, zze);
    }
}
