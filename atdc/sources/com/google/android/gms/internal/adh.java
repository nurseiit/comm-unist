package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class adh {
    private final ByteBuffer zzcsn;

    private adh(ByteBuffer byteBuffer) {
        this.zzcsn = byteBuffer;
        this.zzcsn.order(ByteOrder.LITTLE_ENDIAN);
    }

    private adh(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    public static adh zzI(byte[] bArr) {
        return zzc(bArr, 0, bArr.length);
    }

    public static int zzJ(byte[] bArr) {
        return zzcv(bArr.length) + bArr.length;
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        i2 += i;
        int i4 = 0;
        while (i4 < length) {
            i3 = i4 + i;
            if (i3 >= i2) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt >= 128) {
                break;
            }
            bArr[i3] = (byte) charAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        i += i4;
        while (i4 < length) {
            int i5;
            char charAt2 = charSequence.charAt(i4);
            if (charAt2 < 128 && i < i2) {
                i5 = i + 1;
                bArr[i] = (byte) charAt2;
            } else if (charAt2 < 2048 && i <= i2 - 2) {
                i5 = i + 1;
                bArr[i] = (byte) ((charAt2 >>> 6) | 960);
                i = i5 + 1;
                bArr[i5] = (byte) ((charAt2 & 63) | 128);
                i4++;
            } else if ((charAt2 < 55296 || 57343 < charAt2) && i <= i2 - 3) {
                i5 = i + 1;
                bArr[i] = (byte) ((charAt2 >>> 12) | 480);
                i = i5 + 1;
                bArr[i5] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i5 = i + 1;
                bArr[i] = (byte) ((charAt2 & 63) | 128);
            } else if (i <= i2 - 4) {
                i5 = i4 + 1;
                if (i5 != charSequence.length()) {
                    char charAt3 = charSequence.charAt(i5);
                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                        i4 = Character.toCodePoint(charAt2, charAt3);
                        i3 = i + 1;
                        bArr[i] = (byte) ((i4 >>> 18) | 240);
                        i = i3 + 1;
                        bArr[i3] = (byte) (((i4 >>> 12) & 63) | 128);
                        i3 = i + 1;
                        bArr[i] = (byte) (((i4 >>> 6) & 63) | 128);
                        i = i3 + 1;
                        bArr[i3] = (byte) ((i4 & 63) | 128);
                        i4 = i5;
                        i4++;
                    } else {
                        i4 = i5;
                    }
                }
                i4--;
                StringBuilder stringBuilder = new StringBuilder(39);
                stringBuilder.append("Unpaired surrogate at index ");
                stringBuilder.append(i4);
                throw new IllegalArgumentException(stringBuilder.toString());
            } else {
                StringBuilder stringBuilder2 = new StringBuilder(37);
                stringBuilder2.append("Failed writing ");
                stringBuilder2.append(charAt2);
                stringBuilder2.append(" at index ");
                stringBuilder2.append(i);
                throw new ArrayIndexOutOfBoundsException(stringBuilder2.toString());
            }
            i = i5;
            i4++;
        }
        return i;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
            } catch (ArrayIndexOutOfBoundsException e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            zzb(charSequence, byteBuffer);
        }
    }

    private final void zzaO(long j) throws IOException {
        while ((j & -128) != 0) {
            zzcs((((int) j) & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            j >>>= 7;
        }
        zzcs((int) j);
    }

    public static int zzaP(long j) {
        return (j & -128) == 0 ? 1 : (j & -16384) == 0 ? 2 : (j & -2097152) == 0 ? 3 : (j & -268435456) == 0 ? 4 : (j & -34359738368L) == 0 ? 5 : (j & -4398046511104L) == 0 ? 6 : (j & -562949953421312L) == 0 ? 7 : (j & -72057594037927936L) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    private final void zzaQ(long j) throws IOException {
        if (this.zzcsn.remaining() < 8) {
            throw new adi(this.zzcsn.position(), this.zzcsn.limit());
        }
        this.zzcsn.putLong(j);
    }

    private static long zzaR(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zzb(int i, adp adp) {
        i = zzct(i);
        int zzLV = adp.zzLV();
        return i + (zzcv(zzLV) + zzLV);
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x008e A:{RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006d  */
    private static int zzb(java.lang.CharSequence r8) {
        /*
        r0 = r8.length();
        r1 = 0;
        r2 = 0;
    L_0x0006:
        if (r2 >= r0) goto L_0x0013;
    L_0x0008:
        r3 = r8.charAt(r2);
        r4 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        if (r3 >= r4) goto L_0x0013;
    L_0x0010:
        r2 = r2 + 1;
        goto L_0x0006;
    L_0x0013:
        r3 = r0;
    L_0x0014:
        if (r2 >= r0) goto L_0x006b;
    L_0x0016:
        r4 = r8.charAt(r2);
        r5 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        if (r4 >= r5) goto L_0x0026;
    L_0x001e:
        r4 = 127 - r4;
        r4 = r4 >>> 31;
        r3 = r3 + r4;
        r2 = r2 + 1;
        goto L_0x0014;
    L_0x0026:
        r4 = r8.length();
    L_0x002a:
        if (r2 >= r4) goto L_0x006a;
    L_0x002c:
        r6 = r8.charAt(r2);
        if (r6 >= r5) goto L_0x0038;
    L_0x0032:
        r6 = 127 - r6;
        r6 = r6 >>> 31;
        r1 = r1 + r6;
        goto L_0x0067;
    L_0x0038:
        r1 = r1 + 2;
        r7 = 55296; // 0xd800 float:7.7486E-41 double:2.732E-319;
        if (r7 > r6) goto L_0x0067;
    L_0x003f:
        r7 = 57343; // 0xdfff float:8.0355E-41 double:2.8331E-319;
        if (r6 > r7) goto L_0x0067;
    L_0x0044:
        r6 = java.lang.Character.codePointAt(r8, r2);
        r7 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        if (r6 >= r7) goto L_0x0065;
    L_0x004c:
        r8 = new java.lang.IllegalArgumentException;
        r0 = 39;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "Unpaired surrogate at index ";
        r1.append(r0);
        r1.append(r2);
        r0 = r1.toString();
        r8.<init>(r0);
        throw r8;
    L_0x0065:
        r2 = r2 + 1;
    L_0x0067:
        r2 = r2 + 1;
        goto L_0x002a;
    L_0x006a:
        r3 = r3 + r1;
    L_0x006b:
        if (r3 >= r0) goto L_0x008e;
    L_0x006d:
        r8 = new java.lang.IllegalArgumentException;
        r0 = (long) r3;
        r2 = 4294967296; // 0x100000000 float:0.0 double:2.121995791E-314;
        r4 = r0 + r2;
        r0 = 54;
        r1 = new java.lang.StringBuilder;
        r1.<init>(r0);
        r0 = "UTF-8 length does not fit in int: ";
        r1.append(r0);
        r1.append(r4);
        r0 = r1.toString();
        r8.<init>(r0);
        throw r8;
    L_0x008e:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.adh.zzb(java.lang.CharSequence):int");
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int charAt = charSequence.charAt(i);
            if (charAt >= 128) {
                int i2;
                if (charAt < 2048) {
                    i2 = (charAt >>> 6) | 960;
                } else if (charAt < 55296 || 57343 < charAt) {
                    byteBuffer.put((byte) ((charAt >>> 12) | 480));
                    i2 = ((charAt >>> 6) & 63) | 128;
                } else {
                    i2 = i + 1;
                    if (i2 != charSequence.length()) {
                        char charAt2 = charSequence.charAt(i2);
                        if (Character.isSurrogatePair(charAt, charAt2)) {
                            i = Character.toCodePoint(charAt, charAt2);
                            byteBuffer.put((byte) ((i >>> 18) | 240));
                            byteBuffer.put((byte) (((i >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((i >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((i & 63) | 128));
                            i = i2;
                            i++;
                        } else {
                            i = i2;
                        }
                    }
                    i--;
                    StringBuilder stringBuilder = new StringBuilder(39);
                    stringBuilder.append("Unpaired surrogate at index ");
                    stringBuilder.append(i);
                    throw new IllegalArgumentException(stringBuilder.toString());
                }
                byteBuffer.put((byte) i2);
                charAt = (charAt & 63) | 128;
            }
            byteBuffer.put((byte) charAt);
            i++;
        }
    }

    public static int zzc(int i, byte[] bArr) {
        return zzct(i) + zzJ(bArr);
    }

    public static adh zzc(byte[] bArr, int i, int i2) {
        return new adh(bArr, 0, i2);
    }

    public static int zzcr(int i) {
        return i >= 0 ? zzcv(i) : 10;
    }

    private final void zzcs(int i) throws IOException {
        byte b = (byte) i;
        if (this.zzcsn.hasRemaining()) {
            this.zzcsn.put(b);
            return;
        }
        throw new adi(this.zzcsn.position(), this.zzcsn.limit());
    }

    public static int zzct(int i) {
        return zzcv(i << 3);
    }

    public static int zzcv(int i) {
        return (i & -128) == 0 ? 1 : (i & -16384) == 0 ? 2 : (-2097152 & i) == 0 ? 3 : (i & -268435456) == 0 ? 4 : 5;
    }

    public static int zzcw(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int zze(int i, long j) {
        return zzct(i) + zzaP(j);
    }

    public static int zzf(int i, long j) {
        return zzct(i) + zzaP(zzaR(j));
    }

    public static int zzhQ(String str) {
        int zzb = zzb((CharSequence) str);
        return zzcv(zzb) + zzb;
    }

    public static int zzm(int i, String str) {
        return zzct(i) + zzhQ(str);
    }

    public static int zzs(int i, int i2) {
        return zzct(i) + zzcr(i2);
    }

    public final void zzK(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.zzcsn.remaining() >= length) {
            this.zzcsn.put(bArr, 0, length);
            return;
        }
        throw new adi(this.zzcsn.position(), this.zzcsn.limit());
    }

    public final void zzLM() {
        if (this.zzcsn.remaining() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zza(int i, double d) throws IOException {
        zzt(i, 1);
        zzaQ(Double.doubleToLongBits(d));
    }

    public final void zza(int i, long j) throws IOException {
        zzt(i, 0);
        zzaO(j);
    }

    public final void zza(int i, adp adp) throws IOException {
        zzt(i, 2);
        zzb(adp);
    }

    public final void zzb(int i, long j) throws IOException {
        zzt(i, 0);
        zzaO(j);
    }

    public final void zzb(int i, byte[] bArr) throws IOException {
        zzt(i, 2);
        zzcu(bArr.length);
        zzK(bArr);
    }

    public final void zzb(adp adp) throws IOException {
        zzcu(adp.zzLU());
        adp.zza(this);
    }

    public final void zzc(int i, float f) throws IOException {
        zzt(i, 5);
        i = Float.floatToIntBits(f);
        if (this.zzcsn.remaining() < 4) {
            throw new adi(this.zzcsn.position(), this.zzcsn.limit());
        }
        this.zzcsn.putInt(i);
    }

    public final void zzc(int i, long j) throws IOException {
        zzt(i, 1);
        zzaQ(j);
    }

    public final void zzcu(int i) throws IOException {
        while ((i & -128) != 0) {
            zzcs((i & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            i >>>= 7;
        }
        zzcs(i);
    }

    public final void zzd(int i, long j) throws IOException {
        zzt(i, 0);
        zzaO(zzaR(j));
    }

    public final void zzk(int i, boolean z) throws IOException {
        zzt(i, 0);
        byte b = (byte) z;
        if (this.zzcsn.hasRemaining()) {
            this.zzcsn.put(b);
            return;
        }
        throw new adi(this.zzcsn.position(), this.zzcsn.limit());
    }

    public final void zzl(int i, String str) throws IOException {
        zzt(i, 2);
        try {
            i = zzcv(str.length());
            if (i == zzcv(str.length() * 3)) {
                int position = this.zzcsn.position();
                if (this.zzcsn.remaining() < i) {
                    throw new adi(position + i, this.zzcsn.limit());
                }
                this.zzcsn.position(position + i);
                zza((CharSequence) str, this.zzcsn);
                int position2 = this.zzcsn.position();
                this.zzcsn.position(position);
                zzcu((position2 - position) - i);
                this.zzcsn.position(position2);
                return;
            }
            zzcu(zzb((CharSequence) str));
            zza((CharSequence) str, this.zzcsn);
        } catch (BufferOverflowException e) {
            adi adi = new adi(this.zzcsn.position(), this.zzcsn.limit());
            adi.initCause(e);
            throw adi;
        }
    }

    public final void zzr(int i, int i2) throws IOException {
        zzt(i, 0);
        if (i2 >= 0) {
            zzcu(i2);
        } else {
            zzaO((long) i2);
        }
    }

    public final void zzt(int i, int i2) throws IOException {
        zzcu((i << 3) | i2);
    }
}
