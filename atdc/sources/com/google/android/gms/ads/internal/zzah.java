package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.zzagt;
import com.google.android.gms.internal.zzaiy;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzcp;
import com.google.android.gms.internal.zzct;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzzn;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@zzzn
final class zzah implements zzcp, Runnable {
    private zzbt zzsP;
    private final List<Object[]> zztH = new Vector();
    private final AtomicReference<zzcp> zztI = new AtomicReference();
    private CountDownLatch zztJ = new CountDownLatch(1);

    public zzah(zzbt zzbt) {
        this.zzsP = zzbt;
        zzji.zzds();
        if (zzaiy.zzil()) {
            zzagt.zza((Runnable) this);
        } else {
            run();
        }
    }

    private final boolean zzaU() {
        try {
            this.zztJ.await();
            return true;
        } catch (InterruptedException e) {
            zzajc.zzc("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    private final void zzaV() {
        if (!this.zztH.isEmpty()) {
            for (Object[] objArr : this.zztH) {
                if (objArr.length == 1) {
                    ((zzcp) this.zztI.get()).zza((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    ((zzcp) this.zztI.get()).zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.zztH.clear();
        }
    }

    private static Context zze(Context context) {
        if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzCi)).booleanValue()) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final void run() {
        boolean z = false;
        try {
            boolean z2 = this.zzsP.zzvT.zzaaQ;
            if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzDO)).booleanValue() && z2) {
                z = true;
            }
            this.zztI.set(zzct.zza(this.zzsP.zzvT.zzaP, zze(this.zzsP.zzqD), z));
        } finally {
            this.zztJ.countDown();
            this.zzsP = null;
        }
    }

    public final String zza(Context context) {
        if (zzaU()) {
            zzcp zzcp = (zzcp) this.zztI.get();
            if (zzcp != null) {
                zzaV();
                return zzcp.zza(zze(context));
            }
        }
        return "";
    }

    public final String zza(Context context, String str, View view) {
        if (zzaU()) {
            zzcp zzcp = (zzcp) this.zztI.get();
            if (zzcp != null) {
                zzaV();
                return zzcp.zza(zze(context), str, view);
            }
        }
        return "";
    }

    public final void zza(int i, int i2, int i3) {
        zzcp zzcp = (zzcp) this.zztI.get();
        if (zzcp != null) {
            zzaV();
            zzcp.zza(i, i2, i3);
            return;
        }
        this.zztH.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    public final void zza(MotionEvent motionEvent) {
        zzcp zzcp = (zzcp) this.zztI.get();
        if (zzcp != null) {
            zzaV();
            zzcp.zza(motionEvent);
            return;
        }
        this.zztH.add(new Object[]{motionEvent});
    }
}
