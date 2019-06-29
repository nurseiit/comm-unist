package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import java.io.IOException;

public final class adg {
    private final byte[] buffer;
    private int zzcse;
    private int zzcsf;
    private int zzcsg;
    private int zzcsh;
    private int zzcsi;
    private int zzcsj = Integer.MAX_VALUE;
    private int zzcsk;
    private int zzcsl = 64;
    private int zzcsm = 67108864;

    private adg(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzcse = i;
        this.zzcsf = i2 + i;
        this.zzcsh = i;
    }

    public static adg zzH(byte[] bArr) {
        return zzb(bArr, 0, bArr.length);
    }

    private final void zzLJ() {
        this.zzcsf += this.zzcsg;
        int i = this.zzcsf;
        if (i > this.zzcsj) {
            this.zzcsg = i - this.zzcsj;
            this.zzcsf -= this.zzcsg;
            return;
        }
        this.zzcsg = 0;
    }

    private final byte zzLL() throws IOException {
        if (this.zzcsh == this.zzcsf) {
            throw ado.zzLQ();
        }
        byte[] bArr = this.buffer;
        int i = this.zzcsh;
        this.zzcsh = i + 1;
        return bArr[i];
    }

    public static adg zzb(byte[] bArr, int i, int i2) {
        return new adg(bArr, 0, i2);
    }

    private final void zzcq(int i) throws IOException {
        if (i < 0) {
            throw ado.zzLR();
        } else if (this.zzcsh + i > this.zzcsj) {
            zzcq(this.zzcsj - this.zzcsh);
            throw ado.zzLQ();
        } else if (i <= this.zzcsf - this.zzcsh) {
            this.zzcsh += i;
        } else {
            throw ado.zzLQ();
        }
    }

    public final int getPosition() {
        return this.zzcsh - this.zzcse;
    }

    public final byte[] readBytes() throws IOException {
        int zzLF = zzLF();
        if (zzLF < 0) {
            throw ado.zzLR();
        } else if (zzLF == 0) {
            return ads.zzcsI;
        } else {
            if (zzLF > this.zzcsf - this.zzcsh) {
                throw ado.zzLQ();
            }
            byte[] bArr = new byte[zzLF];
            System.arraycopy(this.buffer, this.zzcsh, bArr, 0, zzLF);
            this.zzcsh += zzLF;
            return bArr;
        }
    }

    public final String readString() throws IOException {
        int zzLF = zzLF();
        if (zzLF < 0) {
            throw ado.zzLR();
        } else if (zzLF > this.zzcsf - this.zzcsh) {
            throw ado.zzLQ();
        } else {
            String str = new String(this.buffer, this.zzcsh, zzLF, adn.UTF_8);
            this.zzcsh += zzLF;
            return str;
        }
    }

    public final int zzLA() throws IOException {
        if (this.zzcsh == this.zzcsf) {
            this.zzcsi = 0;
            return 0;
        }
        this.zzcsi = zzLF();
        if (this.zzcsi != 0) {
            return this.zzcsi;
        }
        throw new ado("Protocol message contained an invalid tag (zero).");
    }

    public final long zzLB() throws IOException {
        return zzLG();
    }

    public final int zzLC() throws IOException {
        return zzLF();
    }

    public final boolean zzLD() throws IOException {
        return zzLF() != 0;
    }

    public final long zzLE() throws IOException {
        long zzLG = zzLG();
        return (zzLG >>> 1) ^ (-(zzLG & 1));
    }

