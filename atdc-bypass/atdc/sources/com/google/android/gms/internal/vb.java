package com.google.android.gms.internal;

import java.util.Map.Entry;

public final class vb<T> {
    private vf<T> zzcgA;
    private wp zzcgy;
    private vb<T> zzcgz;

    public vb() {
        this(null, null, new vf());
    }

    private vb(wp wpVar, vb<T> vbVar, vf<T> vfVar) {
        this.zzcgy = wpVar;
        this.zzcgz = vbVar;
        this.zzcgA = vfVar;
    }

    private final void zzHT() {
        vb vbVar = this;
        while (vbVar.zzcgz != null) {
            vb vbVar2 = vbVar.zzcgz;
            wp wpVar = vbVar.zzcgy;
            Object obj = (vbVar.zzcgA.value == null && vbVar.zzcgA.zzceA.isEmpty()) ? 1 : null;
            boolean containsKey = vbVar2.zzcgA.zzceA.containsKey(wpVar);
            if (obj != null && containsKey) {
                vbVar2.zzcgA.zzceA.remove(wpVar);
            } else if (obj == null && !containsKey) {
                vbVar2.zzcgA.zzceA.put(wpVar, vbVar.zzcgA);
            } else {
                return;
            }
            vbVar = vbVar2;
        }
    }

    public final T getValue() {
        return this.zzcgA.value;
    }

    public final boolean hasChildren() {
        return !this.zzcgA.zzceA.isEmpty();
    }

    public final void setValue(T t) {
        this.zzcgA.value = t;
        zzHT();
    }

    public final String toString() {
        String str = "";
        Object asString = this.zzcgy == null ? "<anon>" : this.zzcgy.asString();
        String valueOf = String.valueOf(this.zzcgA.toString(String.valueOf(str).concat("\t")));
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str).length() + 1) + String.valueOf(asString).length()) + String.valueOf(valueOf).length());
        stringBuilder.append(str);
        stringBuilder.append(asString);
        stringBuilder.append("\n");
        stringBuilder.append(valueOf);
        return stringBuilder.toString();
    }

    public final qr zzFq() {
        if (this.zzcgz != null) {
            return this.zzcgz.zzFq().zza(this.zzcgy);
        }
        if (this.zzcgy == null) {
            return qr.zzGZ();
        }
        return new qr(this.zzcgy);
    }

    public final vb<T> zzK(qr qrVar) {
        Object zzHc = qrVar.zzHc();
        qr qrVar2 = qrVar;
        vb vbVar = this;
        while (zzHc != null) {
            vb vbVar2 = new vb(zzHc, vbVar, vbVar.zzcgA.zzceA.containsKey(zzHc) ? (vf) vbVar.zzcgA.zzceA.get(zzHc) : new vf());
            qrVar2 = qrVar2.zzHd();
            zzHc = qrVar2.zzHc();
            vbVar = vbVar2;
        }
        return vbVar;
    }

    public final void zza(ve<T> veVar) {
        Object[] toArray = this.zzcgA.zzceA.entrySet().toArray();
        for (Object obj : toArray) {
            Entry entry = (Entry) obj;
            veVar.zzd(new vb((wp) entry.getKey(), this, (vf) entry.getValue()));
        }
    }

    public final void zza(ve<T> veVar, boolean z, boolean z2) {
        if (z && !z2) {
            veVar.zzd(this);
        }
        zza(new vc(this, veVar, z2));
        if (z && z2) {
            veVar.zzd(this);
        }
    }

    public final boolean zza(vd<T> vdVar, boolean z) {
        for (vb vbVar = this.zzcgz; vbVar != null; vbVar = vbVar.zzcgz) {
            vdVar.zze(vbVar);
        }
        return false;
    }
}
