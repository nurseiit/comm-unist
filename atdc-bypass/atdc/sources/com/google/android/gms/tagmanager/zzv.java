package com.google.android.gms.tagmanager;

import android.os.Looper;
import com.google.android.gms.common.api.Status;

final class zzv implements ContainerHolder {
    private Status mStatus;
    private boolean zzaNd;
    private Container zzbDE;
    private Container zzbDF;
    private zzx zzbDG;
    private zzw zzbDH;
    private TagManager zzbDI;
    private final Looper zzrM;

    public zzv(Status status) {
        this.mStatus = status;
        this.zzrM = null;
    }

    public zzv(TagManager tagManager, Looper looper, Container container, zzw zzw) {
        this.zzbDI = tagManager;
        if (looper == null) {
            looper = Looper.getMainLooper();
        }
        this.zzrM = looper;
        this.zzbDE = container;
        this.zzbDH = zzw;
        this.mStatus = Status.zzaBm;
        tagManager.zza(this);
    }

    private final void zzAL() {
        if (this.zzbDG != null) {
            zzx zzx = this.zzbDG;
            zzx.sendMessage(zzx.obtainMessage(1, this.zzbDF.zzAI()));
        }
    }

    public final synchronized Container getContainer() {
        if (this.zzaNd) {
            zzdj.e("ContainerHolder is released.");
            return null;
        }
        if (this.zzbDF != null) {
            this.zzbDE = this.zzbDF;
            this.zzbDF = null;
        }
        return this.zzbDE;
    }

    /* Access modifiers changed, original: final */
    public final String getContainerId() {
        if (!this.zzaNd) {
            return this.zzbDE.getContainerId();
        }
        zzdj.e("getContainerId called on a released ContainerHolder.");
        return "";
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final synchronized void refresh() {
        if (this.zzaNd) {
            zzdj.e("Refreshing a released ContainerHolder.");
        } else {
            this.zzbDH.zzAM();
        }
    }

    public final synchronized void release() {
        if (this.zzaNd) {
            zzdj.e("Releasing a released ContainerHolder.");
            return;
        }
        this.zzaNd = true;
        this.zzbDI.zzb(this);
        this.zzbDE.release();
        this.zzbDE = null;
        this.zzbDF = null;
        this.zzbDH = null;
        this.zzbDG = null;
    }

    /* JADX WARNING: Missing block: B:18:0x0024, code skipped:
            return;
     */
    public final synchronized void setContainerAvailableListener(com.google.android.gms.tagmanager.ContainerHolder.ContainerAvailableListener r3) {
        /*
        r2 = this;
        monitor-enter(r2);
        r0 = r2.zzaNd;	 Catch:{ all -> 0x0025 }
        if (r0 == 0) goto L_0x000c;
    L_0x0005:
        r3 = "ContainerHolder is released.";
        com.google.android.gms.tagmanager.zzdj.e(r3);	 Catch:{ all -> 0x0025 }
        monitor-exit(r2);
        return;
    L_0x000c:
        if (r3 != 0) goto L_0x0013;
    L_0x000e:
        r3 = 0;
        r2.zzbDG = r3;	 Catch:{ all -> 0x0025 }
        monitor-exit(r2);
        return;
    L_0x0013:
        r0 = new com.google.android.gms.tagmanager.zzx;	 Catch:{ all -> 0x0025 }
        r1 = r2.zzrM;	 Catch:{ all -> 0x0025 }
        r0.<init>(r2, r3, r1);	 Catch:{ all -> 0x0025 }
        r2.zzbDG = r0;	 Catch:{ all -> 0x0025 }
        r3 = r2.zzbDF;	 Catch:{ all -> 0x0025 }
        if (r3 == 0) goto L_0x0023;
    L_0x0020:
        r2.zzAL();	 Catch:{ all -> 0x0025 }
    L_0x0023:
        monitor-exit(r2);
        return;
    L_0x0025:
        r3 = move-exception;
        monitor-exit(r2);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzv.setContainerAvailableListener(com.google.android.gms.tagmanager.ContainerHolder$ContainerAvailableListener):void");
    }

    /* Access modifiers changed, original: final */
    public final String zzAK() {
        if (!this.zzaNd) {
            return this.zzbDH.zzAK();
        }
        zzdj.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        return "";
    }

    public final synchronized void zza(Container container) {
        if (!this.zzaNd) {
            this.zzbDF = container;
            zzAL();
        }
    }

    public final synchronized void zzeZ(String str) {
        if (!this.zzaNd) {
            this.zzbDE.zzeZ(str);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzfa(String str) {
        if (this.zzaNd) {
            zzdj.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        } else {
            this.zzbDH.zzfa(str);
        }
    }
}
