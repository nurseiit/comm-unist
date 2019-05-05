package com.google.android.gms.internal;

import java.io.IOException;

public abstract class adp {
    protected volatile int zzcsx = -1;

    public static final <T extends adp> T zza(T t, byte[] bArr) throws ado {
        return zza(t, bArr, 0, bArr.length);
    }

    private static <T extends adp> T zza(T t, byte[] bArr, int i, int i2) throws ado {
        try {
            adg zzb = adg.zzb(bArr, 0, i2);
            t.zza(zzb);
            zzb.zzcl(0);
            return t;
        } catch (ado e) {
            throw e;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public static final byte[] zzc(adp adp) {
        byte[] bArr = new byte[adp.zzLV()];
        try {
            adh zzc = adh.zzc(bArr, 0, bArr.length);
            adp.zza(zzc);
            zzc.zzLM();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public String toString() {
        return adq.zzd(this);
    }

    /* renamed from: zzLO */
    public adp clone() throws CloneNotSupportedException {
        return (adp) super.clone();
    }

    public final int zzLU() {
        if (this.zzcsx < 0) {
            zzLV();
        }
        return this.zzcsx;
    }

    public final int zzLV() {
        int zzn = zzn();
        this.zzcsx = zzn;
        return zzn;
    }

    public abstract adp zza(adg adg) throws IOException;

    public void zza(adh adh) throws IOException {
    }

    /* Access modifiers changed, original: protected */
    public int zzn() {
        return 0;
    }
}
