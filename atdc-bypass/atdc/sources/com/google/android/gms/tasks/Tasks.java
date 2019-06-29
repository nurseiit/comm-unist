package com.google.android.gms.tasks;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.zzbo;
import java.util.Arrays;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class Tasks {

    interface zzb extends OnFailureListener, OnSuccessListener<Object> {
    }

    static final class zza implements zzb {
        private final CountDownLatch zztJ;

        private zza() {
            this.zztJ = new CountDownLatch(1);
        }

        /* synthetic */ zza(zzo zzo) {
            this();
        }

        public final void await() throws InterruptedException {
            this.zztJ.await();
        }

        public final boolean await(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.zztJ.await(j, timeUnit);
        }

        public final void onFailure(@NonNull Exception exception) {
            this.zztJ.countDown();
        }

        public final void onSuccess(Object obj) {
            this.zztJ.countDown();
        }
    }

    static final class zzc implements zzb {
        private final Object mLock = new Object();
        private final zzn<Void> zzbMe;
        private Exception zzbMj;
        private final int zzbMl;
        private int zzbMm;
        private int zzbMn;

        public zzc(int i, zzn<Void> zzn) {
            this.zzbMl = i;
            this.zzbMe = zzn;
        }

        private final void zzDJ() {
            if (this.zzbMm + this.zzbMn == this.zzbMl) {
                if (this.zzbMj == null) {
                    this.zzbMe.setResult(null);
                    return;
                }
                zzn zzn = this.zzbMe;
                int i = this.zzbMn;
                int i2 = this.zzbMl;
                StringBuilder stringBuilder = new StringBuilder(54);
                stringBuilder.append(i);
                stringBuilder.append(" out of ");
                stringBuilder.append(i2);
                stringBuilder.append(" underlying tasks failed");
                zzn.setException(new ExecutionException(stringBuilder.toString(), this.zzbMj));
            }
        }

        public final void onFailure(@NonNull Exception exception) {
            synchronized (this.mLock) {
                this.zzbMn++;
                this.zzbMj = exception;
                zzDJ();
            }
        }

        public final void onSuccess(Object obj) {
            synchronized (this.mLock) {
                this.zzbMm++;
                zzDJ();
            }
        }
    }

    private Tasks() {
    }

    public static <TResult> TResult await(@NonNull Task<TResult> task) throws ExecutionException, InterruptedException {
        zzbo.zzcG("Must not be called on the main application thread");
        zzbo.zzb((Object) task, (Object) "Task must not be null");
        if (task.isComplete()) {
            return zzb(task);
        }
        zza zza = new zza();
        zza(task, zza);
        zza.await();
        return zzb(task);
    }

    public static <TResult> TResult await(@NonNull Task<TResult> task, long j, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        zzbo.zzcG("Must not be called on the main application thread");
        zzbo.zzb((Object) task, (Object) "Task must not be null");
        zzbo.zzb((Object) timeUnit, (Object) "TimeUnit must not be null");
        if (task.isComplete()) {
            return zzb(task);
        }
        zza zza = new zza();
        zza(task, zza);
        if (zza.await(j, timeUnit)) {
            return zzb(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static <TResult> Task<TResult> call(@NonNull Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    public static <TResult> Task<TResult> call(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        zzbo.zzb((Object) executor, (Object) "Executor must not be null");
        zzbo.zzb((Object) callable, (Object) "Callback must not be null");
        zzn zzn = new zzn();
        executor.execute(new zzo(zzn, callable));
        return zzn;
    }

    public static <TResult> Task<TResult> forException(@NonNull Exception exception) {
        zzn zzn = new zzn();
        zzn.setException(exception);
        return zzn;
    }

    public static <TResult> Task<TResult> forResult(TResult tResult) {
        zzn zzn = new zzn();
        zzn.setResult(tResult);
        return zzn;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection.isEmpty()) {
            return forResult(null);
        }
        for (Task task : collection) {
            if (task == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        zzn zzn = new zzn();
        zzc zzc = new zzc(collection.size(), zzn);
        for (Task zza : collection) {
            zza(zza, zzc);
        }
        return zzn;
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        return taskArr.length == 0 ? forResult(null) : whenAll(Arrays.asList(taskArr));
    }

    private static void zza(Task<?> task, zzb zzb) {
        task.addOnSuccessListener(TaskExecutors.zzbMf, (OnSuccessListener) zzb);
        task.addOnFailureListener(TaskExecutors.zzbMf, (OnFailureListener) zzb);
    }

    private static <TResult> TResult zzb(Task<TResult> task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }
}
