package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.drive.DriveId;
import java.util.Arrays;

public final class zzbko {
    private final int zzLe;
    private final DriveId zzaLV;
    private final int zzaNm;

    public zzbko(zzbkp zzbkp) {
        this.zzaLV = zzbkp.zzaLV;
        this.zzaNm = zzbkp.zzaNm;
        this.zzLe = zzbkp.zzLe;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzbko zzbko = (zzbko) obj;
        return zzbe.equal(this.zzaLV, zzbko.zzaLV) && this.zzaNm == zzbko.zzaNm && this.zzLe == zzbko.zzLe;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaLV, Integer.valueOf(this.zzaNm), Integer.valueOf(this.zzLe)});
    }

    public final String toString() {
        return String.format("FileTransferState[TransferType: %d, DriveId: %s, status: %d]", new Object[]{Integer.valueOf(this.zzaNm), this.zzaLV, Integer.valueOf(this.zzLe)});
    }
}
