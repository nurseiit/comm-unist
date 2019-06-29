package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class tp {
    private static final uz<tm> zzcfv = new tr();
    private pz zzcfs = pz.zzGI();
    private List<tm> zzcft = new ArrayList();
    private Long zzcfu = Long.valueOf(-1);

    private static pz zza(List<tm> list, uz<tm> uzVar, qr qrVar) {
        pz zzGI = pz.zzGI();
        for (tm tmVar : list) {
            if (uzVar.zzaj(tmVar)) {
                xm zzf;
                qr zzFq = tmVar.zzFq();
                if (!tmVar.zzHw()) {
                    if (qrVar.zzi(zzFq)) {
                        zzFq = qr.zza(qrVar, zzFq);
                    } else if (zzFq.zzi(qrVar)) {
                        zzFq = qr.zza(zzFq, qrVar);
                        if (zzFq.isEmpty()) {
                            zzFq = qr.zzGZ();
                        } else {
                            zzf = tmVar.zzHv().zzf(zzFq);
                            if (zzf != null) {
                                zzFq = qr.zzGZ();
                            }
                        }
                    }
                    zzGI = zzGI.zzb(zzFq, tmVar.zzHv());
                } else if (qrVar.zzi(zzFq)) {
                    zzFq = qr.zza(qrVar, zzFq);
                    zzf = tmVar.zzHu();
                } else if (zzFq.zzi(qrVar)) {
                    zzGI = zzGI.zze(qr.zzGZ(), tmVar.zzHu().zzN(qr.zza(zzFq, qrVar)));
                }
                zzGI = zzGI.zze(zzFq, zzf);
            }
        }
        return zzGI;
    }

    public final List<tm> zzHz() {
        ArrayList arrayList = new ArrayList(this.zzcft);
        this.zzcfs = pz.zzGI();
        this.zzcft = new ArrayList();
        return arrayList;
    }

    public final xl zza(qr qrVar, xm xmVar, xl xlVar, boolean z, xe xeVar) {
        pz zzg = this.zzcfs.zzg(qrVar);
        xm zzf = zzg.zzf(qr.zzGZ());
        xl xlVar2 = null;
        if (zzf == null) {
            if (xmVar != null) {
                zzf = zzg.zzb(xmVar);
            }
            return xlVar2;
        }
        for (xl xlVar3 : zzf) {
            if (xeVar.zza(xlVar3, xlVar, z) > 0 && (r1 == null || xeVar.zza(xlVar3, r1, z) < 0)) {
                xlVar2 = xlVar3;
            }
        }
        return xlVar2;
    }

    public final xm zza(qr qrVar, qr qrVar2, xm xmVar, xm xmVar2) {
        qrVar = qrVar.zzh(qrVar2);
        if (this.zzcfs.zze(qrVar)) {
            return null;
        }
        pz zzg = this.zzcfs.zzg(qrVar);
        return zzg.isEmpty() ? xmVar2.zzN(qrVar2) : zzg.zzb(xmVar2.zzN(qrVar2));
    }

    public final xm zza(qr qrVar, wp wpVar, vg vgVar) {
        qrVar = qrVar.zza(wpVar);
        xm zzf = this.zzcfs.zzf(qrVar);
        return zzf != null ? zzf : vgVar.zzf(wpVar) ? this.zzcfs.zzg(qrVar).zzb(vgVar.zzFn().zzm(wpVar)) : null;
    }

    public final xm zza(qr qrVar, xm xmVar, List<Long> list, boolean z) {
        pz zza;
        if (!list.isEmpty() || z) {
            pz zzg = this.zzcfs.zzg(qrVar);
            if (!z && zzg.isEmpty()) {
                return xmVar;
            }
            if (!z && xmVar == null && !zzg.zze(qr.zzGZ())) {
                return null;
            }
            zza = zza(this.zzcft, new tq(this, z, list, qrVar), qrVar);
            if (xmVar == null) {
                xmVar = xd.zzJb();
            }
            return zza.zzb(xmVar);
        }
        xm zzf = this.zzcfs.zzf(qrVar);
        if (zzf != null) {
            return zzf;
        }
        zza = this.zzcfs.zzg(qrVar);
        if (zza.isEmpty()) {
            return xmVar;
        }
        if (xmVar == null && !zza.zze(qr.zzGZ())) {
            return null;
        }
        if (xmVar == null) {
            xmVar = xd.zzJb();
        }
        return zza.zzb(xmVar);
    }

    public final void zza(qr qrVar, pz pzVar, Long l) {
        this.zzcft.add(new tm(l.longValue(), qrVar, pzVar));
        this.zzcfs = this.zzcfs.zzb(qrVar, pzVar);
        this.zzcfu = l;
    }

    public final void zza(qr qrVar, xm xmVar, Long l, boolean z) {
        this.zzcft.add(new tm(l.longValue(), qrVar, xmVar, z));
        if (z) {
            this.zzcfs = this.zzcfs.zze(qrVar, xmVar);
        }
        this.zzcfu = l;
    }

    public final tm zzav(long j) {
        for (tm tmVar : this.zzcft) {
            if (tmVar.zzHt() == j) {
                return tmVar;
            }
        }
        return null;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:39:0x00d3 in {5, 6, 7, 16, 22, 23, 25, 28, 29, 31, 35, 37, 38, 43, 47, 48} preds:[]
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:242)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:42)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
        	at java.lang.Iterable.forEach(Iterable.java:75)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
        	at jadx.core.ProcessClass.process(ProcessClass.java:37)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    public final boolean zzaw(long r11) {
        /*
        r10 = this;
        r0 = r10.zzcft;
        r0 = r0.iterator();
        r1 = 0;
        r2 = 0;
        r3 = r0.hasNext();
        if (r3 == 0) goto L_0x0020;
        r3 = r0.next();
        r3 = (com.google.android.gms.internal.tm) r3;
        r4 = r3.zzHt();
        r6 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1));
        if (r6 != 0) goto L_0x001d;
        goto L_0x0021;
        r2 = r2 + 1;
        goto L_0x0008;
        r3 = 0;
        r11 = r10.zzcft;
        r11.remove(r3);
        r11 = r3.isVisible();
        r12 = r10.zzcft;
        r12 = r12.size();
        r0 = 1;
        r12 = r12 - r0;
        r4 = 0;
        if (r11 == 0) goto L_0x009b;
        if (r12 < 0) goto L_0x009b;
        r5 = r10.zzcft;
        r5 = r5.get(r12);
        r5 = (com.google.android.gms.internal.tm) r5;
        r6 = r5.isVisible();
        if (r6 == 0) goto L_0x0098;
        if (r12 < r2) goto L_0x0089;
        r6 = r3.zzFq();
        r7 = r5.zzHw();
        if (r7 == 0) goto L_0x005a;
        r7 = r5.zzFq();
        r6 = r7.zzi(r6);
        goto L_0x0085;
        r7 = r5.zzHv();
        r7 = r7.iterator();
        r8 = r7.hasNext();
        if (r8 == 0) goto L_0x0084;
        r8 = r7.next();
        r8 = (java.util.Map.Entry) r8;
        r9 = r5.zzFq();
        r8 = r8.getKey();
        r8 = (com.google.android.gms.internal.qr) r8;
        r8 = r9.zzh(r8);
        r8 = r8.zzi(r6);
        if (r8 == 0) goto L_0x0062;
        r6 = 1;
        goto L_0x0085;
        r6 = 0;
        if (r6 == 0) goto L_0x0089;
        r11 = 0;
        goto L_0x0098;
        r6 = r3.zzFq();
        r5 = r5.zzFq();
        r5 = r6.zzi(r5);
        if (r5 == 0) goto L_0x0098;
        r4 = 1;
        r12 = r12 + -1;
        goto L_0x0033;
        if (r11 != 0) goto L_0x009e;
        return r1;
        if (r4 == 0) goto L_0x00d4;
        r11 = r10.zzcft;
        r12 = zzcfv;
        r1 = com.google.android.gms.internal.qr.zzGZ();
        r11 = zza(r11, r12, r1);
        r10.zzcfs = r11;
        r11 = r10.zzcft;
        r11 = r11.size();
        if (r11 <= 0) goto L_0x00d0;
        r11 = r10.zzcft;
        r12 = r10.zzcft;
        r12 = r12.size();
        r12 = r12 - r0;
        r11 = r11.get(r12);
        r11 = (com.google.android.gms.internal.tm) r11;
        r11 = r11.zzHt();
        r11 = java.lang.Long.valueOf(r11);
        r10.zzcfu = r11;
        return r0;
        r11 = -1;
        goto L_0x00c9;
        return r0;
        r11 = r3.zzHw();
        if (r11 == 0) goto L_0x00e7;
        r11 = r10.zzcfs;
        r12 = r3.zzFq();
        r11 = r11.zzd(r12);
        r10.zzcfs = r11;
        return r0;
        r11 = r3.zzHv();
        r11 = r11.iterator();
        r12 = r11.hasNext();
        if (r12 == 0) goto L_0x0112;
        r12 = r11.next();
        r12 = (java.util.Map.Entry) r12;
        r12 = r12.getKey();
        r12 = (com.google.android.gms.internal.qr) r12;
        r1 = r10.zzcfs;
        r2 = r3.zzFq();
        r12 = r2.zzh(r12);
        r12 = r1.zzd(r12);
        r10.zzcfs = r12;
        goto L_0x00ef;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.tp.zzaw(long):boolean");
    }

    public final xm zzj(qr qrVar, xm xmVar) {
        xm zzJb = xd.zzJb();
        xm<xl> zzf = this.zzcfs.zzf(qrVar);
        if (zzf != null) {
            if (!zzf.zzIQ()) {
                for (xl xlVar : zzf) {
                    zzJb = zzJb.zze(xlVar.zzJk(), xlVar.zzFn());
                }
            }
            return zzJb;
        }
        pz zzg = this.zzcfs.zzg(qrVar);
        for (xl xlVar2 : xmVar) {
            zzJb = zzJb.zze(xlVar2.zzJk(), zzg.zzg(new qr(xlVar2.zzJk())).zzb(xlVar2.zzFn()));
        }
        for (xl xlVar3 : zzg.zzGK()) {
            zzJb = zzJb.zze(xlVar3.zzJk(), xlVar3.zzFn());
        }
        return zzJb;
    }

    public final ts zzt(qr qrVar) {
        return new ts(qrVar, this);
    }

    public final xm zzu(qr qrVar) {
        return this.zzcfs.zzf(qrVar);
    }
}
