package com.google.firebase.appindexing.internal;

import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbeq;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Executor;

final class zzm implements OnCompleteListener<Void>, Executor {
    public static int MAX_RETRIES = 10;
    public static long zzbVO = 250;
    public static double zzbVP = 1.5d;
    public static double zzbVQ = 0.25d;
    @NonNull
    private final Handler mHandler;
    @NonNull
    private final GoogleApi<?> zzaET;
    @Nullable
    private Task<Void> zzbVR = null;

    public zzm(@NonNull GoogleApi<?> googleApi) {
        this.zzaET = googleApi;
        this.mHandler = new Handler(googleApi.getLooper());
    }

    private final void zza(@NonNull zzk zzk, @NonNull TaskCompletionSource<Void> taskCompletionSource, int i) {
        this.zzaET.zzb((zzbeq) zzk).addOnCompleteListener((Executor) this, new zzn(this, i, zzk, taskCompletionSource));
    }

    private static boolean zzc(@NonNull Task<Status> task) {
        if (task.isSuccessful()) {
            int statusCode = ((Status) task.getResult()).getStatusCode();
            if (statusCode >= 17600 && statusCode <= 17649) {
                return true;
            }
        }
        return false;
    }

    public final void execute(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    public final synchronized void onComplete(@NonNull Task<Void> task) {
        if (task == this.zzbVR) {
            this.zzbVR = null;
        }
    }

    public final Task<Void> zzb(@NonNull zzk zzk) {
        Task task;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Task task2 = taskCompletionSource.getTask();
        synchronized (this) {
            task = this.zzbVR;
            this.zzbVR = task2;
        }
        task2.addOnCompleteListener((Executor) this, (OnCompleteListener) this);
        if (task == null) {
            zza(zzk, taskCompletionSource, 0);
            return task2;
        }
        task.addOnCompleteListener((Executor) this, new zzp(this, zzk, taskCompletionSource));
        return task2;
    }
}
