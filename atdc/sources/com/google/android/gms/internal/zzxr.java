package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.zzbo;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@zzzn
public abstract class zzxr implements zzahp<Void>, zzakf {
    protected final Context mContext;
    protected final zzaka zzJH;
    private zzxy zzQP;
    private zzafg zzQQ;
    protected zzaai zzQR;
    private Runnable zzQS;
    private Object zzQT = new Object();
    private AtomicBoolean zzQU = new AtomicBoolean(true);

    protected zzxr(Context context, zzafg zzafg, zzaka zzaka, zzxy zzxy) {
        this.mContext = context;
        this.zzQQ = zzafg;
        this.zzQR = this.zzQQ.zzXY;
        this.zzJH = zzaka;
        this.zzQP = zzxy;
    }

    public void cancel() {
        if (this.zzQU.getAndSet(false)) {
            this.zzJH.stopLoading();
            zzbs.zzbB();
            zzahe.zzk(this.zzJH);
            zzr(-1);
            zzagz.zzZr.removeCallbacks(this.zzQS);
        }
    }

    public final void zza(zzaka zzaka, boolean z) {
        zzajc.zzaC("WebView finished loading.");
        int i = 0;
        if (this.zzQU.getAndSet(false)) {
            if (z) {
                i = -2;
            }
            zzr(i);
            zzagz.zzZr.removeCallbacks(this.zzQS);
        }
    }

    public abstract void zzgo();

    public final /* synthetic */ Object zzgp() {
        zzbo.zzcz("Webview render task needs to be called on UI thread.");
        this.zzQS = new zzxs(this);
        zzagz.zzZr.postDelayed(this.zzQS, ((Long) zzbs.zzbL().zzd(zzmo.zzEL)).longValue());
        zzgo();
        return null;
    }

    /* Access modifiers changed, original: protected */
    public void zzr(int i) {
        int i2 = i;
        if (i2 != -2) {
            this.zzQR = new zzaai(i2, this.zzQR.zzMg);
        }
        this.zzJH.zzir();
        zzxy zzxy = this.zzQP;
        zzaae zzaae = this.zzQQ.zzUj;
        zzir zzir = zzaae.zzSz;
        zzaka zzaka = this.zzJH;
        List list = this.zzQR.zzMa;
        List list2 = this.zzQR.zzMb;
        List list3 = this.zzQR.zzTq;
        int i3 = this.zzQR.orientation;
        long j = this.zzQR.zzMg;
        String str = zzaae.zzSC;
        boolean z = this.zzQR.zzTo;
        long j2 = this.zzQR.zzTp;
        zziv zziv = this.zzQQ.zzvX;
        long j3 = j2;
        zzxy zzxy2 = zzxy;
        long j4 = this.zzQR.zzTn;
        long j5 = this.zzQQ.zzXR;
        long j6 = this.zzQR.zzTs;
        String str2 = this.zzQR.zzTt;
        JSONObject jSONObject = this.zzQQ.zzXL;
        zzaee zzaee = this.zzQR.zzTD;
        List list4 = this.zzQR.zzTE;
        List list5 = this.zzQR.zzTF;
        boolean z2 = this.zzQR.zzTG;
        zzaak zzaak = this.zzQR.zzTH;
        List list6 = this.zzQR.zzMd;
        String str3 = str2;
        zzut zzut = null;
        zzaff zzaff = r39;
        zzxy zzxy3 = zzxy2;
        String str4 = null;
        zzub zzub = null;
        zzud zzud = null;
        long j7 = j3;
        long j8 = j4;
        long j9 = j5;
        long j10 = j6;
        zzaff zzaff2 = new zzaff(zzir, zzaka, list, i2, list2, list3, i3, j, str, z, null, zzut, str4, zzub, zzud, j7, zziv, j8, j9, j10, str3, jSONObject, null, zzaee, list4, list5, z2, zzaak, null, list6, this.zzQR.zzTK, this.zzQQ.zzXX);
        zzxy3.zzb(zzaff);
    }
}
