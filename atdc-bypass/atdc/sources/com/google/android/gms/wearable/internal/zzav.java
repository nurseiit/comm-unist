package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.InputStream;

public final class zzav extends InputStream {
    private final InputStream zzbSq;
    private volatile zzah zzbSr;

    public zzav(InputStream inputStream) {
        this.zzbSq = (InputStream) zzbo.zzu(inputStream);
    }

    private final int zzbR(int i) throws ChannelIOException {
        if (i == -1) {
            zzah zzah = this.zzbSr;
            if (zzah != null) {
                throw new ChannelIOException("Channel closed unexpectedly before stream was finished", zzah.zzbSh, zzah.zzbSi);
            }
        }
        return i;
    }

    public final int available() throws IOException {
        return this.zzbSq.available();
    }

    public final void close() throws IOException {
        this.zzbSq.close();
    }

    public final void mark(int i) {
        this.zzbSq.mark(i);
    }

    public final boolean markSupported() {
        return this.zzbSq.markSupported();
    }

    public final int read() throws IOException {
        return zzbR(this.zzbSq.read());
    }

    public final int read(byte[] bArr) throws IOException {
        return zzbR(this.zzbSq.read(bArr));
    }

    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return zzbR(this.zzbSq.read(bArr, i, i2));
    }

    public final void reset() throws IOException {
        this.zzbSq.reset();
    }

    public final long skip(long j) throws IOException {
        return this.zzbSq.skip(j);
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzah zzah) {
        this.zzbSr = (zzah) zzbo.zzu(zzah);
    }
}
