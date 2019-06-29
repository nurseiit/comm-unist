package com.google.android.gms.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.zzao;
import com.google.android.gms.common.internal.zzbo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public abstract class zzbbe<R extends Result> extends PendingResult<R> {
    static final ThreadLocal<Boolean> zzaBV = new zzbbf();
    private Status mStatus;
    private boolean zzJ;
    private final Object zzaBW;
    private zzbbg<R> zzaBX;
    private WeakReference<GoogleApiClient> zzaBY;
    private final ArrayList<zza> zzaBZ;
    private R zzaBj;
    private ResultCallback<? super R> zzaCa;
    private final AtomicReference<zzbex> zzaCb;
    private zzbbh zzaCc;
    private volatile boolean zzaCd;
    private boolean zzaCe;
    private zzao zzaCf;
    private volatile zzbes<R> zzaCg;
    private boolean zzaCh;
    private final CountDownLatch zztJ;

    @Deprecated
    zzbbe() {
        this.zzaBW = new Object();
        this.zztJ = new CountDownLatch(1);
        this.zzaBZ = new ArrayList();
        this.zzaCb = new AtomicReference();
        this.zzaCh = false;
        this.zzaBX = new zzbbg(Looper.getMainLooper());
        this.zzaBY = new WeakReference(null);
    }

    @Deprecated
    protected zzbbe(Looper looper) {
        this.zzaBW = new Object();
        this.zztJ = new CountDownLatch(1);
        this.zzaBZ = new ArrayList();
        this.zzaCb = new AtomicReference();
        this.zzaCh = false;
        this.zzaBX = new zzbbg(looper);
        this.zzaBY = new WeakReference(null);
    }

    protected zzbbe(GoogleApiClient googleApiClient) {
        this.zzaBW = new Object();
        this.zztJ = new CountDownLatch(1);
        this.zzaBZ = new ArrayList();
        this.zzaCb = new AtomicReference();
        this.zzaCh = false;
        this.zzaBX = new zzbbg(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.zzaBY = new WeakReference(googleApiClient);
    }

    private final R get() {
        Result result;
        synchronized (this.zzaBW) {
            zzbo.zza(this.zzaCd ^ 1, (Object) "Result has already been consumed.");
            zzbo.zza(isReady(), (Object) "Result is not ready.");
            result = this.zzaBj;
            this.zzaBj = null;
            this.zzaCa = null;
            this.zzaCd = true;
        }
        zzbex zzbex = (zzbex) this.zzaCb.getAndSet(null);
        if (zzbex != null) {
            zzbex.zzc(this);
        }
        return result;
    }

    private final void zzb(R r) {
        this.zzaBj = r;
        this.zzaCf = null;
        this.zztJ.countDown();
        this.mStatus = this.zzaBj.getStatus();
        if (this.zzJ) {
            this.zzaCa = null;
        } else if (this.zzaCa != null) {
            this.zzaBX.removeMessages(2);
            this.zzaBX.zza(this.zzaCa, get());
        } else if (this.zzaBj instanceof Releasable) {
            this.zzaCc = new zzbbh(this, null);
        }
        ArrayList arrayList = this.zzaBZ;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((zza) obj).zzo(this.mStatus);
        }
        this.zzaBZ.clear();
    }

    public static void zzc(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 18);
                stringBuilder.append("Unable to release ");
                stringBuilder.append(valueOf);
                Log.w("BasePendingResult", stringBuilder.toString(), e);
            }
        }
    }

    public final R await() {
        boolean z = false;
        zzbo.zza(Looper.myLooper() != Looper.getMainLooper(), (Object) "await must not be called on the UI thread");
        zzbo.zza(this.zzaCd ^ 1, (Object) "Result has already been consumed");
        if (this.zzaCg == null) {
            z = true;
        }
        zzbo.zza(z, (Object) "Cannot await if then() has been called.");
        try {
            this.zztJ.await();
        } catch (InterruptedException unused) {
            zzs(Status.zzaBn);
        }
        zzbo.zza(isReady(), (Object) "Result is not ready.");
        return get();
    }

    public final R await(long j, TimeUnit timeUnit) {
        boolean z = false;
        boolean z2 = j <= 0 || Looper.myLooper() != Looper.getMainLooper();
        zzbo.zza(z2, (Object) "await must not be called on the UI thread when time is greater than zero.");
        zzbo.zza(this.zzaCd ^ 1, (Object) "Result has already been consumed.");
        if (this.zzaCg == null) {
            z = true;
        }
        zzbo.zza(z, (Object) "Cannot await if then() has been called.");
        try {
            if (!this.zztJ.await(j, timeUnit)) {
                zzs(Status.zzaBp);
            }
        } catch (InterruptedException unused) {
            zzs(Status.zzaBn);
        }
        zzbo.zza(isReady(), (Object) "Result is not ready.");
        return get();
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:12:0x0015 */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:8|(2:10|11)|12|13|14|15) */
    /* JADX WARNING: Missing block: B:17:0x0029, code skipped:
            return;
     */
    public void cancel() {
        /*
        r2 = this;
        r0 = r2.zzaBW;
        monitor-enter(r0);
        r1 = r2.zzJ;	 Catch:{ all -> 0x002a }
        if (r1 != 0) goto L_0x0028;
    L_0x0007:
        r1 = r2.zzaCd;	 Catch:{ all -> 0x002a }
        if (r1 == 0) goto L_0x000c;
    L_0x000b:
        goto L_0x0028;
    L_0x000c:
        r1 = r2.zzaCf;	 Catch:{ all -> 0x002a }
        if (r1 == 0) goto L_0x0015;
    L_0x0010:
        r1 = r2.zzaCf;	 Catch:{ RemoteException -> 0x0015 }
        r1.cancel();	 Catch:{ RemoteException -> 0x0015 }
    L_0x0015:
        r1 = r2.zzaBj;	 Catch:{ all -> 0x002a }
        zzc(r1);	 Catch:{ all -> 0x002a }
        r1 = 1;
        r2.zzJ = r1;	 Catch:{ all -> 0x002a }
        r1 = com.google.android.gms.common.api.Status.zzaBq;	 Catch:{ all -> 0x002a }
        r1 = r2.zzb(r1);	 Catch:{ all -> 0x002a }
        r2.zzb(r1);	 Catch:{ all -> 0x002a }
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        return;
    L_0x0028:
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        return;
    L_0x002a:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x002a }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbbe.cancel():void");
    }

    public boolean isCanceled() {
        boolean z;
        synchronized (this.zzaBW) {
            z = this.zzJ;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zztJ.getCount() == 0;
    }

    public final void setResult(R r) {
        synchronized (this.zzaBW) {
            if (this.zzaCe || this.zzJ) {
                zzc(r);
                return;
            }
            isReady();
            zzbo.zza(isReady() ^ 1, (Object) "Results have already been set");
            zzbo.zza(this.zzaCd ^ 1, (Object) "Result has already been consumed");
            zzb((Result) r);
        }
    }

    /* JADX WARNING: Missing block: B:23:0x003b, code skipped:
            return;
     */
    public final void setResultCallback(com.google.android.gms.common.api.ResultCallback<? super R> r5) {
        /*
        r4 = this;
        r0 = r4.zzaBW;
        monitor-enter(r0);
        if (r5 != 0) goto L_0x000c;
    L_0x0005:
        r5 = 0;
        r4.zzaCa = r5;	 Catch:{ all -> 0x000a }
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x000a:
        r5 = move-exception;
        goto L_0x003c;
    L_0x000c:
        r1 = r4.zzaCd;	 Catch:{ all -> 0x000a }
        r2 = 1;
        r1 = r1 ^ r2;
        r3 = "Result has already been consumed.";
        com.google.android.gms.common.internal.zzbo.zza(r1, r3);	 Catch:{ all -> 0x000a }
        r1 = r4.zzaCg;	 Catch:{ all -> 0x000a }
        if (r1 != 0) goto L_0x001a;
    L_0x0019:
        goto L_0x001b;
    L_0x001a:
        r2 = 0;
    L_0x001b:
        r1 = "Cannot set callbacks if then() has been called.";
        com.google.android.gms.common.internal.zzbo.zza(r2, r1);	 Catch:{ all -> 0x000a }
        r1 = r4.isCanceled();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0028;
    L_0x0026:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x0028:
        r1 = r4.isReady();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0038;
    L_0x002e:
        r1 = r4.zzaBX;	 Catch:{ all -> 0x000a }
        r2 = r4.get();	 Catch:{ all -> 0x000a }
        r1.zza(r5, r2);	 Catch:{ all -> 0x000a }
        goto L_0x003a;
    L_0x0038:
        r4.zzaCa = r5;	 Catch:{ all -> 0x000a }
    L_0x003a:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x003c:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbbe.setResultCallback(com.google.android.gms.common.api.ResultCallback):void");
    }

    /* JADX WARNING: Missing block: B:23:0x0049, code skipped:
            return;
     */
    public final void setResultCallback(com.google.android.gms.common.api.ResultCallback<? super R> r5, long r6, java.util.concurrent.TimeUnit r8) {
        /*
        r4 = this;
        r0 = r4.zzaBW;
        monitor-enter(r0);
        if (r5 != 0) goto L_0x000c;
    L_0x0005:
        r5 = 0;
        r4.zzaCa = r5;	 Catch:{ all -> 0x000a }
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x000a:
        r5 = move-exception;
        goto L_0x004a;
    L_0x000c:
        r1 = r4.zzaCd;	 Catch:{ all -> 0x000a }
        r2 = 1;
        r1 = r1 ^ r2;
        r3 = "Result has already been consumed.";
        com.google.android.gms.common.internal.zzbo.zza(r1, r3);	 Catch:{ all -> 0x000a }
        r1 = r4.zzaCg;	 Catch:{ all -> 0x000a }
        if (r1 != 0) goto L_0x001a;
    L_0x0019:
        goto L_0x001b;
    L_0x001a:
        r2 = 0;
    L_0x001b:
        r1 = "Cannot set callbacks if then() has been called.";
        com.google.android.gms.common.internal.zzbo.zza(r2, r1);	 Catch:{ all -> 0x000a }
        r1 = r4.isCanceled();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0028;
    L_0x0026:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x0028:
        r1 = r4.isReady();	 Catch:{ all -> 0x000a }
        if (r1 == 0) goto L_0x0038;
    L_0x002e:
        r6 = r4.zzaBX;	 Catch:{ all -> 0x000a }
        r7 = r4.get();	 Catch:{ all -> 0x000a }
        r6.zza(r5, r7);	 Catch:{ all -> 0x000a }
        goto L_0x0048;
    L_0x0038:
        r4.zzaCa = r5;	 Catch:{ all -> 0x000a }
        r5 = r4.zzaBX;	 Catch:{ all -> 0x000a }
        r6 = r8.toMillis(r6);	 Catch:{ all -> 0x000a }
        r8 = 2;
        r8 = r5.obtainMessage(r8, r4);	 Catch:{ all -> 0x000a }
        r5.sendMessageDelayed(r8, r6);	 Catch:{ all -> 0x000a }
    L_0x0048:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        return;
    L_0x004a:
        monitor-exit(r0);	 Catch:{ all -> 0x000a }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbbe.setResultCallback(com.google.android.gms.common.api.ResultCallback, long, java.util.concurrent.TimeUnit):void");
    }

    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult then;
        zzbo.zza(this.zzaCd ^ 1, (Object) "Result has already been consumed.");
        synchronized (this.zzaBW) {
            boolean z = false;
            zzbo.zza(this.zzaCg == null, (Object) "Cannot call then() twice.");
            if (this.zzaCa == null) {
                z = true;
            }
            zzbo.zza(z, (Object) "Cannot call then() if callbacks are set.");
            zzbo.zza(this.zzJ ^ 1, (Object) "Cannot call then() if result was canceled.");
            this.zzaCh = true;
            this.zzaCg = new zzbes(this.zzaBY);
            then = this.zzaCg.then(resultTransform);
            if (isReady()) {
                this.zzaBX.zza(this.zzaCg, get());
            } else {
                this.zzaCa = this.zzaCg;
            }
        }
        return then;
    }

    public final void zza(zza zza) {
        zzbo.zzb(zza != null, (Object) "Callback cannot be null.");
        synchronized (this.zzaBW) {
            if (isReady()) {
                zza.zzo(this.mStatus);
            } else {
                this.zzaBZ.add(zza);
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(zzao zzao) {
        synchronized (this.zzaBW) {
            this.zzaCf = zzao;
        }
    }

    public final void zza(zzbex zzbex) {
        this.zzaCb.set(zzbex);
    }

    @NonNull
    public abstract R zzb(Status status);

    public final boolean zzpB() {
        boolean isCanceled;
        synchronized (this.zzaBW) {
            if (((GoogleApiClient) this.zzaBY.get()) == null || !this.zzaCh) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public final void zzpC() {
        boolean z = this.zzaCh || ((Boolean) zzaBV.get()).booleanValue();
        this.zzaCh = z;
    }

    public final Integer zzpo() {
        return null;
    }

    public final void zzs(Status status) {
        synchronized (this.zzaBW) {
            if (!isReady()) {
                setResult(zzb(status));
                this.zzaCe = true;
            }
        }
    }
}
