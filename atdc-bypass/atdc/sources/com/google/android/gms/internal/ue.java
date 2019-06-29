package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;

public final class ue implements uh {
    private final wl zzbZE;
    private final ui zzcfX;
    private final uo zzcfY;
    private final uc zzcfZ;
    private long zzcga;

    public ue(qd qdVar, ui uiVar, uc ucVar) {
        this(qdVar, uiVar, ucVar, new yt());
    }

    private ue(qd qdVar, ui uiVar, uc ucVar, ys ysVar) {
        this.zzcga = 0;
        this.zzcfX = uiVar;
        this.zzbZE = qdVar.zzgP("Persistence");
        this.zzcfY = new uo(this.zzcfX, this.zzbZE, ysVar);
        this.zzcfZ = ucVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x007a  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0089 A:{SYNTHETIC} */
    private final void zzHM() {
        /*
        r8 = this;
        r0 = r8.zzcga;
        r2 = 1;
        r4 = r0 + r2;
        r8.zzcga = r4;
        r0 = r8.zzcfZ;
        r1 = r8.zzcga;
        r0 = r0.zzax(r1);
        if (r0 == 0) goto L_0x0095;
    L_0x0012:
        r0 = r8.zzbZE;
        r0 = r0.zzIH();
        r1 = 0;
        r2 = 0;
        if (r0 == 0) goto L_0x0025;
    L_0x001c:
        r0 = r8.zzbZE;
        r3 = "Reached prune check threshold.";
        r4 = new java.lang.Object[r2];
        r0.zzb(r3, r1, r4);
    L_0x0025:
        r3 = 0;
        r8.zzcga = r3;
        r0 = 1;
        r3 = r8.zzcfX;
        r3 = r3.zzFt();
        r5 = r8.zzbZE;
        r5 = r5.zzIH();
        if (r5 == 0) goto L_0x0052;
    L_0x0038:
        r5 = r8.zzbZE;
        r6 = 32;
        r7 = new java.lang.StringBuilder;
        r7.<init>(r6);
        r6 = "Cache size: ";
    L_0x0043:
        r7.append(r6);
        r7.append(r3);
        r6 = r7.toString();
        r7 = new java.lang.Object[r2];
        r5.zzb(r6, r1, r7);
    L_0x0052:
        if (r0 == 0) goto L_0x0095;
    L_0x0054:
        r5 = r8.zzcfZ;
        r6 = r8.zzcfY;
        r6 = r6.zzHP();
        r3 = r5.zzi(r3, r6);
        if (r3 == 0) goto L_0x0095;
    L_0x0062:
        r3 = r8.zzcfY;
        r4 = r8.zzcfZ;
        r3 = r3.zza(r4);
        r4 = r3.zzHN();
        if (r4 == 0) goto L_0x007a;
    L_0x0070:
        r4 = r8.zzcfX;
        r5 = com.google.android.gms.internal.qr.zzGZ();
        r4.zza(r5, r3);
        goto L_0x007b;
    L_0x007a:
        r0 = 0;
    L_0x007b:
        r3 = r8.zzcfX;
        r3 = r3.zzFt();
        r5 = r8.zzbZE;
        r5 = r5.zzIH();
        if (r5 == 0) goto L_0x0052;
    L_0x0089:
        r5 = r8.zzbZE;
        r6 = 44;
        r7 = new java.lang.StringBuilder;
        r7.<init>(r6);
        r6 = "Cache size after prune: ";
        goto L_0x0043;
    L_0x0095:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ue.zzHM():void");
    }

    public final List<tm> zzFs() {
        return this.zzcfX.zzFs();
    }

    public final void zzFv() {
        this.zzcfX.zzFv();
    }

    public final void zza(qr qrVar, pz pzVar, long j) {
        this.zzcfX.zza(qrVar, pzVar, j);
    }

    public final void zza(qr qrVar, xm xmVar, long j) {
        this.zzcfX.zza(qrVar, xmVar, j);
    }

    public final void zza(vt vtVar, xm xmVar) {
        if (vtVar.zzIq()) {
            this.zzcfX.zza(vtVar.zzFq(), xmVar);
        } else {
            this.zzcfX.zzb(vtVar.zzFq(), xmVar);
        }
        zzi(vtVar);
        zzHM();
    }

    public final void zza(vt vtVar, Set<wp> set) {
        this.zzcfX.zza(this.zzcfY.zzk(vtVar).id, (Set) set);
    }

    public final void zza(vt vtVar, Set<wp> set, Set<wp> set2) {
        this.zzcfX.zza(this.zzcfY.zzk(vtVar).id, (Set) set, (Set) set2);
    }

    public final void zzal(long j) {
        this.zzcfX.zzal(j);
    }

    public final void zzc(qr qrVar, pz pzVar) {
        Iterator it = pzVar.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            zzk(qrVar.zzh((qr) entry.getKey()), (xm) entry.getValue());
        }
    }

    public final void zzd(qr qrVar, pz pzVar) {
        this.zzcfX.zza(qrVar, pzVar);
        zzHM();
    }

    public final vg zzf(vt vtVar) {
        boolean z;
        Set zzao;
        if (this.zzcfY.zzm(vtVar)) {
            un zzk = this.zzcfY.zzk(vtVar);
            zzao = (vtVar.zzIq() || zzk == null || !zzk.complete) ? null : this.zzcfX.zzao(zzk.id);
            z = true;
        } else {
            zzao = this.zzcfY.zzA(vtVar.zzFq());
            z = false;
        }
        xm zza = this.zzcfX.zza(vtVar.zzFq());
        if (zzao == null) {
            return new vg(xf.zza(zza, vtVar.zzIm()), true, false);
        }
        xm zzJb = xd.zzJb();
        for (wp wpVar : zzao) {
            zzJb = zzJb.zze(wpVar, zza.zzm(wpVar));
        }
        return new vg(xf.zza(zzJb, vtVar.zzIm()), z, true);
    }

    public final <T> T zzg(Callable<T> callable) {
        this.zzcfX.beginTransaction();
        try {
            Object call = callable.call();
            this.zzcfX.setTransactionSuccessful();
            this.zzcfX.endTransaction();
            return call;
        } catch (Throwable th) {
            this.zzcfX.endTransaction();
        }
    }

    public final void zzg(vt vtVar) {
        this.zzcfY.zzg(vtVar);
    }

    public final void zzh(vt vtVar) {
        this.zzcfY.zzh(vtVar);
    }

    public final void zzi(vt vtVar) {
        if (vtVar.zzIq()) {
            this.zzcfY.zzz(vtVar.zzFq());
        } else {
            this.zzcfY.zzl(vtVar);
        }
    }

    public final void zzk(qr qrVar, xm xmVar) {
        if (!this.zzcfY.zzC(qrVar)) {
            this.zzcfX.zza(qrVar, xmVar);
            this.zzcfY.zzB(qrVar);
        }
    }
}
