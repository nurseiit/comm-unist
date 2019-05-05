package com.bumptech.glide.gifencoder;

import android.support.v4.app.FrameMetricsAggregator;
import android.support.v4.media.TransportMediator;
import com.google.android.gms.location.places.Place;
import java.io.IOException;
import java.io.OutputStream;

class LZWEncoder {
    static final int BITS = 12;
    private static final int EOF = -1;
    static final int HSIZE = 5003;
    int ClearCode;
    int EOFCode;
    int a_count;
    byte[] accum = new byte[256];
    boolean clear_flg = false;
    int[] codetab = new int[5003];
    private int curPixel;
    int cur_accum = 0;
    int cur_bits = 0;
    int free_ent = 0;
    int g_init_bits;
    int hsize = 5003;
    int[] htab = new int[5003];
    private int imgH;
    private int imgW;
    private int initCodeSize;
    int[] masks = new int[]{0, 1, 3, 7, 15, 31, 63, TransportMediator.KEYCODE_MEDIA_PAUSE, 255, FrameMetricsAggregator.EVERY_DURATION, Place.TYPE_SUBLOCALITY_LEVEL_1, 2047, 4095, 8191, 16383, 32767, 65535};
    int maxbits = 12;
    int maxcode;
    int maxmaxcode = 4096;
    int n_bits;
    private byte[] pixAry;
    private int remaining;

    /* Access modifiers changed, original: final */
    public final int MAXCODE(int i) {
        return (1 << i) - 1;
    }

    LZWEncoder(int i, int i2, byte[] bArr, int i3) {
        this.imgW = i;
        this.imgH = i2;
        this.pixAry = bArr;
        this.initCodeSize = Math.max(2, i3);
    }

