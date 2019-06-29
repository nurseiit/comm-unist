package com.google.firebase.storage;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class zzt {
    private static zzt zzcpf = new zzt();
    private static BlockingQueue<Runnable> zzcpg = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor zzcph = new ThreadPoolExecutor(5, 5, 5, TimeUnit.SECONDS, zzcpg, new zzu("Command-"));
    private static BlockingQueue<Runnable> zzcpi = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor zzcpj = new ThreadPoolExecutor(2, 2, 5, TimeUnit.SECONDS, zzcpi, new zzu("Upload-"));
    private static BlockingQueue<Runnable> zzcpk = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor zzcpl = new ThreadPoolExecutor(3, 3, 5, TimeUnit.SECONDS, zzcpk, new zzu("Download-"));
    private static BlockingQueue<Runnable> zzcpm = new LinkedBlockingQueue(128);
    private static final ThreadPoolExecutor zzcpn = new ThreadPoolExecutor(1, 1, 5, TimeUnit.SECONDS, zzcpm, new zzu("Callbacks-"));

    static {
        zzcph.allowCoreThreadTimeOut(true);
        zzcpj.allowCoreThreadTimeOut(true);
        zzcpl.allowCoreThreadTimeOut(true);
        zzcpn.allowCoreThreadTimeOut(true);
    }

    public static void zzs(Runnable runnable) {
        zzcph.execute(runnable);
    }

    public static void zzt(Runnable runnable) {
        zzcpj.execute(runnable);
    }

    public static void zzu(Runnable runnable) {
        zzcpl.execute(runnable);
    }

    public static void zzv(Runnable runnable) {
        zzcpn.execute(runnable);
    }
}
