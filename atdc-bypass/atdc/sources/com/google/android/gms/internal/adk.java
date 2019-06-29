package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

public final class adk<M extends adj<M>, T> {
    public final int tag;
    private int type = 11;
    protected final Class<T> zzcjG;
    protected final boolean zzcsp;

    private adk(int i, Class<T> cls, int i2, boolean z) {
        this.zzcjG = cls;
        this.tag = i2;
        this.zzcsp = false;
    }

    public static <M extends adj<M>, T extends adp> adk<M, T> zza(int i, Class<T> cls, long j) {
        return new adk(11, cls, (int) j, false);
    }

    private final Object zzb(adg adg) {
        String valueOf;
        Class cls = this.zzcjG;
        StringBuilder stringBuilder;
        try {
            adp adp;
            switch (this.type) {
                case 10:
                    adp = (adp) cls.newInstance();
                    adg.zza(adp, this.tag >>> 3);
                    return adp;
                case 11:
                    adp = (adp) cls.newInstance();
                    adg.zza(adp);
                    return adp;
                default:
                    int i = this.type;
                    stringBuilder = new StringBuilder(24);
                    stringBuilder.append("Unknown type ");
                    stringBuilder.append(i);
                    throw new IllegalArgumentException(stringBuilder.toString());
            }
        } catch (InstantiationException e) {
            valueOf = String.valueOf(cls);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 33);
            stringBuilder.append("Error creating instance of class ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString(), e);
        } catch (IllegalAccessException e2) {
            valueOf = String.valueOf(cls);
            stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 33);
            stringBuilder.append("Error creating instance of class ");
            stringBuilder.append(valueOf);
            throw new IllegalArgumentException(stringBuilder.toString(), e2);
        } catch (IOException e3) {
            throw new IllegalArgumentException("Error reading extension field", e3);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof adk)) {
            return false;
        }
        adk adk = (adk) obj;
        return this.type == adk.type && this.zzcjG == adk.zzcjG && this.tag == adk.tag;
    }

    public final int hashCode() {
        return (((((this.type + 1147) * 31) + this.zzcjG.hashCode()) * 31) + this.tag) * 31;
    }

    /* Access modifiers changed, original: final */
    public final T zzX(List<adr> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.zzcjG.cast(zzb(adg.zzH(((adr) list.get(list.size() - 1)).zzbws)));
    }

    /* Access modifiers changed, original: protected|final */
    public final void zza(Object obj, adh adh) {
        try {
            adh.zzcu(this.tag);
            switch (this.type) {
                case 10:
                    int i = this.tag >>> 3;
                    ((adp) obj).zza(adh);
                    adh.zzt(i, 4);
                    return;
                case 11:
                    adh.zzb((adp) obj);
                    return;
                default:
                    int i2 = this.type;
                    StringBuilder stringBuilder = new StringBuilder(24);
                    stringBuilder.append("Unknown type ");
                    stringBuilder.append(i2);
                    throw new IllegalArgumentException(stringBuilder.toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final int zzav(Object obj) {
        int i = this.tag >>> 3;
        switch (this.type) {
            case 10:
                return (adh.zzct(i) << 1) + ((adp) obj).zzLV();
            case 11:
                return adh.zzb(i, (adp) obj);
            default:
                i = this.type;
                StringBuilder stringBuilder = new StringBuilder(24);
                stringBuilder.append("Unknown type ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }
}
