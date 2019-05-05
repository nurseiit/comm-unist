package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

final class zzbx implements Runnable {
    private zzbx() {
    }

    public final void run() {
        try {
            zzbv.zzlQ = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException unused) {
        } catch (Throwable th) {
            zzbv.zzlT.countDown();
        }
        zzbv.zzlT.countDown();
    }
}
