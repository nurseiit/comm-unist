package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;

public final class pt extends Reader {
    private boolean closed;
    private int zzccA;
    private boolean zzccB;
    private List<String> zzccw;
    private int zzccx;
    private int zzccy;
    private int zzccz;

    public pt() {
        this.zzccw = null;
        this.closed = false;
        this.zzccz = this.zzccx;
        this.zzccA = this.zzccy;
        this.zzccB = false;
        this.zzccw = new ArrayList();
    }

    private final String zzGE() {
        return this.zzccy < this.zzccw.size() ? (String) this.zzccw.get(this.zzccy) : null;
    }

    private final int zzGF() {
        String zzGE = zzGE();
        return zzGE == null ? 0 : zzGE.length() - this.zzccx;
    }

    private final void zzGG() throws IOException {
        if (this.closed) {
            throw new IOException("Stream already closed");
        } else if (!this.zzccB) {
            throw new IOException("Reader needs to be frozen before read operations can be called");
        }
    }

    private final long zzau(long j) {
        long j2 = 0;
        while (this.zzccy < this.zzccw.size() && j2 < j) {
            long j3 = j - j2;
            long zzGF = (long) zzGF();
            if (j3 < zzGF) {
                this.zzccx = (int) (((long) this.zzccx) + j3);
                j2 += j3;
            } else {
                long j4 = j2 + zzGF;
                this.zzccx = 0;
                this.zzccy++;
                j2 = j4;
            }
        }
        return j2;
    }

    public final void close() throws IOException {
        zzGG();
        this.closed = true;
    }

    public final void mark(int i) throws IOException {
        zzGG();
        this.zzccz = this.zzccx;
        this.zzccA = this.zzccy;
    }

    public final boolean markSupported() {
        return true;
    }

    public final int read() throws IOException {
        zzGG();
        String zzGE = zzGE();
        if (zzGE == null) {
            return -1;
        }
        char charAt = zzGE.charAt(this.zzccx);
        zzau(1);
        return charAt;
    }

    public final int read(CharBuffer charBuffer) throws IOException {
        zzGG();
        int remaining = charBuffer.remaining();
        String zzGE = zzGE();
        int i = 0;
        while (remaining > 0 && zzGE != null) {
            int min = Math.min(zzGE.length() - this.zzccx, remaining);
            charBuffer.put((String) this.zzccw.get(this.zzccy), this.zzccx, this.zzccx + min);
            remaining -= min;
            i += min;
            zzau((long) min);
            zzGE = zzGE();
        }
        return (i > 0 || zzGE != null) ? i : -1;
    }

    public final int read(char[] cArr, int i, int i2) throws IOException {
        zzGG();
        String zzGE = zzGE();
        int i3 = 0;
        while (zzGE != null && i3 < i2) {
            int min = Math.min(zzGF(), i2 - i3);
            zzGE.getChars(this.zzccx, this.zzccx + min, cArr, i + i3);
            i3 += min;
            zzau((long) min);
            zzGE = zzGE();
        }
        return (i3 > 0 || zzGE != null) ? i3 : -1;
    }

    public final boolean ready() throws IOException {
        zzGG();
        return true;
    }

    public final void reset() throws IOException {
        this.zzccx = this.zzccz;
        this.zzccy = this.zzccA;
    }

    public final long skip(long j) throws IOException {
        zzGG();
        return zzau(j);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (String append : this.zzccw) {
            stringBuilder.append(append);
        }
        return stringBuilder.toString();
    }

    public final void zzGD() {
        if (this.zzccB) {
            throw new IllegalStateException("Trying to freeze frozen StringListReader");
        }
        this.zzccB = true;
    }

    public final void zzgN(String str) {
        if (this.zzccB) {
            throw new IllegalStateException("Trying to add string after reading");
        } else if (str.length() > 0) {
            this.zzccw.add(str);
        }
    }
}
