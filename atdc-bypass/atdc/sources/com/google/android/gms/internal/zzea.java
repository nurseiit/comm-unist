package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class zzea {
    private static String TAG = "zzea";
    private final String className;
    private final zzdb zzpJ;
    private final String zzrv;
    private final int zzrw = 2;
    private volatile Method zzrx = null;
    private final Class<?>[] zzry;
    private CountDownLatch zzrz = new CountDownLatch(1);

    public zzea(zzdb zzdb, String str, String str2, Class<?>... clsArr) {
        this.zzpJ = zzdb;
        this.className = str;
        this.zzrv = str2;
        this.zzry = clsArr;
        this.zzpJ.zzC().submit(new zzeb(this));
    }

    private final void zzX() {
        try {
            Class loadClass = this.zzpJ.zzD().loadClass(zzb(this.zzpJ.zzF(), this.className));
            if (loadClass != null) {
                this.zzrx = loadClass.getMethod(zzb(this.zzpJ.zzF(), this.zzrv), this.zzry);
                Method method = this.zzrx;
            }
        } catch (zzcx | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
        } catch (Throwable th) {
            this.zzrz.countDown();
        }
        this.zzrz.countDown();
    }

    private final String zzb(byte[] bArr, String str) throws zzcx, UnsupportedEncodingException {
        return new String(this.zzpJ.zzE().zza(bArr, str), Key.STRING_CHARSET_NAME);
    }

    public final Method zzY() {
        if (this.zzrx != null) {
            return this.zzrx;
        }
        try {
            return !this.zzrz.await(2, TimeUnit.SECONDS) ? null : this.zzrx;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
