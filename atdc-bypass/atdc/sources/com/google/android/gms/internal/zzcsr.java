package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;

public class zzcsr {
    private static final String TAG = "zzcsr";
    private int zzbBK;
    private int[] zzbCi;

    public zzcsr(DataHolder dataHolder, int i) {
        if (dataHolder != null && dataHolder.getStatusCode() == 0) {
            int[] zzs = zzs(dataHolder.zzg("", i, dataHolder.zzat(i)));
            if (zzs != null && zzs.length >= 3 && zzs[0] == 1 && zzs[1] == 1936614772) {
                this.zzbCi = new int[zzs.length];
                System.arraycopy(zzs, 0, this.zzbCi, 0, zzs.length);
                this.zzbBK = this.zzbCi[2];
            }
        }
    }

    private static int[] zzs(byte[] bArr) {
        if (bArr == null || bArr.length % 4 != 0) {
            return null;
        }
        int[] iArr = new int[(bArr.length / 4)];
        for (int i = 0; i < bArr.length; i += 4) {
            iArr[i / 4] = (int) ((((((long) bArr[i + 3]) & 255) | ((((long) bArr[i + 2]) & 255) << 8)) | ((((long) bArr[i + 1]) & 255) << 16)) | ((((long) bArr[i]) & 255) << 24));
        }
        return iArr;
    }

    public final int getThreatType() {
        return this.zzbBK;
    }

    public final boolean zzr(byte[] bArr) {
        if (this.zzbCi == null) {
            return false;
        }
        int i;
        int i2 = 3;
        long j = ((((((long) bArr[3]) & 255) | ((((long) bArr[2]) & 255) << 8)) | ((((long) bArr[1]) & 255) << 16)) | ((((long) bArr[0]) & 255) << 24)) & 4294967295L;
        int[] iArr = this.zzbCi;
        int length = iArr.length - 1;
        while (i2 <= length) {
            i = ((length - i2) / 2) + i2;
            long j2 = ((long) iArr[i]) & 4294967295L;
            if (j2 == j) {
                break;
            } else if (j2 < j) {
                i2 = i + 1;
            } else {
                length = i - 1;
            }
        }
        i = -1;
        return i != -1;
    }
}
