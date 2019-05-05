package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.ef;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.zzbbe;
import com.google.android.gms.internal.zzbn;
import com.google.android.gms.internal.zzbq;

public final class zzy extends zzbbe<ContainerHolder> {
    private final Context mContext;
    private long zzbDB;
    private final TagManager zzbDI;
    private final zzaf zzbDL;
    private final zzek zzbDM;
    private final int zzbDN;
    private final zzai zzbDO;
    private zzah zzbDP;
    private ef zzbDQ;
    private volatile zzv zzbDR;
    private volatile boolean zzbDS;
    private zzbq zzbDT;
    private String zzbDU;
    private zzag zzbDV;
    private zzac zzbDW;
    private final String zzbDw;
    private final Looper zzrM;
    private final zze zzvw;

    private zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzah zzah, zzag zzag, ef efVar, zze zze, zzek zzek, zzai zzai) {
        super(looper == null ? Looper.getMainLooper() : looper);
        this.mContext = context;
        this.zzbDI = tagManager;
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        this.zzrM = looper;
        this.zzbDw = str;
        this.zzbDN = i;
        this.zzbDP = zzah;
        this.zzbDV = zzag;
        this.zzbDQ = efVar;
        this.zzbDL = new zzaf(this, null);
        this.zzbDT = new zzbq();
        this.zzvw = zze;
        this.zzbDM = zzek;
        this.zzbDO = zzai;
        if (zzAQ()) {
            zzfa(zzei.zzBD().zzBF());
        }
    }

    public zzy(Context context, TagManager tagManager, Looper looper, String str, int i, zzal zzal) {
        Context context2 = context;
        String str2 = str;
        this(context2, tagManager, looper, str2, i, new zzey(context2, str2), new zzet(context2, str2, zzal), new ef(context2), zzi.zzrY(), new zzdh(1, 5, 900000, 5000, "refreshing", zzi.zzrY()), new zzai(context2, str2));
        this.zzbDQ.zzgc(zzal.zzAX());
    }

    private final boolean zzAQ() {
        zzei zzBD = zzei.zzBD();
        return (zzBD.zzBE() == zza.CONTAINER || zzBD.zzBE() == zza.CONTAINER_DEBUG) && this.zzbDw.equals(zzBD.getContainerId());
    }

    private final synchronized void zza(zzbq zzbq) {
        if (this.zzbDP != null) {
            ee eeVar = new ee();
            eeVar.zzbLG = this.zzbDB;
            eeVar.zzlB = new zzbn();
            eeVar.zzbLH = zzbq;
            this.zzbDP.zza(eeVar);
        }
    }

    /* JADX WARNING: Missing block: B:23:0x0076, code skipped:
            return;
     */
    private final synchronized void zza(com.google.android.gms.internal.zzbq r11, long r12, boolean r14) {
        /*
        r10 = this;
        monitor-enter(r10);
        if (r14 == 0) goto L_0x0008;
    L_0x0003:
        r14 = r10.zzbDS;	 Catch:{ all -> 0x0006 }
        goto L_0x0008;
    L_0x0006:
        r11 = move-exception;
        goto L_0x0077;
    L_0x0008:
        r14 = r10.isReady();	 Catch:{ all -> 0x0006 }
        if (r14 == 0) goto L_0x0014;
    L_0x000e:
        r14 = r10.zzbDR;	 Catch:{ all -> 0x0006 }
        if (r14 != 0) goto L_0x0014;
    L_0x0012:
        monitor-exit(r10);
        return;
    L_0x0014:
        r10.zzbDT = r11;	 Catch:{ all -> 0x0006 }
        r10.zzbDB = r12;	 Catch:{ all -> 0x0006 }
        r14 = r10.zzbDO;	 Catch:{ all -> 0x0006 }
        r0 = r14.zzAS();	 Catch:{ all -> 0x0006 }
        r2 = 0;
        r4 = r10.zzbDB;	 Catch:{ all -> 0x0006 }
        r14 = 0;
        r6 = r4 + r0;
        r14 = r10.zzvw;	 Catch:{ all -> 0x0006 }
        r4 = r14.currentTimeMillis();	 Catch:{ all -> 0x0006 }
        r14 = 0;
        r8 = r6 - r4;
        r0 = java.lang.Math.min(r0, r8);	 Catch:{ all -> 0x0006 }
        r0 = java.lang.Math.max(r2, r0);	 Catch:{ all -> 0x0006 }
        r10.zzag(r0);	 Catch:{ all -> 0x0006 }
        r14 = new com.google.android.gms.tagmanager.Container;	 Catch:{ all -> 0x0006 }
        r3 = r10.mContext;	 Catch:{ all -> 0x0006 }
        r0 = r10.zzbDI;	 Catch:{ all -> 0x0006 }
        r4 = r0.getDataLayer();	 Catch:{ all -> 0x0006 }
        r5 = r10.zzbDw;	 Catch:{ all -> 0x0006 }
        r2 = r14;
        r6 = r12;
        r8 = r11;
        r2.<init>(r3, r4, r5, r6, r8);	 Catch:{ all -> 0x0006 }
        r11 = r10.zzbDR;	 Catch:{ all -> 0x0006 }
        if (r11 != 0) goto L_0x005d;
    L_0x004f:
        r11 = new com.google.android.gms.tagmanager.zzv;	 Catch:{ all -> 0x0006 }
        r12 = r10.zzbDI;	 Catch:{ all -> 0x0006 }
        r13 = r10.zzrM;	 Catch:{ all -> 0x0006 }
        r0 = r10.zzbDL;	 Catch:{ all -> 0x0006 }
        r11.<init>(r12, r13, r14, r0);	 Catch:{ all -> 0x0006 }
        r10.zzbDR = r11;	 Catch:{ all -> 0x0006 }
        goto L_0x0062;
    L_0x005d:
        r11 = r10.zzbDR;	 Catch:{ all -> 0x0006 }
        r11.zza(r14);	 Catch:{ all -> 0x0006 }
    L_0x0062:
        r11 = r10.isReady();	 Catch:{ all -> 0x0006 }
        if (r11 != 0) goto L_0x0075;
    L_0x0068:
        r11 = r10.zzbDW;	 Catch:{ all -> 0x0006 }
        r11 = r11.zzb(r14);	 Catch:{ all -> 0x0006 }
        if (r11 == 0) goto L_0x0075;
    L_0x0070:
        r11 = r10.zzbDR;	 Catch:{ all -> 0x0006 }
        r10.setResult(r11);	 Catch:{ all -> 0x0006 }
    L_0x0075:
        monitor-exit(r10);
        return;
    L_0x0077:
        monitor-exit(r10);
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzy.zza(com.google.android.gms.internal.zzbq, long, boolean):void");
    }

    private final synchronized void zzag(long j) {
        if (this.zzbDV == null) {
            zzdj.zzaT("Refresh requested, but no network load scheduler.");
        } else {
            this.zzbDV.zza(j, this.zzbDT.zzlC);
        }
    }

    private final void zzaq(boolean z) {
        this.zzbDP.zza(new zzad(this, null));
        this.zzbDV.zza(new zzae(this, null));
        ek zzbx = this.zzbDP.zzbx(this.zzbDN);
        if (zzbx != null) {
            this.zzbDR = new zzv(this.zzbDI, this.zzrM, new Container(this.mContext, this.zzbDI.getDataLayer(), this.zzbDw, 0, zzbx), this.zzbDL);
        }
        this.zzbDW = new zzab(this, z);
        if (zzAQ()) {
            this.zzbDV.zza(0, "");
        } else {
            this.zzbDP.zzAR();
        }
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized String zzAK() {
        return this.zzbDU;
    }

    public final void zzAN() {
        ek zzbx = this.zzbDP.zzbx(this.zzbDN);
        if (zzbx != null) {
            setResult(new zzv(this.zzbDI, this.zzrM, new Container(this.mContext, this.zzbDI.getDataLayer(), this.zzbDw, 0, zzbx), new zzaa(this)));
        } else {
            String str = "Default was requested, but no default container was found";
            zzdj.e(str);
            setResult(zzb(new Status(10, str, null)));
        }
        this.zzbDV = null;
        this.zzbDP = null;
    }

    public final void zzAO() {
        zzaq(false);
    }

    public final void zzAP() {
        zzaq(true);
    }

    /* Access modifiers changed, original: protected|final */
    /* renamed from: zzI */
    public final ContainerHolder zzb(Status status) {
        if (this.zzbDR != null) {
            return this.zzbDR;
        }
        if (status == Status.zzaBp) {
            zzdj.e("timer expired: setting result to failure");
        }
        return new zzv(status);
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized void zzfa(String str) {
        this.zzbDU = str;
        if (this.zzbDV != null) {
            this.zzbDV.zzfb(str);
        }
    }
}
