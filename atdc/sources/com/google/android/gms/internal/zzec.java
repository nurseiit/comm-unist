package com.google.android.gms.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

public abstract class zzec implements Callable {
    private String TAG = getClass().getSimpleName();
    private String className;
    protected final zzdb zzpJ;
    private int zzrB;
    private int zzrC;
    protected final zzax zzro;
    private String zzrv;
    protected Method zzrx;

    public zzec(zzdb zzdb, String str, String str2, zzax zzax, int i, int i2) {
        this.zzpJ = zzdb;
        this.className = str;
        this.zzrv = str2;
        this.zzro = zzax;
        this.zzrB = i;
        this.zzrC = i2;
    }

    public abstract void zzT() throws IllegalAccessException, InvocationTargetException;

    /* renamed from: zzV */
    public Void call() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            this.zzrx = this.zzpJ.zzc(this.className, this.zzrv);
            if (this.zzrx == null) {
                return null;
            }
            zzT();
            zzcn zzI = this.zzpJ.zzI();
            if (!(zzI == null || this.zzrB == Integer.MIN_VALUE)) {
                zzI.zza(this.zzrC, this.zzrB, (System.nanoTime() - nanoTime) / 1000);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }
}