    /* Access modifiers changed, original: 0000 */
    public void char_out(byte b, OutputStream outputStream) throws IOException {
        byte[] bArr = this.accum;
        int i = this.a_count;
        this.a_count = i + 1;
        bArr[i] = b;
        if (this.a_count >= 254) {
            flush_char(outputStream);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void cl_block(OutputStream outputStream) throws IOException {
        cl_hash(this.hsize);
        this.free_ent = this.ClearCode + 2;
        this.clear_flg = true;
        output(this.ClearCode, outputStream);
    }

    /* Access modifiers changed, original: 0000 */
    public void cl_hash(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.htab[i2] = -1;
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0082  */
    public void compress(int r9, java.io.OutputStream r10) throws java.io.IOException {
        /*
        r8 = this;
        r8.g_init_bits = r9;
        r0 = 0;
        r8.clear_flg = r0;
        r1 = r8.g_init_bits;
        r8.n_bits = r1;
        r1 = r8.n_bits;
        r1 = r8.MAXCODE(r1);
        r8.maxcode = r1;
        r1 = 1;
        r9 = r9 - r1;
        r9 = r1 << r9;
        r8.ClearCode = r9;
        r9 = r8.ClearCode;
        r9 = r9 + r1;
        r8.EOFCode = r9;
        r9 = r8.ClearCode;
        r9 = r9 + 2;
        r8.free_ent = r9;
        r8.a_count = r0;
        r9 = r8.nextPixel();
        r2 = r8.hsize;
    L_0x002a:
        r3 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        if (r2 >= r3) goto L_0x0033;
    L_0x002e:
        r0 = r0 + 1;
        r2 = r2 * 2;
        goto L_0x002a;
    L_0x0033:
        r0 = 8 - r0;
        r2 = r8.hsize;
        r8.cl_hash(r2);
        r3 = r8.ClearCode;
        r8.output(r3, r10);
    L_0x003f:
        r3 = r8.nextPixel();
        r4 = -1;
        if (r3 == r4) goto L_0x0096;
    L_0x0046:
        r4 = r8.maxbits;
        r4 = r3 << r4;
        r4 = r4 + r9;
        r5 = r3 << r0;
        r5 = r5 ^ r9;
        r6 = r8.htab;
        r6 = r6[r5];
        if (r6 != r4) goto L_0x0059;
    L_0x0054:
        r9 = r8.codetab;
        r9 = r9[r5];
        goto L_0x003f;
    L_0x0059:
        r6 = r8.htab;
        r6 = r6[r5];
        if (r6 < 0) goto L_0x0079;
    L_0x005f:
        r6 = r2 - r5;
        if (r5 != 0) goto L_0x0064;
    L_0x0063:
        r6 = 1;
    L_0x0064:
        r5 = r5 - r6;
        if (r5 >= 0) goto L_0x0068;
    L_0x0067:
        r5 = r5 + r2;
    L_0x0068:
        r7 = r8.htab;
        r7 = r7[r5];
        if (r7 != r4) goto L_0x0073;
    L_0x006e:
        r9 = r8.codetab;
        r9 = r9[r5];
        goto L_0x003f;
    L_0x0073:
        r7 = r8.htab;
        r7 = r7[r5];
        if (r7 >= 0) goto L_0x0064;
    L_0x0079:
        r8.output(r9, r10);
        r9 = r8.free_ent;
        r6 = r8.maxmaxcode;
        if (r9 >= r6) goto L_0x0091;
    L_0x0082:
        r9 = r8.codetab;
        r6 = r8.free_ent;
        r7 = r6 + 1;
        r8.free_ent = r7;
        r9[r5] = r6;
        r9 = r8.htab;
        r9[r5] = r4;
        goto L_0x0094;
    L_0x0091:
        r8.cl_block(r10);
    L_0x0094:
        r9 = r3;
        goto L_0x003f;
    L_0x0096:
        r8.output(r9, r10);
        r9 = r8.EOFCode;
        r8.output(r9, r10);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifencoder.LZWEncoder.compress(int, java.io.OutputStream):void");
    }

    /* Access modifiers changed, original: 0000 */
    public void encode(OutputStream outputStream) throws IOException {
        outputStream.write(this.initCodeSize);
        this.remaining = this.imgW * this.imgH;
        this.curPixel = 0;
        compress(this.initCodeSize + 1, outputStream);
        outputStream.write(0);
    }

    /* Access modifiers changed, original: 0000 */
    public void flush_char(OutputStream outputStream) throws IOException {
        if (this.a_count > 0) {
            outputStream.write(this.a_count);
            outputStream.write(this.accum, 0, this.a_count);
            this.a_count = 0;
        }
    }

    private int nextPixel() {
        if (this.remaining == 0) {
            return -1;
        }
        this.remaining--;
        byte[] bArr = this.pixAry;
        int i = this.curPixel;
        this.curPixel = i + 1;
        return bArr[i] & 255;
    }

    /* Access modifiers changed, original: 0000 */
    public void output(int i, OutputStream outputStream) throws IOException {
        this.cur_accum &= this.masks[this.cur_bits];
        if (this.cur_bits > 0) {
            this.cur_accum |= i << this.cur_bits;
        } else {
            this.cur_accum = i;
        }
        this.cur_bits += this.n_bits;
        while (this.cur_bits >= 8) {
            char_out((byte) (this.cur_accum & 255), outputStream);
            this.cur_accum >>= 8;
            this.cur_bits -= 8;
        }
        if (this.free_ent > this.maxcode || this.clear_flg) {
            if (this.clear_flg) {
                int i2 = this.g_init_bits;
                this.n_bits = i2;
                this.maxcode = MAXCODE(i2);
                this.clear_flg = false;
            } else {
                this.n_bits++;
                if (this.n_bits == this.maxbits) {
                    this.maxcode = this.maxmaxcode;
                } else {
                    this.maxcode = MAXCODE(this.n_bits);
                }
            }
        }
        if (i == this.EOFCode) {
            while (this.cur_bits > 0) {
                char_out((byte) (this.cur_accum & 255), outputStream);
                this.cur_accum >>= 8;
                this.cur_bits -= 8;
            }
            flush_char(outputStream);
        }
    }
}
