package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;

public final class uv<T> implements Iterable<Entry<qr, T>> {
    private static final nh zzcgt = ni.zza(ob.zze(wp.class));
    private static final uv zzcgu = new uv(null, zzcgt);
    private final T value;
    private final nh<wp, uv<T>> zzcgs;

    public uv(T t) {
        this(t, zzcgt);
    }

    private uv(T t, nh<wp, uv<T>> nhVar) {
        this.value = t;
        this.zzcgs = nhVar;
    }

    public static <V> uv<V> zzHR() {
        return zzcgu;
    }

    private final <R> R zza(qr qrVar, uy<? super T, R> uyVar, R r) {
        Object r2;
        Iterator it = this.zzcgs.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            r2 = ((uv) entry.getValue()).zza(qrVar.zza((wp) entry.getKey()), uyVar, r2);
        }
        return this.value != null ? uyVar.zza(qrVar, this.value, r2) : r2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        uv uvVar = (uv) obj;
        if (this.zzcgs != null) {
            if (!this.zzcgs.equals(uvVar.zzcgs)) {
                return false;
            }
        } else if (uvVar.zzcgs != null) {
            return false;
        }
        if (this.value != null) {
            if (!this.value.equals(uvVar.value)) {
                return false;
            }
        } else if (uvVar.value != null) {
            return false;
        }
        return true;
    }

    public final T getValue() {
        return this.value;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (this.value != null ? this.value.hashCode() : 0) * 31;
        if (this.zzcgs != null) {
            i = this.zzcgs.hashCode();
        }
        return hashCode + i;
    }

    public final boolean isEmpty() {
        return this.value == null && this.zzcgs.isEmpty();
    }

    public final Iterator<Entry<qr, T>> iterator() {
        ArrayList arrayList = new ArrayList();
        zza(new ux(this, arrayList));
        return arrayList.iterator();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("ImmutableTree { value=");
        stringBuilder.append(this.value);
        stringBuilder.append(", children={");
        Iterator it = this.zzcgs.iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            stringBuilder.append(((wp) entry.getKey()).asString());
            stringBuilder.append("=");
            stringBuilder.append(entry.getValue());
        }
        stringBuilder.append("} }");
        return stringBuilder.toString();
    }

    public final Collection<T> values() {
        ArrayList arrayList = new ArrayList();
        zza(new uw(this, arrayList));
        return arrayList;
    }

    public final qr zzF(qr qrVar) {
        return zza(qrVar, uz.zzcgx);
    }

    public final T zzG(qr qrVar) {
        uz uzVar = uz.zzcgx;
        T t = (this.value == null || !uzVar.zzaj(this.value)) ? null : this.value;
        Iterator it = qrVar.iterator();
        T t2 = t;
        uv uvVar = this;
        while (it.hasNext()) {
            uvVar = (uv) uvVar.zzcgs.get((wp) it.next());
            if (uvVar == null) {
                break;
            } else if (uvVar.value != null && uzVar.zzaj(uvVar.value)) {
                t2 = uvVar.value;
            }
        }
        return t2;
    }

    public final uv<T> zzH(qr qrVar) {
        uv uvVar = this;
        while (!qrVar.isEmpty()) {
            uvVar = (uv) uvVar.zzcgs.get(qrVar.zzHc());
            if (uvVar == null) {
                return zzcgu;
            }
            qrVar = qrVar.zzHd();
        }
        return uvVar;
    }

    public final nh<wp, uv<T>> zzHS() {
        return this.zzcgs;
    }

    public final uv<T> zzI(qr qrVar) {
        if (qrVar.isEmpty()) {
            return this.zzcgs.isEmpty() ? zzcgu : new uv(null, this.zzcgs);
        } else {
            wp zzHc = qrVar.zzHc();
            uv uvVar = (uv) this.zzcgs.get(zzHc);
            if (uvVar == null) {
                return this;
            }
            uv zzI = uvVar.zzI(qrVar.zzHd());
            nh zzX = zzI.isEmpty() ? this.zzcgs.zzX(zzHc) : this.zzcgs.zzg(zzHc, zzI);
            return (this.value == null && zzX.isEmpty()) ? zzcgu : new uv(this.value, zzX);
        }
    }

    public final T zzJ(qr qrVar) {
        uv uvVar = this;
        while (!qrVar.isEmpty()) {
            uvVar = (uv) uvVar.zzcgs.get(qrVar.zzHc());
            if (uvVar == null) {
                return null;
            }
            qrVar = qrVar.zzHd();
        }
        return uvVar.value;
    }

    public final qr zza(qr qrVar, uz<? super T> uzVar) {
        if (this.value != null && uzVar.zzaj(this.value)) {
            return qr.zzGZ();
        }
        if (qrVar.isEmpty()) {
            return null;
        }
        uv uvVar = (uv) this.zzcgs.get(qrVar.zzHc());
        if (uvVar != null) {
            qrVar = uvVar.zza(qrVar.zzHd(), (uz) uzVar);
            if (qrVar != null) {
                return new qr(r0).zzh(qrVar);
            }
        }
        return null;
    }

    public final uv<T> zza(qr qrVar, uv<T> uvVar) {
        if (qrVar.isEmpty()) {
            return uvVar;
        }
        wp zzHc = qrVar.zzHc();
        uv uvVar2 = (uv) this.zzcgs.get(zzHc);
        if (uvVar2 == null) {
            uvVar2 = zzcgu;
        }
        uv zza = uvVar2.zza(qrVar.zzHd(), (uv) uvVar);
        return new uv(this.value, zza.isEmpty() ? this.zzcgs.zzX(zzHc) : this.zzcgs.zzg(zzHc, zza));
    }

    public final void zza(uy<T, Void> uyVar) {
        zza(qr.zzGZ(), uyVar, null);
    }

    public final uv<T> zzb(qr qrVar, T t) {
        if (qrVar.isEmpty()) {
            return new uv(t, this.zzcgs);
        }
        wp zzHc = qrVar.zzHc();
        uv uvVar = (uv) this.zzcgs.get(zzHc);
        if (uvVar == null) {
            uvVar = zzcgu;
        }
        return new uv(this.value, this.zzcgs.zzg(zzHc, uvVar.zzb(qrVar.zzHd(), (Object) t)));
    }

    public final T zzb(qr qrVar, uz<? super T> uzVar) {
        if (this.value != null && uzVar.zzaj(this.value)) {
            return this.value;
        }
        Iterator it = qrVar.iterator();
        uv uvVar = this;
        while (it.hasNext()) {
            uvVar = (uv) uvVar.zzcgs.get((wp) it.next());
            if (uvVar == null) {
                return null;
            }
            if (uvVar.value != null && uzVar.zzaj(uvVar.value)) {
                return uvVar.value;
            }
        }
        return null;
    }

    public final <R> R zzb(R r, uy<? super T, R> uyVar) {
        return zza(qr.zzGZ(), uyVar, r);
    }

    public final boolean zzb(uz<? super T> uzVar) {
        if (this.value != null && uzVar.zzaj(this.value)) {
            return true;
        }
        Iterator it = this.zzcgs.iterator();
        while (it.hasNext()) {
            if (((uv) ((Entry) it.next()).getValue()).zzb(uzVar)) {
                return true;
            }
        }
        return false;
    }

    public final uv<T> zze(wp wpVar) {
        uv uvVar = (uv) this.zzcgs.get(wpVar);
        return uvVar != null ? uvVar : zzcgu;
    }
}
