package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.drive.DriveId;
import java.util.Arrays;

public final class zzbkp extends zza {
    public static final Creator<zzbkp> CREATOR = new zzbkq();
    final int zzLe;
    final DriveId zzaLV;
    final int zzaNm;
    final long zzaNp;
    final long zzaNq;

    public zzbkp(int i, DriveId driveId, int i2, long j, long j2) {
        this.zzaNm = i;
        this.zzaLV = driveId;
        this.zzLe = i2;
        this.zzaNp = j;
        this.zzaNq = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzbkp zzbkp = (zzbkp) obj;
        return this.zzaNm == zzbkp.zzaNm && zzbe.equal(this.zzaLV, zzbkp.zzaLV) && this.zzLe == zzbkp.zzLe && this.zzaNp == zzbkp.zzaNp && this.zzaNq == zzbkp.zzaNq;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzaNm), this.zzaLV, Integer.valueOf(this.zzLe), Long.valueOf(this.zzaNp), Long.valueOf(this.zzaNq)});
    }

    public final String toString() {
        return String.format("TransferProgressData[TransferType: %d, DriveId: %s, status: %d, bytes transferred: %d, total bytes: %d]", new Object[]{Integer.valueOf(this.zzaNm), this.zzaLV, Integer.valueOf(this.zzLe), Long.valueOf(this.zzaNp), Long.valueOf(this.zzaNq)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 2, this.zzaNm);
        zzd.zza(parcel, 3, this.zzaLV, i, false);
        zzd.zzc(parcel, 4, this.zzLe);
        zzd.zza(parcel, 5, this.zzaNp);
        zzd.zza(parcel, 6, this.zzaNq);
        zzd.zzI(parcel, zze);
    }
}
