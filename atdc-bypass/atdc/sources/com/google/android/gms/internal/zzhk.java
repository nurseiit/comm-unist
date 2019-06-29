package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

@zzzn
public final class zzhk extends zzhf {
    private MessageDigest zzzd;

    public final byte[] zzy(String str) {
        byte[] array;
        String[] split = str.split(" ");
        int i = 4;
        int i2;
        if (split.length == 1) {
            int zzA = zzhj.zzA(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zzA);
            array = allocate.array();
        } else if (split.length < 5) {
            array = new byte[(split.length << 1)];
            for (i2 = 0; i2 < split.length; i2++) {
                int zzA2 = zzhj.zzA(split[i2]);
                zzA2 = (zzA2 >> 16) ^ (65535 & zzA2);
                byte[] bArr = new byte[]{(byte) zzA2, (byte) (zzA2 >> 8)};
                zzA2 = i2 << 1;
                array[zzA2] = bArr[0];
                array[zzA2 + 1] = bArr[1];
            }
        } else {
            array = new byte[split.length];
            for (int i3 = 0; i3 < split.length; i3++) {
                i2 = zzhj.zzA(split[i3]);
                array[i3] = (byte) ((i2 >> 24) ^ (((i2 & 255) ^ ((i2 >> 8) & 255)) ^ ((i2 >> 16) & 255)));
            }
        }
        this.zzzd = zzcW();
        synchronized (this.mLock) {
            if (this.zzzd == null) {
                array = new byte[0];
                return array;
            }
            this.zzzd.reset();
            this.zzzd.update(array);
            array = this.zzzd.digest();
            if (array.length <= 4) {
                i = array.length;
            }
            byte[] bArr2 = new byte[i];
            System.arraycopy(array, 0, bArr2, 0, bArr2.length);
            return bArr2;
        }
    }
}
