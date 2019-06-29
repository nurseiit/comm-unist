package com.google.android.gms.internal;

public final class adl implements Cloneable {
    private static final adm zzcsq = new adm();
    private int mSize;
    private boolean zzcsr;
    private int[] zzcss;
    private adm[] zzcst;

    adl() {
        this(10);
    }

    private adl(int i) {
        this.zzcsr = false;
        i = idealIntArraySize(i);
        this.zzcss = new int[i];
        this.zzcst = new adm[i];
        this.mSize = 0;
    }

    private static int idealIntArraySize(int i) {
        i <<= 2;
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                i = i3;
                break;
            }
        }
        return i / 4;
    }

    private final int zzcz(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzcss[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ -1;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        adl adl = new adl(i);
        int i2 = 0;
        System.arraycopy(this.zzcss, 0, adl.zzcss, 0, i);
        while (i2 < i) {
            if (this.zzcst[i2] != null) {
                adl.zzcst[i2] = (adm) this.zzcst[i2].clone();
            }
            i2++;
        }
        adl.mSize = i;
        return adl;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof adl)) {
            return false;
        }
        adl adl = (adl) obj;
        if (this.mSize != adl.mSize) {
            return false;
        }
        Object obj2;
        int[] iArr = this.zzcss;
        int[] iArr2 = adl.zzcss;
        int i = this.mSize;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                obj2 = null;
                break;
            }
        }
        obj2 = 1;
        if (obj2 != null) {
            adm[] admArr = this.zzcst;
            adm[] admArr2 = adl.zzcst;
            int i3 = this.mSize;
            for (i = 0; i < i3; i++) {
                if (!admArr[i].equals(admArr2[i])) {
                    obj = null;
                    break;
                }
            }
            obj = 1;
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzcss[i2]) * 31) + this.zzcst[i2].hashCode();
        }
        return i;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    /* Access modifiers changed, original: final */
    public final int size() {
        return this.mSize;
    }

    /* Access modifiers changed, original: final */
    public final void zza(int i, adm adm) {
        int zzcz = zzcz(i);
        if (zzcz >= 0) {
            this.zzcst[zzcz] = adm;
            return;
        }
        zzcz ^= -1;
        if (zzcz >= this.mSize || this.zzcst[zzcz] != zzcsq) {
            if (this.mSize >= this.zzcss.length) {
                int idealIntArraySize = idealIntArraySize(this.mSize + 1);
                int[] iArr = new int[idealIntArraySize];
                adm[] admArr = new adm[idealIntArraySize];
                System.arraycopy(this.zzcss, 0, iArr, 0, this.zzcss.length);
                System.arraycopy(this.zzcst, 0, admArr, 0, this.zzcst.length);
                this.zzcss = iArr;
                this.zzcst = admArr;
            }
            if (this.mSize - zzcz != 0) {
                int i2 = zzcz + 1;
                System.arraycopy(this.zzcss, zzcz, this.zzcss, i2, this.mSize - zzcz);
                System.arraycopy(this.zzcst, zzcz, this.zzcst, i2, this.mSize - zzcz);
            }
            this.zzcss[zzcz] = i;
            this.zzcst[zzcz] = adm;
            this.mSize++;
            return;
        }
        this.zzcss[zzcz] = i;
        this.zzcst[zzcz] = adm;
    }

    /* Access modifiers changed, original: final */
    public final adm zzcx(int i) {
        i = zzcz(i);
        return (i < 0 || this.zzcst[i] == zzcsq) ? null : this.zzcst[i];
    }

    /* Access modifiers changed, original: final */
    public final adm zzcy(int i) {
        return this.zzcst[i];
    }
}
