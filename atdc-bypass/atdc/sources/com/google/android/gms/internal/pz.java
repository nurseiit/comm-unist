package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class pz implements Iterable<Entry<qr, xm>> {
    private static final pz zzccF = new pz(new uv(null));
    private final uv<xm> zzccG;

    private pz(uv<xm> uvVar) {
        this.zzccG = uvVar;
    }

    public static pz zzD(Map<String, Object> map) {
        uv zzHR = uv.zzHR();
        for (Entry entry : map.entrySet()) {
            zzHR = zzHR.zza(new qr((String) entry.getKey()), new uv(xp.zza(entry.getValue(), xd.zzJb())));
        }
        return new pz(zzHR);
    }

    public static pz zzE(Map<qr, xm> map) {
        uv zzHR = uv.zzHR();
        for (Entry entry : map.entrySet()) {
            zzHR = zzHR.zza((qr) entry.getKey(), new uv((xm) entry.getValue()));
        }
        return new pz(zzHR);
    }

    public static pz zzGI() {
        return zzccF;
    }

    private final xm zza(qr qrVar, uv<xm> uvVar, xm xmVar) {
        if (uvVar.getValue() != null) {
            return xmVar.zzl(qrVar, (xm) uvVar.getValue());
        }
        xm xmVar2 = null;
        Iterator it = uvVar.zzHS().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            uv uvVar2 = (uv) entry.getValue();
            wp wpVar = (wp) entry.getKey();
            if (wpVar.zzIN()) {
                xmVar2 = (xm) uvVar2.getValue();
            } else {
                xmVar = zza(qrVar.zza(wpVar), uvVar2, xmVar);
            }
        }
        if (!(xmVar.zzN(qrVar).isEmpty() || xmVar2 == null)) {
            xmVar = xmVar.zzl(qrVar.zza(wp.zzIL()), xmVar2);
        }
        return xmVar;
    }

    public final boolean equals(Object obj) {
        return obj == this ? true : (obj == null || obj.getClass() != getClass()) ? false : ((pz) obj).zzaD(true).equals(zzaD(true));
    }

    public final int hashCode() {
        return zzaD(true).hashCode();
    }

    public final boolean isEmpty() {
        return this.zzccG.isEmpty();
    }

    public final Iterator<Entry<qr, xm>> iterator() {
        return this.zzccG.iterator();
    }

    public final String toString() {
        String valueOf = String.valueOf(zzaD(true).toString());
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 15);
        stringBuilder.append("CompoundWrite{");
        stringBuilder.append(valueOf);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final xm zzGJ() {
        return (xm) this.zzccG.getValue();
    }

    public final List<xl> zzGK() {
        ArrayList arrayList = new ArrayList();
        Iterator it;
        if (this.zzccG.getValue() != null) {
            for (xl xlVar : (xm) this.zzccG.getValue()) {
                arrayList.add(new xl(xlVar.zzJk(), xlVar.zzFn()));
            }
        } else {
            it = this.zzccG.zzHS().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                uv uvVar = (uv) entry.getValue();
                if (uvVar.getValue() != null) {
                    arrayList.add(new xl((wp) entry.getKey(), (xm) uvVar.getValue()));
                }
            }
        }
        return arrayList;
    }

    public final Map<wp, pz> zzGL() {
        HashMap hashMap = new HashMap();
        Iterator it = this.zzccG.zzHS().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            hashMap.put((wp) entry.getKey(), new pz((uv) entry.getValue()));
        }
        return hashMap;
    }

    public final pz zza(wp wpVar, xm xmVar) {
        return zze(new qr(wpVar), xmVar);
    }

    public final Map<String, Object> zzaD(boolean z) {
        HashMap hashMap = new HashMap();
        this.zzccG.zza(new qb(this, hashMap, true));
        return hashMap;
    }

    public final pz zzb(qr qrVar, pz pzVar) {
        return (pz) pzVar.zzccG.zzb((Object) this, new qa(this, qrVar));
    }

    public final xm zzb(xm xmVar) {
        return zza(qr.zzGZ(), this.zzccG, xmVar);
    }

    public final pz zzd(qr qrVar) {
        return qrVar.isEmpty() ? zzccF : new pz(this.zzccG.zza(qrVar, uv.zzHR()));
    }

    public final pz zze(qr qrVar, xm xmVar) {
        if (qrVar.isEmpty()) {
            return new pz(new uv(xmVar));
        }
        qr zzF = this.zzccG.zzF(qrVar);
        if (zzF != null) {
            qrVar = qr.zza(zzF, qrVar);
            xm xmVar2 = (xm) this.zzccG.zzJ(zzF);
            wp zzHf = qrVar.zzHf();
            if (zzHf != null && zzHf.zzIN() && xmVar2.zzN(qrVar.zzHe()).isEmpty()) {
                return this;
            }
            return new pz(this.zzccG.zzb(zzF, xmVar2.zzl(qrVar, xmVar)));
        }
        return new pz(this.zzccG.zza(qrVar, new uv(xmVar)));
    }

    public final boolean zze(qr qrVar) {
        return zzf(qrVar) != null;
    }

    public final xm zzf(qr qrVar) {
        qr zzF = this.zzccG.zzF(qrVar);
        return zzF != null ? ((xm) this.zzccG.zzJ(zzF)).zzN(qr.zza(zzF, qrVar)) : null;
    }

    public final pz zzg(qr qrVar) {
        if (qrVar.isEmpty()) {
            return this;
        }
        xm zzf = zzf(qrVar);
        return zzf != null ? new pz(new uv(zzf)) : new pz(this.zzccG.zzH(qrVar));
    }
}
