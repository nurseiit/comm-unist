package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzg;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class zzcar implements zzf, zzg {
    private final String packageName;
    private zzcas zzbfo;
    private final String zzbfp;
    private final LinkedBlockingQueue<zzax> zzbfq;
    private final HandlerThread zzbfr = new HandlerThread("GassClient");

    public zzcar(Context context, String str, String str2) {
        this.packageName = str;
        this.zzbfp = str2;
        this.zzbfr.start();
        this.zzbfo = new zzcas(context, this.zzbfr.getLooper(), this, this);
        this.zzbfq = new LinkedBlockingQueue();
        this.zzbfo.zzrb();
    }

    private final void zzgA() {
        if (this.zzbfo == null) {
            return;
        }
        if (this.zzbfo.isConnected() || this.zzbfo.isConnecting()) {
            this.zzbfo.disconnect();
        }
    }

    private final zzcax zzvx() {
        try {
            return this.zzbfo.zzvz();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    private static zzax zzvy() {
        zzax zzax = new zzax();
        zzax.zzbq = Long.valueOf(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID);
        return zzax;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x0027 */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0025 A:{ExcHandler: all (th java.lang.Throwable), Splitter:B:2:0x0006} */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0025 A:{ExcHandler: all (th java.lang.Throwable), Splitter:B:2:0x0006} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:10:0x0031, code skipped:
            zzgA();
            r3.zzbfr.quit();
     */
    public final void onConnected(android.os.Bundle r4) {
        /*
        r3 = this;
        r4 = r3.zzvx();
        if (r4 == 0) goto L_0x003a;
    L_0x0006:
        r0 = new com.google.android.gms.internal.zzcat;	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
        r1 = r3.packageName;	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
        r2 = r3.zzbfp;	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
        r0.<init>(r1, r2);	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
        r4 = r4.zza(r0);	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
        r4 = r4.zzvA();	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
        r0 = r3.zzbfq;	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
        r0.put(r4);	 Catch:{ Throwable -> 0x0027, all -> 0x0025 }
    L_0x001c:
        r3.zzgA();
        r4 = r3.zzbfr;
        r4.quit();
        return;
    L_0x0025:
        r4 = move-exception;
        goto L_0x0031;
    L_0x0027:
        r4 = r3.zzbfq;	 Catch:{ InterruptedException -> 0x001c, all -> 0x0025 }
        r0 = zzvy();	 Catch:{ InterruptedException -> 0x001c, all -> 0x0025 }
        r4.put(r0);	 Catch:{ InterruptedException -> 0x001c, all -> 0x0025 }
        goto L_0x001c;
    L_0x0031:
        r3.zzgA();
        r0 = r3.zzbfr;
        r0.quit();
        throw r4;
    L_0x003a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzcar.onConnected(android.os.Bundle):void");
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzbfq.put(zzvy());
        } catch (InterruptedException unused) {
        }
    }

    public final void onConnectionSuspended(int i) {
        try {
            this.zzbfq.put(zzvy());
        } catch (InterruptedException unused) {
        }
    }

    public final zzax zzbe(int i) {
        zzax zzax;
        try {
            zzax = (zzax) this.zzbfq.poll(5000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzax = null;
        }
        return zzax == null ? zzvy() : zzax;
    }
}
