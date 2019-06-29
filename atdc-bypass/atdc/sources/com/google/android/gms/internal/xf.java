package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public final class xf implements Iterable<xl> {
    private static final nm<xl> zzcik = new nm(Collections.emptyList(), null);
    private final xe zzcgV;
    private final xm zzcil;
    private nm<xl> zzcim;

    private xf(xm xmVar, xe xeVar) {
        this.zzcgV = xeVar;
        this.zzcil = xmVar;
        this.zzcim = null;
    }

    private xf(xm xmVar, xe xeVar, nm<xl> nmVar) {
        this.zzcgV = xeVar;
        this.zzcil = xmVar;
        this.zzcim = nmVar;
    }

    private final void zzJe() {
        if (this.zzcim == null) {
            if (!this.zzcgV.equals(xg.zzJh())) {
                ArrayList arrayList = new ArrayList();
                Object obj = null;
                for (xl xlVar : this.zzcil) {
                    obj = (obj != null || this.zzcgV.zzi(xlVar.zzFn())) ? 1 : null;
                    arrayList.add(new xl(xlVar.zzJk(), xlVar.zzFn()));
                }
                if (obj != null) {
                    this.zzcim = new nm(arrayList, this.zzcgV);
                    return;
                }
            }
            this.zzcim = zzcik;
        }
    }

    public static xf zza(xm xmVar, xe xeVar) {
        return new xf(xmVar, xeVar);
    }

    public static xf zzj(xm xmVar) {
        return new xf(xmVar, xr.zzJl());
    }

    public final Iterator<xl> iterator() {
        zzJe();
        return this.zzcim == zzcik ? this.zzcil.iterator() : this.zzcim.iterator();
    }

    public final xm zzFn() {
        return this.zzcil;
    }

    public final Iterator<xl> zzFz() {
        zzJe();
        return this.zzcim == zzcik ? this.zzcil.zzFz() : this.zzcim.zzFz();
    }

    public final xl zzJf() {
        if (!(this.zzcil instanceof wr)) {
            return null;
        }
        zzJe();
        if (this.zzcim != zzcik) {
            return (xl) this.zzcim.zzFB();
        }
        wp zzIS = ((wr) this.zzcil).zzIS();
        return new xl(zzIS, this.zzcil.zzm(zzIS));
    }

    public final xl zzJg() {
        if (!(this.zzcil instanceof wr)) {
            return null;
        }
        zzJe();
        if (this.zzcim != zzcik) {
            return (xl) this.zzcim.zzFC();
        }
        wp zzIT = ((wr) this.zzcil).zzIT();
        return new xl(zzIT, this.zzcil.zzm(zzIT));
    }

    public final wp zza(wp wpVar, xm xmVar, xe xeVar) {
        if (this.zzcgV.equals(xg.zzJh()) || this.zzcgV.equals(xeVar)) {
            zzJe();
            if (this.zzcim == zzcik) {
                return this.zzcil.zzl(wpVar);
            }
            xl xlVar = (xl) this.zzcim.zzae(new xl(wpVar, xmVar));
            return xlVar != null ? xlVar.zzJk() : null;
        } else {
            throw new IllegalArgumentException("Index not available in IndexedNode!");
        }
    }

    public final xf zzg(wp wpVar, xm xmVar) {
        xm zze = this.zzcil.zze(wpVar, xmVar);
        if (this.zzcim == zzcik && !this.zzcgV.zzi(xmVar)) {
            return new xf(zze, this.zzcgV, zzcik);
        }
        if (this.zzcim == null || this.zzcim == zzcik) {
            return new xf(zze, this.zzcgV, null);
        }
        nm zzac = this.zzcim.zzac(new xl(wpVar, this.zzcil.zzm(wpVar)));
        if (!xmVar.isEmpty()) {
            zzac = zzac.zzad(new xl(wpVar, xmVar));
        }
        return new xf(zze, this.zzcgV, zzac);
    }

    public final xf zzk(xm xmVar) {
        return new xf(this.zzcil.zzf(xmVar), this.zzcgV, this.zzcim);
    }
}
