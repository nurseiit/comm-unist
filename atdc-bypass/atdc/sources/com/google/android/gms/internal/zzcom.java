package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.util.zzn;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class zzcom {
    private final ExecutorService zzbxv = Executors.newSingleThreadExecutor();
    private volatile InputStream zzbxw = null;
    private volatile boolean zzbxx = false;

    private static void zza(OutputStream outputStream, boolean z, long j) {
        try {
            outputStream.write(z);
        } catch (IOException e) {
            Log.w("NearbyConnections", String.format("Unable to deliver status for Payload %d", new Object[]{Long.valueOf(j)}), e);
        } finally {
            zzn.closeQuietly(outputStream);
        }
    }

    /* Access modifiers changed, original: final */
    public final void shutdown() {
        this.zzbxx = true;
        this.zzbxv.shutdownNow();
        zzn.closeQuietly(this.zzbxw);
    }

    /* Access modifiers changed, original: final */
    public final void zza(InputStream inputStream, OutputStream outputStream, OutputStream outputStream2, long j) {
        this.zzbxv.execute(new zzcon(this, inputStream, outputStream, j, outputStream2));
    }
}
