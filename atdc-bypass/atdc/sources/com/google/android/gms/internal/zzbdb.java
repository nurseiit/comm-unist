package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zza;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzbdb implements Callback {
    public static final Status zzaEc = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zzaEd = new Status(4, "The user must be signed in to make this API call.");
    private static zzbdb zzaEf;
    private static final Object zzuF = new Object();
    private final Context mContext;
    private final Handler mHandler;
    private final GoogleApiAvailability zzaBd;
    private final Map<zzbat<?>, zzbdd<?>> zzaCB = new ConcurrentHashMap(5, 0.75f, 1);
    private long zzaDB = 120000;
    private long zzaDC = 5000;
    private long zzaEe = 10000;
    private int zzaEg = -1;
    private final AtomicInteger zzaEh = new AtomicInteger(1);
    private final AtomicInteger zzaEi = new AtomicInteger(0);
    private zzbbw zzaEj = null;
    private final Set<zzbat<?>> zzaEk = new zza();
    private final Set<zzbat<?>> zzaEl = new zza();

    private zzbdb(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.mContext = context;
        this.mHandler = new Handler(looper, this);
        this.zzaBd = googleApiAvailability;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6));
    }

    public static zzbdb zzay(Context context) {
        zzbdb zzbdb;
        synchronized (zzuF) {
            if (zzaEf == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                zzaEf = new zzbdb(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.getInstance());
            }
            zzbdb = zzaEf;
        }
        return zzbdb;
    }

    @WorkerThread
    private final void zzc(GoogleApi<?> googleApi) {
        zzbat zzph = googleApi.zzph();
        zzbdd zzbdd = (zzbdd) this.zzaCB.get(zzph);
        if (zzbdd == null) {
            zzbdd = new zzbdd(this, googleApi);
            this.zzaCB.put(zzph, zzbdd);
        }
        if (zzbdd.zzmv()) {
            this.zzaEl.add(zzph);
        }
        zzbdd.connect();
    }

    public static zzbdb zzqk() {
        zzbdb zzbdb;
        synchronized (zzuF) {
            zzbo.zzb(zzaEf, (Object) "Must guarantee manager is non-null before using getInstance");
            zzbdb = zzaEf;
        }
        return zzbdb;
    }

    public static void zzql() {
        synchronized (zzuF) {
            if (zzaEf != null) {
                zzbdb zzbdb = zzaEf;
                zzbdb.zzaEi.incrementAndGet();
                zzbdb.mHandler.sendMessageAtFrontOfQueue(zzbdb.mHandler.obtainMessage(10));
            }
        }
    }

    @WorkerThread
    private final void zzqn() {
        for (zzbat remove : this.zzaEl) {
            ((zzbdd) this.zzaCB.remove(remove)).signOut();
        }
        this.zzaEl.clear();
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x011a  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00cd  */
    @android.support.annotation.WorkerThread
    public final boolean handleMessage(android.os.Message r8) {
        /*
        r7 = this;
        r0 = r8.what;
        r1 = 300000; // 0x493e0 float:4.2039E-40 double:1.482197E-318;
        r3 = 1;
        switch(r0) {
            case 1: goto L_0x01ea;
            case 2: goto L_0x01a2;
            case 3: goto L_0x0185;
            case 4: goto L_0x013d;
            case 5: goto L_0x00a7;
            case 6: goto L_0x0079;
            case 7: goto L_0x0071;
            case 8: goto L_0x013d;
            case 9: goto L_0x0059;
            case 10: goto L_0x0055;
            case 11: goto L_0x003d;
            case 12: goto L_0x0025;
            case 13: goto L_0x013d;
            default: goto L_0x0009;
        };
    L_0x0009:
        r0 = "GoogleApiManager";
        r8 = r8.what;
        r1 = 31;
        r2 = new java.lang.StringBuilder;
        r2.<init>(r1);
        r1 = "Unknown message id: ";
        r2.append(r1);
        r2.append(r8);
        r8 = r2.toString();
        android.util.Log.w(r0, r8);
        r8 = 0;
        return r8;
    L_0x0025:
        r0 = r7.zzaCB;
        r1 = r8.obj;
        r0 = r0.containsKey(r1);
        if (r0 == 0) goto L_0x0223;
    L_0x002f:
        r0 = r7.zzaCB;
        r8 = r8.obj;
        r8 = r0.get(r8);
        r8 = (com.google.android.gms.internal.zzbdd) r8;
        r8.zzqx();
        return r3;
    L_0x003d:
        r0 = r7.zzaCB;
        r1 = r8.obj;
        r0 = r0.containsKey(r1);
        if (r0 == 0) goto L_0x0223;
    L_0x0047:
        r0 = r7.zzaCB;
        r8 = r8.obj;
        r8 = r0.get(r8);
        r8 = (com.google.android.gms.internal.zzbdd) r8;
        r8.zzqd();
        return r3;
    L_0x0055:
        r7.zzqn();
        return r3;
    L_0x0059:
        r0 = r7.zzaCB;
        r1 = r8.obj;
        r0 = r0.containsKey(r1);
        if (r0 == 0) goto L_0x0223;
    L_0x0063:
        r0 = r7.zzaCB;
        r8 = r8.obj;
        r8 = r0.get(r8);
        r8 = (com.google.android.gms.internal.zzbdd) r8;
        r8.resume();
        return r3;
    L_0x0071:
        r8 = r8.obj;
        r8 = (com.google.android.gms.common.api.GoogleApi) r8;
        r7.zzc(r8);
        return r3;
    L_0x0079:
        r8 = r7.mContext;
        r8 = r8.getApplicationContext();
        r8 = r8 instanceof android.app.Application;
        if (r8 == 0) goto L_0x0223;
    L_0x0083:
        r8 = r7.mContext;
        r8 = r8.getApplicationContext();
        r8 = (android.app.Application) r8;
        com.google.android.gms.internal.zzbaw.zza(r8);
        r8 = com.google.android.gms.internal.zzbaw.zzpv();
        r0 = new com.google.android.gms.internal.zzbdc;
        r0.<init>(r7);
        r8.zza(r0);
        r8 = com.google.android.gms.internal.zzbaw.zzpv();
        r8 = r8.zzab(r3);
        if (r8 != 0) goto L_0x0223;
    L_0x00a4:
        r7.zzaEe = r1;
        return r3;
    L_0x00a7:
        r0 = r8.arg1;
        r8 = r8.obj;
        r8 = (com.google.android.gms.common.ConnectionResult) r8;
        r1 = 0;
        r2 = r7.zzaCB;
        r2 = r2.values();
        r2 = r2.iterator();
    L_0x00b8:
        r4 = r2.hasNext();
        if (r4 == 0) goto L_0x00cb;
    L_0x00be:
        r4 = r2.next();
        r4 = (com.google.android.gms.internal.zzbdd) r4;
        r5 = r4.getInstanceId();
        if (r5 != r0) goto L_0x00b8;
    L_0x00ca:
        r1 = r4;
    L_0x00cb:
        if (r1 == 0) goto L_0x011a;
    L_0x00cd:
        r0 = new com.google.android.gms.common.api.Status;
        r2 = 17;
        r4 = r7.zzaBd;
        r5 = r8.getErrorCode();
        r4 = r4.getErrorString(r5);
        r4 = java.lang.String.valueOf(r4);
        r8 = r8.getErrorMessage();
        r8 = java.lang.String.valueOf(r8);
        r5 = java.lang.String.valueOf(r4);
        r5 = r5.length();
        r5 = r5 + 69;
        r6 = java.lang.String.valueOf(r8);
        r6 = r6.length();
        r5 = r5 + r6;
        r6 = new java.lang.StringBuilder;
        r6.<init>(r5);
        r5 = "Error resolution was canceled by the user, original error message: ";
        r6.append(r5);
        r6.append(r4);
        r4 = ": ";
        r6.append(r4);
        r6.append(r8);
        r8 = r6.toString();
        r0.<init>(r2, r8);
        r1.zzt(r0);
        return r3;
    L_0x011a:
        r8 = "GoogleApiManager";
        r1 = 76;
        r2 = new java.lang.StringBuilder;
        r2.<init>(r1);
        r1 = "Could not find API instance ";
        r2.append(r1);
        r2.append(r0);
        r0 = " while trying to fail enqueued calls.";
        r2.append(r0);
        r0 = r2.toString();
        r1 = new java.lang.Exception;
        r1.<init>();
        android.util.Log.wtf(r8, r0, r1);
        return r3;
    L_0x013d:
        r8 = r8.obj;
        r8 = (com.google.android.gms.internal.zzbed) r8;
        r0 = r7.zzaCB;
        r1 = r8.zzaET;
        r1 = r1.zzph();
        r0 = r0.get(r1);
        r0 = (com.google.android.gms.internal.zzbdd) r0;
        if (r0 != 0) goto L_0x0164;
    L_0x0151:
        r0 = r8.zzaET;
        r7.zzc(r0);
        r0 = r7.zzaCB;
        r1 = r8.zzaET;
        r1 = r1.zzph();
        r0 = r0.get(r1);
        r0 = (com.google.android.gms.internal.zzbdd) r0;
    L_0x0164:
        r1 = r0.zzmv();
        if (r1 == 0) goto L_0x017f;
    L_0x016a:
        r1 = r7.zzaEi;
        r1 = r1.get();
        r2 = r8.zzaES;
        if (r1 == r2) goto L_0x017f;
    L_0x0174:
        r8 = r8.zzaER;
        r1 = zzaEc;
        r8.zzp(r1);
        r0.signOut();
        return r3;
    L_0x017f:
        r8 = r8.zzaER;
        r0.zza(r8);
        return r3;
    L_0x0185:
        r8 = r7.zzaCB;
        r8 = r8.values();
        r8 = r8.iterator();
    L_0x018f:
        r0 = r8.hasNext();
        if (r0 == 0) goto L_0x0223;
    L_0x0195:
        r0 = r8.next();
        r0 = (com.google.android.gms.internal.zzbdd) r0;
        r0.zzqt();
        r0.connect();
        goto L_0x018f;
    L_0x01a2:
        r8 = r8.obj;
        r8 = (com.google.android.gms.internal.zzbav) r8;
        r0 = r8.zzpt();
        r0 = r0.iterator();
    L_0x01ae:
        r1 = r0.hasNext();
        if (r1 == 0) goto L_0x0223;
    L_0x01b4:
        r1 = r0.next();
        r1 = (com.google.android.gms.internal.zzbat) r1;
        r2 = r7.zzaCB;
        r2 = r2.get(r1);
        r2 = (com.google.android.gms.internal.zzbdd) r2;
        if (r2 != 0) goto L_0x01cf;
    L_0x01c4:
        r0 = new com.google.android.gms.common.ConnectionResult;
        r2 = 13;
        r0.<init>(r2);
        r8.zza(r1, r0);
        return r3;
    L_0x01cf:
        r4 = r2.isConnected();
        if (r4 == 0) goto L_0x01db;
    L_0x01d5:
        r2 = com.google.android.gms.common.ConnectionResult.zzazX;
    L_0x01d7:
        r8.zza(r1, r2);
        goto L_0x01ae;
    L_0x01db:
        r4 = r2.zzqu();
        if (r4 == 0) goto L_0x01e6;
    L_0x01e1:
        r2 = r2.zzqu();
        goto L_0x01d7;
    L_0x01e6:
        r2.zza(r8);
        goto L_0x01ae;
    L_0x01ea:
        r8 = r8.obj;
        r8 = (java.lang.Boolean) r8;
        r8 = r8.booleanValue();
        if (r8 == 0) goto L_0x01f6;
    L_0x01f4:
        r1 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
    L_0x01f6:
        r7.zzaEe = r1;
        r8 = r7.mHandler;
        r0 = 12;
        r8.removeMessages(r0);
        r8 = r7.zzaCB;
        r8 = r8.keySet();
        r8 = r8.iterator();
    L_0x0209:
        r1 = r8.hasNext();
        if (r1 == 0) goto L_0x0223;
    L_0x020f:
        r1 = r8.next();
        r1 = (com.google.android.gms.internal.zzbat) r1;
        r2 = r7.mHandler;
        r4 = r7.mHandler;
        r1 = r4.obtainMessage(r0, r1);
        r4 = r7.zzaEe;
        r2.sendMessageDelayed(r1, r4);
        goto L_0x0209;
    L_0x0223:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbdb.handleMessage(android.os.Message):boolean");
    }

    /* Access modifiers changed, original: final */
    public final PendingIntent zza(zzbat<?> zzbat, int i) {
        zzbdd zzbdd = (zzbdd) this.zzaCB.get(zzbat);
        if (zzbdd == null) {
            return null;
        }
        zzctk zzqy = zzbdd.zzqy();
        return zzqy == null ? null : PendingIntent.getActivity(this.mContext, i, zzqy.zzmH(), 134217728);
    }

    public final <O extends ApiOptions> Task<Void> zza(@NonNull GoogleApi<O> googleApi, @NonNull zzbdy<?> zzbdy) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(13, new zzbed(new zzbar(zzbdy, taskCompletionSource), this.zzaEi.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends ApiOptions> Task<Void> zza(@NonNull GoogleApi<O> googleApi, @NonNull zzbee<zzb, ?> zzbee, @NonNull zzbey<zzb, ?> zzbey) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(8, new zzbed(new zzbap(new zzbef(zzbee, zzbey), taskCompletionSource), this.zzaEi.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final Task<Void> zza(Iterable<? extends GoogleApi<?>> iterable) {
        zzbav zzbav = new zzbav(iterable);
        for (GoogleApi zzph : iterable) {
            zzbdd zzbdd = (zzbdd) this.zzaCB.get(zzph.zzph());
            if (zzbdd != null) {
                if (!zzbdd.isConnected()) {
                }
            }
            this.mHandler.sendMessage(this.mHandler.obtainMessage(2, zzbav));
        }
        zzbav.zzpu();
        return zzbav.getTask();
    }

    public final void zza(ConnectionResult connectionResult, int i) {
        if (!zzc(connectionResult, i)) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    public final <O extends ApiOptions> void zza(GoogleApi<O> googleApi, int i, zzbay<? extends Result, zzb> zzbay) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzbed(new zzbao(i, zzbay), this.zzaEi.get(), googleApi)));
    }

    public final <O extends ApiOptions, TResult> void zza(GoogleApi<O> googleApi, int i, zzbeq<zzb, TResult> zzbeq, TaskCompletionSource<TResult> taskCompletionSource, zzbem zzbem) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzbed(new zzbaq(i, zzbeq, taskCompletionSource, zzbem), this.zzaEi.get(), googleApi)));
    }

    public final void zza(@NonNull zzbbw zzbbw) {
        synchronized (zzuF) {
            if (this.zzaEj != zzbbw) {
                this.zzaEj = zzbbw;
                this.zzaEk.clear();
                this.zzaEk.addAll(zzbbw.zzpR());
            }
        }
    }

    public final void zzb(GoogleApi<?> googleApi) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, googleApi));
    }

    /* Access modifiers changed, original: final */
    public final void zzb(@NonNull zzbbw zzbbw) {
        synchronized (zzuF) {
            if (this.zzaEj == zzbbw) {
                this.zzaEj = null;
                this.zzaEk.clear();
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final boolean zzc(ConnectionResult connectionResult, int i) {
        return this.zzaBd.zza(this.mContext, connectionResult, i);
    }

    /* Access modifiers changed, original: final */
    public final void zzpl() {
        this.zzaEi.incrementAndGet();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(10));
    }

    public final void zzps() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
    }

    public final int zzqm() {
        return this.zzaEh.getAndIncrement();
    }
}
