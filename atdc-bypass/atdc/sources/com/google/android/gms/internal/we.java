package com.google.android.gms.internal;

import java.util.Iterator;

public final class we implements wf {
    private final int limit;
    private final xe zzcgV;
    private final boolean zzchA;
    private final wh zzchz;

    public we(vq vqVar) {
        this.zzchz = new wh(vqVar);
        this.zzcgV = vqVar.zzIm();
        this.limit = vqVar.getLimit();
        this.zzchA = vqVar.zzIo() ^ 1;
    }

    public final wf zzID() {
        return this.zzchz.zzID();
    }

    public final boolean zzIE() {
        return true;
    }

    public final xe zzIm() {
        return this.zzcgV;
    }

    public final xf zza(xf xfVar, wp wpVar, xm xmVar, qr qrVar, wg wgVar, wc wcVar) {
        if (!this.zzchz.zza(new xl(wpVar, xmVar))) {
            xmVar = xd.zzJb();
        }
        xm xmVar2 = xmVar;
        if (xfVar.zzFn().zzm(wpVar).equals(xmVar2)) {
            return xfVar;
        }
        if (xfVar.zzFn().getChildCount() < this.limit) {
            return this.zzchz.zzID().zza(xfVar, wpVar, xmVar2, qrVar, wgVar, wcVar);
        }
        xl xlVar = new xl(wpVar, xmVar2);
        xl zzJf = this.zzchA ? xfVar.zzJf() : xfVar.zzJg();
        boolean zza = this.zzchz.zza(xlVar);
        if (xfVar.zzFn().zzk(wpVar)) {
            xm zzm = xfVar.zzFn().zzm(wpVar);
            while (true) {
                zzJf = wgVar.zza(this.zzcgV, zzJf, this.zzchA);
                if (zzJf != null) {
                    if (!zzJf.zzJk().equals(wpVar)) {
                        if (!xfVar.zzFn().zzk(zzJf.zzJk())) {
                            break;
                        }
                    }
                } else {
                    break;
                }
            }
            Object obj = 1;
            Object obj2 = (!zza || xmVar2.isEmpty() || (zzJf == null ? 1 : this.zzcgV.zza(zzJf, xlVar, this.zzchA)) < 0) ? null : 1;
            if (obj2 != null) {
                if (wcVar != null) {
                    wcVar.zza(vi.zza(wpVar, xmVar2, zzm));
                }
                return xfVar.zzg(wpVar, xmVar2);
            }
            if (wcVar != null) {
                wcVar.zza(vi.zzd(wpVar, zzm));
            }
            xfVar = xfVar.zzg(wpVar, xd.zzJb());
            if (zzJf == null || !this.zzchz.zza(zzJf)) {
                obj = null;
            }
            if (obj != null) {
                if (wcVar != null) {
                    wcVar.zza(vi.zzc(zzJf.zzJk(), zzJf.zzFn()));
                }
                xfVar = xfVar.zzg(zzJf.zzJk(), zzJf.zzFn());
            }
            return xfVar;
        }
        if (!xmVar2.isEmpty() && zza && this.zzcgV.zza(zzJf, xlVar, this.zzchA) >= 0) {
            if (wcVar != null) {
                wcVar.zza(vi.zzd(zzJf.zzJk(), zzJf.zzFn()));
                wcVar.zza(vi.zzc(wpVar, xmVar2));
            }
            xfVar = xfVar.zzg(wpVar, xmVar2).zzg(zzJf.zzJk(), xd.zzJb());
        }
        return xfVar;
    }

    public final xf zza(xf xfVar, xf xfVar2, wc wcVar) {
        xf zza;
        if (xfVar2.zzFn().zzIQ() || xfVar2.zzFn().isEmpty()) {
            zza = xf.zza(xd.zzJb(), this.zzcgV);
        } else {
            Iterator zzFz;
            Object zzIF;
            int i;
            zza = xfVar2.zzk(xd.zzJb());
            Object zzIG;
            if (this.zzchA) {
                zzFz = xfVar2.zzFz();
                zzIG = this.zzchz.zzIG();
                zzIF = this.zzchz.zzIF();
                i = -1;
            } else {
                zzFz = xfVar2.iterator();
                zzIG = this.zzchz.zzIF();
                zzIF = this.zzchz.zzIG();
                i = 1;
            }
            Object obj = null;
            int i2 = 0;
            while (zzFz.hasNext()) {
                xl xlVar = (xl) zzFz.next();
                if (obj == null && this.zzcgV.compare(zzIG, xlVar) * i <= 0) {
                    obj = 1;
                }
                Object obj2 = (obj == null || i2 >= this.limit || this.zzcgV.compare(xlVar, zzIF) * i > 0) ? null : 1;
                if (obj2 != null) {
                    i2++;
                } else {
                    zza = zza.zzg(xlVar.zzJk(), xd.zzJb());
                }
            }
        }
        return this.zzchz.zzID().zza(xfVar, zza, wcVar);
    }

    public final xf zza(xf xfVar, xm xmVar) {
        return xfVar;
    }
}
