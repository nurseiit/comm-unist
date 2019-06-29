package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

final class wy {
    private StringBuilder zzchY = null;
    private Stack<wp> zzchZ = new Stack();
    private int zzcia = -1;
    private int zzcib;
    private boolean zzcic = true;
    private final List<qr> zzcid = new ArrayList();
    private final List<String> zzcie = new ArrayList();
    private final xa zzcif;

    public wy(xa xaVar) {
        this.zzcif = xaVar;
    }

    private final boolean zzIU() {
        return this.zzchY != null;
    }

    private final void zzIX() {
        if (!zzIU()) {
            this.zzchY = new StringBuilder();
            this.zzchY.append("(");
            Iterator it = zzbY(this.zzcib).iterator();
            while (it.hasNext()) {
                zza(this.zzchY, (wp) it.next());
                this.zzchY.append(":(");
            }
            this.zzcic = false;
        }
    }

    private final void zzIY() {
        this.zzcib--;
        if (zzIU()) {
            this.zzchY.append(")");
        }
        this.zzcic = true;
    }

    private final void zzIZ() {
        zd.zzb(this.zzcib == 0, "Can't finish hashing in the middle processing a child");
        if (zzIU()) {
            zzJa();
        }
        this.zzcie.add("");
    }

    private final void zzJa() {
        zd.zzb(zzIU(), "Can't end range without starting a range!");
        for (int i = 0; i < this.zzcib; i++) {
            this.zzchY.append(")");
        }
        this.zzchY.append(")");
        qr zzbY = zzbY(this.zzcia);
        this.zzcie.add(zd.zzgY(this.zzchY.toString()));
        this.zzcid.add(zzbY);
        this.zzchY = null;
    }

    private static void zza(StringBuilder stringBuilder, wp wpVar) {
        stringBuilder.append(zd.zzgZ(wpVar.asString()));
    }

    private final void zzb(xh<?> xhVar) {
        zzIX();
        this.zzcia = this.zzcib;
        this.zzchY.append(xhVar.zza(xo.V2));
        this.zzcic = true;
        if (this.zzcif.zze(this)) {
            zzJa();
        }
    }

    private final qr zzbY(int i) {
        wp[] wpVarArr = new wp[i];
        for (int i2 = 0; i2 < i; i2++) {
            wpVarArr[i2] = (wp) this.zzchZ.get(i2);
        }
        return new qr(wpVarArr);
    }

    private final void zzn(wp wpVar) {
        zzIX();
        if (this.zzcic) {
            this.zzchY.append(",");
        }
        zza(this.zzchY, wpVar);
        this.zzchY.append(":(");
        if (this.zzcib == this.zzchZ.size()) {
            this.zzchZ.add(wpVar);
        } else {
            this.zzchZ.set(this.zzcib, wpVar);
        }
        this.zzcib++;
        this.zzcic = false;
    }

    public final int zzIV() {
        return this.zzchY.length();
    }

    public final qr zzIW() {
        return zzbY(this.zzcib);
    }
}
