package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class zzi {
    private final zzk zzadQ;
    private boolean zzadR;
    private long zzadS;
    private long zzadT;
    private long zzadU;
    private long zzadV;
    private long zzadW;
    private boolean zzadX;
    private final Map<Class<? extends zzj>, zzj> zzadY;
    private final List<zzo> zzadZ;
    private final zze zzvw;

    private zzi(zzi zzi) {
        this.zzadQ = zzi.zzadQ;
        this.zzvw = zzi.zzvw;
        this.zzadS = zzi.zzadS;
        this.zzadT = zzi.zzadT;
        this.zzadU = zzi.zzadU;
        this.zzadV = zzi.zzadV;
        this.zzadW = zzi.zzadW;
        this.zzadZ = new ArrayList(zzi.zzadZ);
        this.zzadY = new HashMap(zzi.zzadY.size());
        for (Entry entry : zzi.zzadY.entrySet()) {
            zzj zzc = zzc((Class) entry.getKey());
            ((zzj) entry.getValue()).zzb(zzc);
            this.zzadY.put((Class) entry.getKey(), zzc);
        }
    }

    zzi(zzk zzk, zze zze) {
        zzbo.zzu(zzk);
        zzbo.zzu(zze);
        this.zzadQ = zzk;
        this.zzvw = zze;
        this.zzadV = 1800000;
        this.zzadW = 3024000000L;
        this.zzadY = new HashMap();
        this.zzadZ = new ArrayList();
    }

    private static <T extends zzj> T zzc(Class<T> cls) {
        try {
            return (zzj) cls.newInstance();
        } catch (InstantiationException e) {
            throw new IllegalArgumentException("dataType doesn't have default constructor", e);
        } catch (IllegalAccessException e2) {
            throw new IllegalArgumentException("dataType default constructor is not accessible", e2);
        }
    }

    public final <T extends zzj> T zza(Class<T> cls) {
        return (zzj) this.zzadY.get(cls);
    }

    public final void zza(zzj zzj) {
        zzbo.zzu(zzj);
        Class cls = zzj.getClass();
        if (cls.getSuperclass() != zzj.class) {
            throw new IllegalArgumentException();
        }
        zzj.zzb(zzb(cls));
    }

    public final <T extends zzj> T zzb(Class<T> cls) {
        zzj zzj = (zzj) this.zzadY.get(cls);
        if (zzj != null) {
            return zzj;
        }
        zzj = zzc(cls);
        this.zzadY.put(cls, zzj);
        return zzj;
    }

    public final zzi zzjp() {
        return new zzi(this);
    }

    public final Collection<zzj> zzjq() {
        return this.zzadY.values();
    }

    public final List<zzo> zzjr() {
        return this.zzadZ;
    }

    public final long zzjs() {
        return this.zzadS;
    }

    public final void zzjt() {
        this.zzadQ.zzjz().zze(this);
    }

    public final boolean zzju() {
        return this.zzadR;
    }

    /* Access modifiers changed, original: final */
    public final void zzjv() {
        this.zzadU = this.zzvw.elapsedRealtime();
        this.zzadS = this.zzadT != 0 ? this.zzadT : this.zzvw.currentTimeMillis();
        this.zzadR = true;
    }

    /* Access modifiers changed, original: final */
    public final zzk zzjw() {
        return this.zzadQ;
    }

    /* Access modifiers changed, original: final */
    public final boolean zzjx() {
        return this.zzadX;
    }

    /* Access modifiers changed, original: final */
    public final void zzjy() {
        this.zzadX = true;
    }

    public final void zzl(long j) {
        this.zzadT = j;
    }
}
