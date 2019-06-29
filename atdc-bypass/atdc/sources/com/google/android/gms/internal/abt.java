package com.google.android.gms.internal;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

public final class abt {
    private static final Runtime zzcpZ = Runtime.getRuntime();
    private byte[] buffer = new byte[262144];
    private final InputStream zzcqa;
    private int zzcqb = 0;
    private boolean zzcqc = false;
    private boolean zzcqd = true;

    public abt(InputStream inputStream, int i) {
        this.zzcqa = inputStream;
    }

    private final int zzci(int i) {
        i = Math.max(this.buffer.length << 1, i);
        if (!this.zzcqd || ((long) (262144 + i)) >= zzcpZ.freeMemory()) {
            Log.w("AdaptiveStreamBuffer", "Turning off adaptive buffer resizing to conserve memory.");
        } else {
            try {
                byte[] bArr = new byte[i];
                System.arraycopy(this.buffer, 0, bArr, 0, this.zzcqb);
                this.buffer = bArr;
            } catch (OutOfMemoryError unused) {
                Log.w("AdaptiveStreamBuffer", "Turning off adaptive buffer resizing due to low memory.");
                this.zzcqd = false;
            }
        }
        return this.buffer.length;
    }

    public final int available() {
        return this.zzcqb;
    }

    public final void close() throws IOException {
        this.zzcqa.close();
    }

    public final boolean isFinished() {
        return this.zzcqc;
    }

    public final byte[] zzLe() {
        return this.buffer;
    }

    public final int zzcg(int i) throws IOException {
        if (i <= this.zzcqb) {
            this.zzcqb -= i;
            System.arraycopy(this.buffer, i, this.buffer, 0, this.zzcqb);
            return i;
        }
        this.zzcqb = 0;
        int i2 = this.zzcqb;
        while (i2 < i) {
            long skip = this.zzcqa.skip((long) (i - i2));
            if (skip <= 0) {
                if (skip == 0) {
                    if (this.zzcqa.read() == -1) {
                        break;
                    }
                    i2++;
                } else {
                    continue;
                }
            } else {
                i2 = (int) (((long) i2) + skip);
            }
        }
        return i2;
    }

    public final int zzch(int i) throws IOException {
        if (i > this.buffer.length) {
            i = Math.min(i, zzci(i));
        }
        while (this.zzcqb < i) {
            int read = this.zzcqa.read(this.buffer, this.zzcqb, i - this.zzcqb);
            if (read == -1) {
                this.zzcqc = true;
                break;
            }
            this.zzcqb += read;
        }
        return this.zzcqb;
    }
}
