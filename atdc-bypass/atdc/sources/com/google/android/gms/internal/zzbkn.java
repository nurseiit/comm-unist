package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.drive.events.zzk;
import java.util.Arrays;

public final class zzbkn {
    private final zzk zzaNo;
    private final long zzaNp;
    private final long zzaNq;

    public zzbkn(zzbkp zzbkp) {
        this.zzaNo = new zzbko(zzbkp);
        this.zzaNp = zzbkp.zzaNp;
        this.zzaNq = zzbkp.zzaNq;
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzbkn zzbkn = (zzbkn) obj;
        return zzbe.equal(this.zzaNo, zzbkn.zzaNo) && this.zzaNp == zzbkn.zzaNp && this.zzaNq == zzbkn.zzaNq;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzaNq), Long.valueOf(this.zzaNp), Long.valueOf(this.zzaNq)});
    }

    public final String toString() {
        return String.format("FileTransferProgress[FileTransferState: %s, BytesTransferred: %d, TotalBytes: %d]", new Object[]{this.zzaNo.toString(), Long.valueOf(this.zzaNp), Long.valueOf(this.zzaNq)});
    }
}
