package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;

@zzzn
public final class zzgv {
    private final Object zzyn = new Object();
    private zzgw zzyo = null;
    private boolean zzyp = false;

    @Nullable
    public final Activity getActivity() {
        synchronized (this.zzyn) {
            if (this.zzyo != null) {
                Activity activity = this.zzyo.getActivity();
                return activity;
            }
            return null;
        }
    }

    @Nullable
    public final Context getContext() {
        synchronized (this.zzyn) {
            if (this.zzyo != null) {
                Context context = this.zzyo.getContext();
                return context;
            }
            return null;
        }
    }

    /* JADX WARNING: Missing block: B:24:0x0047, code skipped:
            return;
     */
    public final void initialize(android.content.Context r5) {
        /*
        r4 = this;
        r0 = r4.zzyn;
        monitor-enter(r0);
        r1 = r4.zzyp;	 Catch:{ all -> 0x0048 }
        if (r1 != 0) goto L_0x0046;
    L_0x0007:
        r1 = com.google.android.gms.internal.zzmo.zzDJ;	 Catch:{ all -> 0x0048 }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ all -> 0x0048 }
        r1 = r2.zzd(r1);	 Catch:{ all -> 0x0048 }
        r1 = (java.lang.Boolean) r1;	 Catch:{ all -> 0x0048 }
        r1 = r1.booleanValue();	 Catch:{ all -> 0x0048 }
        if (r1 != 0) goto L_0x001b;
    L_0x0019:
        monitor-exit(r0);	 Catch:{ all -> 0x0048 }
        return;
    L_0x001b:
        r1 = 0;
        r2 = r5.getApplicationContext();	 Catch:{ all -> 0x0048 }
        if (r2 != 0) goto L_0x0023;
    L_0x0022:
        r2 = r5;
    L_0x0023:
        r3 = r2 instanceof android.app.Application;	 Catch:{ all -> 0x0048 }
        if (r3 == 0) goto L_0x002a;
    L_0x0027:
        r1 = r2;
        r1 = (android.app.Application) r1;	 Catch:{ all -> 0x0048 }
    L_0x002a:
        if (r1 != 0) goto L_0x0033;
    L_0x002c:
        r5 = "Can not cast Context to Application";
        com.google.android.gms.internal.zzajc.zzaT(r5);	 Catch:{ all -> 0x0048 }
        monitor-exit(r0);	 Catch:{ all -> 0x0048 }
        return;
    L_0x0033:
        r2 = r4.zzyo;	 Catch:{ all -> 0x0048 }
        if (r2 != 0) goto L_0x003e;
    L_0x0037:
        r2 = new com.google.android.gms.internal.zzgw;	 Catch:{ all -> 0x0048 }
        r2.<init>();	 Catch:{ all -> 0x0048 }
        r4.zzyo = r2;	 Catch:{ all -> 0x0048 }
    L_0x003e:
        r2 = r4.zzyo;	 Catch:{ all -> 0x0048 }
        r2.zza(r1, r5);	 Catch:{ all -> 0x0048 }
        r5 = 1;
        r4.zzyp = r5;	 Catch:{ all -> 0x0048 }
    L_0x0046:
        monitor-exit(r0);	 Catch:{ all -> 0x0048 }
        return;
    L_0x0048:
        r5 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0048 }
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzgv.initialize(android.content.Context):void");
    }

    public final void zza(zzgy zzgy) {
        synchronized (this.zzyn) {
            if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDJ)).booleanValue()) {
                if (this.zzyo == null) {
                    this.zzyo = new zzgw();
                }
                this.zzyo.zza(zzgy);
                return;
            }
        }
    }
}