    public final int zzLF() throws IOException {
        byte zzLL = zzLL();
        if (zzLL >= (byte) 0) {
            return zzLL;
        }
        int i;
        int i2 = zzLL & TransportMediator.KEYCODE_MEDIA_PAUSE;
        byte zzLL2 = zzLL();
        if (zzLL2 >= (byte) 0) {
            i = zzLL2 << 7;
        } else {
            i2 |= (zzLL2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 7;
            zzLL2 = zzLL();
            if (zzLL2 >= (byte) 0) {
                i = zzLL2 << 14;
            } else {
                i2 |= (zzLL2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 14;
                zzLL2 = zzLL();
                if (zzLL2 >= (byte) 0) {
                    i = zzLL2 << 21;
                } else {
                    i2 |= (zzLL2 & TransportMediator.KEYCODE_MEDIA_PAUSE) << 21;
                    zzLL2 = zzLL();
                    i2 |= zzLL2 << 28;
                    if (zzLL2 >= (byte) 0) {
                        return i2;
                    }
                    for (i = 0; i < 5; i++) {
                        if (zzLL() >= (byte) 0) {
                            return i2;
                        }
                    }
                    throw ado.zzLS();
                }
            }
        }
        return i2 | i;
    }

    public final long zzLG() throws IOException {
        int i = 0;
        long j = 0;
        while (i < 64) {
            byte zzLL = zzLL();
            long j2 = j | (((long) (zzLL & TransportMediator.KEYCODE_MEDIA_PAUSE)) << i);
            if ((zzLL & 128) == 0) {
                return j2;
            }
            i += 7;
            j = j2;
        }
        throw ado.zzLS();
    }

    public final int zzLH() throws IOException {
        return (((zzLL() & 255) | ((zzLL() & 255) << 8)) | ((zzLL() & 255) << 16)) | ((zzLL() & 255) << 24);
    }

    public final long zzLI() throws IOException {
        return (((((((((long) zzLL()) & 255) | ((((long) zzLL()) & 255) << 8)) | ((((long) zzLL()) & 255) << 16)) | ((((long) zzLL()) & 255) << 24)) | ((((long) zzLL()) & 255) << 32)) | ((((long) zzLL()) & 255) << 40)) | ((((long) zzLL()) & 255) << 48)) | ((((long) zzLL()) & 255) << 56);
    }

    public final int zzLK() {
        if (this.zzcsj == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzcsj - this.zzcsh;
    }

    public final void zza(adp adp) throws IOException {
        int zzLF = zzLF();
        if (this.zzcsk >= this.zzcsl) {
            throw ado.zzLT();
        }
        zzLF = zzcn(zzLF);
        this.zzcsk++;
        adp.zza(this);
        zzcl(0);
        this.zzcsk--;
        zzco(zzLF);
    }

    public final void zza(adp adp, int i) throws IOException {
        if (this.zzcsk >= this.zzcsl) {
            throw ado.zzLT();
        }
        this.zzcsk++;
        adp.zza(this);
        zzcl((i << 3) | 4);
        this.zzcsk--;
    }

    public final void zzcl(int i) throws ado {
        if (this.zzcsi != i) {
            throw new ado("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzcm(int i) throws IOException {
        switch (i & 7) {
            case 0:
                zzLF();
                return true;
            case 1:
                zzLI();
                return true;
            case 2:
                zzcq(zzLF());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzLH();
                return true;
            default:
                throw new ado("Protocol message tag had invalid wire type.");
        }
        int zzLA;
        do {
            zzLA = zzLA();
            if (zzLA != 0) {
            }
            zzcl(((i >>> 3) << 3) | 4);
            return true;
        } while (zzcm(zzLA));
        zzcl(((i >>> 3) << 3) | 4);
        return true;
    }

    public final int zzcn(int i) throws ado {
        if (i < 0) {
            throw ado.zzLR();
        }
        i += this.zzcsh;
        int i2 = this.zzcsj;
        if (i > i2) {
            throw ado.zzLQ();
        }
        this.zzcsj = i;
        zzLJ();
        return i2;
    }

    public final void zzco(int i) {
        this.zzcsj = i;
        zzLJ();
    }

    public final void zzcp(int i) {
        zzq(i, this.zzcsi);
    }

    public final byte[] zzp(int i, int i2) {
        if (i2 == 0) {
            return ads.zzcsI;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzcse + i, bArr, 0, i2);
        return bArr;
    }

    /* Access modifiers changed, original: final */
    public final void zzq(int i, int i2) {
        if (i > this.zzcsh - this.zzcse) {
            int i3 = this.zzcsh - this.zzcse;
            StringBuilder stringBuilder = new StringBuilder(50);
            stringBuilder.append("Position ");
            stringBuilder.append(i);
            stringBuilder.append(" is beyond current ");
            stringBuilder.append(i3);
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (i < 0) {
            StringBuilder stringBuilder2 = new StringBuilder(24);
            stringBuilder2.append("Bad position ");
            stringBuilder2.append(i);
            throw new IllegalArgumentException(stringBuilder2.toString());
        } else {
            this.zzcsh = this.zzcse + i;
            this.zzcsi = i2;
        }
    }
}
