package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class adm implements Cloneable {
    private Object value;
    private adk<?, ?> zzcsu;
    private List<adr> zzcsv = new ArrayList();

    adm() {
    }

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzn()];
        zza(adh.zzI(bArr));
        return bArr;
    }

    private adm zzLP() {
        adm adm = new adm();
        try {
            adm.zzcsu = this.zzcsu;
            if (this.zzcsv == null) {
                adm.zzcsv = null;
            } else {
                adm.zzcsv.addAll(this.zzcsv);
            }
            if (this.value != null) {
                Object obj;
                if (this.value instanceof adp) {
                    obj = (adp) ((adp) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    obj = ((byte[]) this.value).clone();
                } else {
                    int i = 0;
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[][] bArr2 = new byte[bArr.length][];
                        adm.value = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.value instanceof boolean[]) {
                        obj = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        obj = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        obj = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        obj = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        obj = ((double[]) this.value).clone();
                    } else if (this.value instanceof adp[]) {
                        adp[] adpArr = (adp[]) this.value;
                        adp[] adpArr2 = new adp[adpArr.length];
                        adm.value = adpArr2;
                        while (i < adpArr.length) {
                            adpArr2[i] = (adp) adpArr[i].clone();
                            i++;
                        }
                    }
                }
                adm.value = obj;
                return adm;
            }
            return adm;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        return zzLP();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof adm)) {
            return false;
        }
        adm adm = (adm) obj;
        if (this.value != null && adm.value != null) {
            return this.zzcsu != adm.zzcsu ? false : !this.zzcsu.zzcjG.isArray() ? this.value.equals(adm.value) : this.value instanceof byte[] ? Arrays.equals((byte[]) this.value, (byte[]) adm.value) : this.value instanceof int[] ? Arrays.equals((int[]) this.value, (int[]) adm.value) : this.value instanceof long[] ? Arrays.equals((long[]) this.value, (long[]) adm.value) : this.value instanceof float[] ? Arrays.equals((float[]) this.value, (float[]) adm.value) : this.value instanceof double[] ? Arrays.equals((double[]) this.value, (double[]) adm.value) : this.value instanceof boolean[] ? Arrays.equals((boolean[]) this.value, (boolean[]) adm.value) : Arrays.deepEquals((Object[]) this.value, (Object[]) adm.value);
        } else {
            if (this.zzcsv != null && adm.zzcsv != null) {
                return this.zzcsv.equals(adm.zzcsv);
            }
            try {
                return Arrays.equals(toByteArray(), adm.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zza(adh adh) throws IOException {
        if (this.value != null) {
            this.zzcsu.zza(this.value, adh);
            return;
        }
        for (adr adr : this.zzcsv) {
            adh.zzcu(adr.tag);
            adh.zzK(adr.zzbws);
        }
    }

    /* Access modifiers changed, original: final */
    public final void zza(adr adr) {
        this.zzcsv.add(adr);
    }

    /* Access modifiers changed, original: final */
    public final <T> T zzb(adk<?, T> adk) {
        if (this.value == null) {
            this.zzcsu = adk;
            this.value = adk.zzX(this.zzcsv);
            this.zzcsv = null;
        } else if (!this.zzcsu.equals(adk)) {
            throw new IllegalStateException("Tried to getExtension with a different Extension.");
        }
        return this.value;
    }

    /* Access modifiers changed, original: final */
    public final int zzn() {
        if (this.value != null) {
            return this.zzcsu.zzav(this.value);
        }
        int i = 0;
        for (adr adr : this.zzcsv) {
            i += (adh.zzcv(adr.tag) + 0) + adr.zzbws.length;
        }
        return i;
    }
}
