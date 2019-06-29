package com.google.android.gms.tagmanager;

final class zzgj extends Number implements Comparable<zzgj> {
    private double zzbHb;
    private long zzbHc;
    private boolean zzbHd = false;

    private zzgj(double d) {
        this.zzbHb = d;
    }

    private zzgj(long j) {
        this.zzbHc = j;
    }

    public static zzgj zza(Double d) {
        return new zzgj(d.doubleValue());
    }

    public static zzgj zzai(long j) {
        return new zzgj(j);
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000a */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:5:0x0013, code skipped:
            return new com.google.android.gms.tagmanager.zzgj(java.lang.Double.parseDouble(r3));
     */
    /* JADX WARNING: Missing block: B:8:0x0023, code skipped:
            throw new java.lang.NumberFormatException(java.lang.String.valueOf(r3).concat(" is not a valid TypedNumber"));
     */
    public static com.google.android.gms.tagmanager.zzgj zzfx(java.lang.String r3) throws java.lang.NumberFormatException {
        /*
        r0 = new com.google.android.gms.tagmanager.zzgj;	 Catch:{ NumberFormatException -> 0x000a }
        r1 = java.lang.Long.parseLong(r3);	 Catch:{ NumberFormatException -> 0x000a }
        r0.<init>(r1);	 Catch:{ NumberFormatException -> 0x000a }
        return r0;
    L_0x000a:
        r0 = new com.google.android.gms.tagmanager.zzgj;	 Catch:{ NumberFormatException -> 0x0014 }
        r1 = java.lang.Double.parseDouble(r3);	 Catch:{ NumberFormatException -> 0x0014 }
        r0.<init>(r1);	 Catch:{ NumberFormatException -> 0x0014 }
        return r0;
    L_0x0014:
        r0 = new java.lang.NumberFormatException;
        r3 = java.lang.String.valueOf(r3);
        r1 = " is not a valid TypedNumber";
        r3 = r3.concat(r1);
        r0.<init>(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzgj.zzfx(java.lang.String):com.google.android.gms.tagmanager.zzgj");
    }

    public final byte byteValue() {
        return (byte) ((int) longValue());
    }

    public final double doubleValue() {
        return this.zzbHd ? (double) this.zzbHc : this.zzbHb;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgj) && compareTo((zzgj) obj) == 0;
    }

    public final float floatValue() {
        return (float) doubleValue();
    }

    public final int hashCode() {
        return new Long(longValue()).hashCode();
    }

    public final int intValue() {
        return (int) longValue();
    }

    public final long longValue() {
        return this.zzbHd ? this.zzbHc : (long) this.zzbHb;
    }

    public final short shortValue() {
        return (short) ((int) longValue());
    }

    public final String toString() {
        return this.zzbHd ? Long.toString(this.zzbHc) : Double.toString(this.zzbHb);
    }

    public final boolean zzBZ() {
        return !this.zzbHd;
    }

    public final boolean zzCa() {
        return this.zzbHd;
    }

    /* renamed from: zza */
    public final int compareTo(zzgj zzgj) {
        return (this.zzbHd && zzgj.zzbHd) ? new Long(this.zzbHc).compareTo(Long.valueOf(zzgj.zzbHc)) : Double.compare(doubleValue(), zzgj.doubleValue());
    }
}
