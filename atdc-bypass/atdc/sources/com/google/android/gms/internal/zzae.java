package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public final class zzae {
    private static Comparator<byte[]> zzau = new zzaf();
    private List<byte[]> zzaq = new LinkedList();
    private List<byte[]> zzar = new ArrayList(64);
    private int zzas = 0;
    private final int zzat;

    public zzae(int i) {
        this.zzat = i;
    }

    private final synchronized void zzm() {
        while (this.zzas > this.zzat) {
            byte[] bArr = (byte[]) this.zzaq.remove(0);
            this.zzar.remove(bArr);
            this.zzas -= bArr.length;
        }
    }

    /* JADX WARNING: Missing block: B:16:0x002f, code skipped:
            return;
     */
    public final synchronized void zza(byte[] r3) {
        /*
        r2 = this;
        monitor-enter(r2);
        if (r3 == 0) goto L_0x002e;
    L_0x0003:
        r0 = r3.length;	 Catch:{ all -> 0x002b }
        r1 = r2.zzat;	 Catch:{ all -> 0x002b }
        if (r0 <= r1) goto L_0x0009;
    L_0x0008:
        goto L_0x002e;
    L_0x0009:
        r0 = r2.zzaq;	 Catch:{ all -> 0x002b }
        r0.add(r3);	 Catch:{ all -> 0x002b }
        r0 = r2.zzar;	 Catch:{ all -> 0x002b }
        r1 = zzau;	 Catch:{ all -> 0x002b }
        r0 = java.util.Collections.binarySearch(r0, r3, r1);	 Catch:{ all -> 0x002b }
        if (r0 >= 0) goto L_0x001b;
    L_0x0018:
        r0 = -r0;
        r0 = r0 + -1;
    L_0x001b:
        r1 = r2.zzar;	 Catch:{ all -> 0x002b }
        r1.add(r0, r3);	 Catch:{ all -> 0x002b }
        r0 = r2.zzas;	 Catch:{ all -> 0x002b }
        r3 = r3.length;	 Catch:{ all -> 0x002b }
        r0 = r0 + r3;
        r2.zzas = r0;	 Catch:{ all -> 0x002b }
        r2.zzm();	 Catch:{ all -> 0x002b }
        monitor-exit(r2);
        return;
    L_0x002b:
        r3 = move-exception;
        monitor-exit(r2);
        throw r3;
    L_0x002e:
        monitor-exit(r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzae.zza(byte[]):void");
    }

    public final synchronized byte[] zzb(int i) {
        for (int i2 = 0; i2 < this.zzar.size(); i2++) {
            byte[] bArr = (byte[]) this.zzar.get(i2);
            if (bArr.length >= i) {
                this.zzas -= bArr.length;
                this.zzar.remove(i2);
                this.zzaq.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
