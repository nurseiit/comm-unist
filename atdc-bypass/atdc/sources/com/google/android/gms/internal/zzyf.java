package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbb;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

@zzzn
public final class zzyf extends zzafp {
    private final Object mLock;
    private final zzxy zzQP;
    private final zzafg zzQQ;
    private final zzaai zzQR;
    private final zzyn zzRg;
    private Future<zzaff> zzRh;

    public zzyf(Context context, zzbb zzbb, zzafg zzafg, zzcu zzcu, zzxy zzxy, zznb zznb) {
        this(zzafg, zzxy, new zzyn(context, zzbb, new zzaie(context), zzcu, zzafg, zznb));
    }

    private zzyf(zzafg zzafg, zzxy zzxy, zzyn zzyn) {
        this.mLock = new Object();
        this.zzQQ = zzafg;
        this.zzQR = zzafg.zzXY;
        this.zzQP = zzxy;
        this.zzRg = zzyn;
    }

    public final void onStop() {
        synchronized (this.mLock) {
            if (this.zzRh != null) {
                this.zzRh.cancel(true);
            }
        }
    }

    public final void zzbd() {
        int i;
        zzaff zzaff;
        zzaff zzaff2 = null;
        try {
            synchronized (this.mLock) {
                this.zzRh = zzagt.zza(this.zzRg);
            }
            zzaff2 = (zzaff) this.zzRh.get(60000, TimeUnit.MILLISECONDS);
            i = -2;
        } catch (TimeoutException unused) {
            zzajc.zzaT("Timed out waiting for native ad.");
            this.zzRh.cancel(true);
            i = 2;
        } catch (InterruptedException | CancellationException | ExecutionException unused2) {
            i = 0;
        } catch (Throwable th) {
            while (true) {
                Throwable th2 = th;
            }
        }
        if (zzaff2 != null) {
            zzaff = zzaff2;
        } else {
            zzir zzir = this.zzQQ.zzUj.zzSz;
            int i2 = this.zzQR.orientation;
            long j = this.zzQR.zzMg;
            String str = this.zzQQ.zzUj.zzSC;
            long j2 = this.zzQR.zzTp;
            zziv zziv = this.zzQQ.zzvX;
            int i3 = i2;
            long j3 = this.zzQR.zzTn;
            long j4 = this.zzQQ.zzXR;
            long j5 = this.zzQR.zzTs;
            String str2 = this.zzQR.zzTt;
            JSONObject jSONObject = this.zzQQ.zzXL;
            boolean z = this.zzQQ.zzXY.zzTG;
            long j6 = j2;
            zzaak zzaak = this.zzQQ.zzXY.zzTH;
            boolean z2 = z;
            JSONObject jSONObject2 = jSONObject;
            String str3 = str2;
            long j7 = j5;
            long j8 = j3;
            long j9 = j4;
            i2 = i3;
            zziv zziv2 = zziv;
            zzaak zzaak2 = zzaak;
            zzaff zzaff3 = new zzaff(zzir, null, null, i, null, null, i2, j, str, false, null, null, null, null, null, j6, zziv2, j8, j9, j7, str3, jSONObject2, null, null, null, null, z2, zzaak2, null, null, this.zzQR.zzTK, this.zzQQ.zzXX);
        }
        zzagz.zzZr.post(new zzyg(this, zzaff));
    }
}
