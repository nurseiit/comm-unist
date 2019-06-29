package com.google.firebase.crash;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.md;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mf;
import com.google.android.gms.internal.mg;
import com.google.android.gms.internal.mj;
import com.google.android.gms.internal.mp;
import com.google.firebase.FirebaseApp;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@UsedByReflection("FirebaseApp")
public class FirebaseCrash {
    private static volatile FirebaseCrash zzbXS;
    private final Context mContext;
    private final FirebaseApp zzbVZ;
    private final ExecutorService zzbXT;
    private final zzb zzbXU;
    private final CountDownLatch zzbXV = new CountDownLatch(1);
    private mp zzbXW;

    public interface zza {
        @Nullable
        mj zzFg();
    }

    class zzc implements UncaughtExceptionHandler {
        private final UncaughtExceptionHandler zzbYa;

        public zzc(@Nullable UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.zzbYa = uncaughtExceptionHandler;
        }

        public final void uncaughtException(Thread thread, Throwable th) {
            Log.e("UncaughtException", "", th);
            if (!FirebaseCrash.this.zzFe()) {
                try {
                    Future zze = FirebaseCrash.this.zze(th);
                    if (zze != null) {
                        zze.get(10000, TimeUnit.MILLISECONDS);
                    }
                } catch (Exception e) {
                    Log.e("UncaughtException", "Ouch! My own exception handler threw an exception.", e);
                }
            }
            if (this.zzbYa != null) {
                this.zzbYa.uncaughtException(thread, th);
            }
        }
    }

    static final class zzb implements zza {
        private final Object zzbXY;
        private mj zzbXZ;

        private zzb() {
            this.zzbXY = new Object();
        }

        /* synthetic */ zzb(zza zza) {
            this();
        }

        private final void zzb(@Nullable mj mjVar) {
            synchronized (this.zzbXY) {
                this.zzbXZ = mjVar;
            }
        }

        @Nullable
        public final mj zzFg() {
            mj mjVar;
            synchronized (this.zzbXY) {
                mjVar = this.zzbXZ;
            }
            return mjVar;
        }
    }

    private FirebaseCrash(@NonNull FirebaseApp firebaseApp, @NonNull ExecutorService executorService) {
        this.zzbVZ = firebaseApp;
        this.zzbXT = executorService;
        this.mContext = this.zzbVZ.getApplicationContext();
        this.zzbXU = new zzb();
    }

    @Keep
    @UsedByReflection("FirebaseApp")
    public static FirebaseCrash getInstance(FirebaseApp firebaseApp) {
        if (zzbXS == null) {
            synchronized (FirebaseCrash.class) {
                if (zzbXS == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    FirebaseCrash firebaseCrash = new FirebaseCrash(firebaseApp, threadPoolExecutor);
                    zzc zzc = new zzc(firebaseApp, null);
                    Thread.setDefaultUncaughtExceptionHandler(new zzc(Thread.getDefaultUncaughtExceptionHandler()));
                    zzb zzb = new zzb(firebaseCrash);
                    ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(2);
                    newFixedThreadPool.submit(new zze(zzc, newFixedThreadPool.submit(new zzd(zzc)), 10000, zzb));
                    newFixedThreadPool.shutdown();
                    firebaseCrash.zzbXT.execute(new zza(firebaseCrash));
                    zzbXS = firebaseCrash;
                }
            }
        }
        return zzbXS;
    }

    public static boolean isCrashCollectionEnabled() {
        return zzFd().zzFf();
    }

    public static void log(String str) {
        zzFd().zzgy(str);
    }

    public static void logcat(int i, String str, String str2) {
        FirebaseCrash zzFd = zzFd();
        if (str2 != null) {
            if (str == null) {
                str = "";
            }
            Log.println(i, str, str2);
            zzFd.zzgy(str2);
        }
    }

    public static void report(Throwable th) {
        FirebaseCrash zzFd = zzFd();
        if (th != null && !zzFd.zzFe()) {
            zzFd.zzbXT.submit(new md(zzFd.mContext, zzFd.zzbXU, th, zzFd.zzbXW));
        }
    }

    public static void setCrashCollectionEnabled(boolean z) {
        FirebaseCrash zzFd = zzFd();
        if (!zzFd.zzFe()) {
            zzFd.zzbXT.submit(new mg(zzFd.mContext, zzFd.zzbXU, z));
        }
    }

    private final void zzFc() {
        try {
            this.zzbXV.await(20000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Log.e("FirebaseCrash", "Failed waiting for crash api to load.", e);
        }
    }

    private static FirebaseCrash zzFd() {
        return zzbXS != null ? zzbXS : getInstance(FirebaseApp.getInstance());
    }

    private final boolean zzFf() {
        if (zzFe()) {
            return false;
        }
        zzFc();
        mj zzFg = this.zzbXU.zzFg();
        if (zzFg != null) {
            try {
                return zzFg.zzFf();
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    private final void zzgy(String str) {
        if (str != null && !zzFe()) {
            this.zzbXT.submit(new me(this.mContext, this.zzbXU, str));
        }
    }

    public final boolean zzFe() {
        return this.zzbXT.isShutdown();
    }

    /* Access modifiers changed, original: final */
    public final void zza(@Nullable mj mjVar) {
        if (mjVar == null) {
            this.zzbXT.shutdownNow();
        } else {
            this.zzbXW = mp.zzbE(this.mContext);
            this.zzbXU.zzb(mjVar);
            if (!(this.zzbXW == null || zzFe())) {
                this.zzbXW.zza(this.mContext, this.zzbXT, this.zzbXU);
                Log.d("FirebaseCrash", "Firebase Analytics Listener for Firebase Crash is initialized");
            }
        }
        this.zzbXV.countDown();
    }

    /* Access modifiers changed, original: final */
    @Nullable
    public final Future<?> zze(Throwable th) {
        return (th == null || zzFe()) ? null : this.zzbXT.submit(new mf(this.mContext, this.zzbXU, th, this.zzbXW));
    }
}
