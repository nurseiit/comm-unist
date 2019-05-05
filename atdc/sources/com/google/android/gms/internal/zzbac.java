package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class zzbac {
    private static long zza(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        j4 = (j2 ^ (j4 ^ (j4 >>> 47))) * j3;
        return (j4 ^ (j4 >>> 47)) * j3;
    }

    private static long zza(byte[] bArr, int i, int i2) {
        byte[] bArr2 = bArr;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        int i3 = 0;
        long zzc = zzc(bArr2, 0) + 95310865018149119L;
        int i4 = i2 - 1;
        int i5 = ((i4 / 64) << 6) + 0;
        int i6 = i4 & 63;
        int i7 = (i5 + i6) - 63;
        long j = 2480279821605975764L;
        long j2 = 1390051526045402406L;
        int i8 = i;
        while (true) {
            long rotateRight = (Long.rotateRight(((zzc + j) + jArr[i3]) + zzc(bArr2, i8 + 8), 37) * -5435081209227447693L) ^ jArr2[1];
            byte[] bArr3 = bArr;
            long rotateRight2 = (Long.rotateRight((j + jArr[1]) + zzc(bArr2, i8 + 48), 42) * -5435081209227447693L) + (jArr[0] + zzc(bArr3, i8 + 40));
            long rotateRight3 = Long.rotateRight(j2 + jArr2[0], 33) * -5435081209227447693L;
            zza(bArr3, i8, jArr[1] * -5435081209227447693L, rotateRight + jArr2[0], jArr);
            zza(bArr3, i8 + 32, rotateRight3 + jArr2[1], rotateRight2 + zzc(bArr3, i8 + 16), jArr2);
            i8 += 64;
            if (i8 == i5) {
                long j3 = ((rotateRight & 255) << 1) - 5435081209227447693L;
                jArr2[0] = jArr2[0] + ((long) i6);
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long rotateRight4 = (Long.rotateRight(((rotateRight3 + rotateRight2) + jArr[0]) + zzc(bArr3, i7 + 8), 37) * j3) ^ (jArr2[1] * 9);
                long rotateRight5 = (Long.rotateRight((rotateRight2 + jArr[1]) + zzc(bArr3, i7 + 48), 42) * j3) + ((jArr[0] * 9) + zzc(bArr3, i7 + 40));
                long rotateRight6 = Long.rotateRight(rotateRight + jArr2[0], 33) * j3;
                zza(bArr3, i7, jArr[1] * j3, rotateRight4 + jArr2[0], jArr);
                zza(bArr3, i7 + 32, rotateRight6 + jArr2[1], rotateRight5 + zzc(bArr3, i7 + 16), jArr2);
                long j4 = j3;
                return zza((zza(jArr[0], jArr2[0], j4) + ((rotateRight5 ^ (rotateRight5 >>> 47)) * -4348849565147123417L)) + rotateRight4, zza(jArr[1], jArr2[1], j4) + rotateRight6, j4);
            }
            bArr2 = bArr3;
            j = rotateRight2;
            zzc = rotateRight3;
            j2 = rotateRight;
            i3 = 0;
        }
    }

    private static void zza(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long zzc = zzc(bArr, i);
        long zzc2 = zzc(bArr, i + 8);
        long zzc3 = zzc(bArr, i + 16);
        long zzc4 = zzc(bArr, i + 24);
        long j3 = j + zzc;
        zzc = (j3 + zzc2) + zzc3;
        zzc2 = Long.rotateRight((j2 + j3) + zzc4, 21) + Long.rotateRight(zzc, 44);
        jArr[0] = zzc + zzc4;
        jArr[1] = zzc2 + j3;
    }

    private static int zzb(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8)) | ((bArr[i + 2] & 255) << 16));
    }

    private static long zzc(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    public static long zzf(byte[] bArr) {
        byte[] bArr2 = bArr;
        int length = bArr2.length;
        long zzc;
        long zzc2;
        long zzc3;
        long zzc4;
        if (length < 0 || length > bArr2.length) {
            StringBuilder stringBuilder = new StringBuilder(67);
            stringBuilder.append("Out of bound index with offput: 0 and length: ");
            stringBuilder.append(length);
            throw new IndexOutOfBoundsException(stringBuilder.toString());
        } else if (length <= 32) {
            if (length > 16) {
                long j = ((long) (length << 1)) - 7286425919675154353L;
                zzc = zzc(bArr2, 0) * -5435081209227447693L;
                zzc2 = zzc(bArr2, 8);
                length += 0;
                zzc3 = zzc(bArr2, length - 8) * j;
                return zza((Long.rotateRight(zzc + zzc2, 43) + Long.rotateRight(zzc3, 30)) + (zzc(bArr2, length - 16) * -7286425919675154353L), (zzc + Long.rotateRight(zzc2 - 7286425919675154353L, 18)) + zzc3, j);
            } else if (length >= 8) {
                long j2 = ((long) (length << 1)) - 7286425919675154353L;
                zzc4 = zzc(bArr2, 0) - 7286425919675154353L;
                long zzc5 = zzc(bArr2, (length + 0) - 8);
                return zza((Long.rotateRight(zzc5, 37) * j2) + zzc4, (Long.rotateRight(zzc4, 25) + zzc5) * j2, j2);
            } else if (length >= 4) {
                return zza(((long) length) + ((((long) zzb(bArr2, 0)) & 4294967295L) << 3), ((long) zzb(bArr2, (length + 0) - 4)) & 4294967295L, ((long) (length << 1)) - 7286425919675154353L);
            } else if (length <= 0) {
                return -7286425919675154353L;
            } else {
                zzc4 = (((long) ((bArr2[0] & 255) + ((bArr2[(length >> 1) + 0] & 255) << 8))) * -7286425919675154353L) ^ (((long) (length + ((bArr2[(length - 1) + 0] & 255) << 2))) * -4348849565147123417L);
                return (zzc4 ^ (zzc4 >>> 47)) * -7286425919675154353L;
            }
        } else if (length > 64) {
            return zza(bArr2, 0, length);
        } else {
            long j3 = ((long) (length << 1)) - 7286425919675154353L;
            long zzc6 = zzc(bArr2, 0) * -7286425919675154353L;
            zzc2 = zzc(bArr2, 8);
            length += 0;
            zzc3 = zzc(bArr2, length - 8) * j3;
            zzc = (Long.rotateRight(zzc6 + zzc2, 43) + Long.rotateRight(zzc3, 30)) + (zzc(bArr2, length - 16) * -7286425919675154353L);
            zzc4 = zza(zzc, (zzc6 + Long.rotateRight(zzc2 - 7286425919675154353L, 18)) + zzc3, j3);
            long zzc7 = zzc(bArr2, 16) * j3;
            zzc2 = zzc(bArr2, 24);
            zzc = (zzc + zzc(bArr2, length - 32)) * j3;
            return zza((Long.rotateRight(zzc7 + zzc2, 43) + Long.rotateRight(zzc, 30)) + ((zzc4 + zzc(bArr2, length - 24)) * j3), (zzc7 + Long.rotateRight(zzc2 + zzc6, 18)) + zzc, j3);
        }
    }
}
