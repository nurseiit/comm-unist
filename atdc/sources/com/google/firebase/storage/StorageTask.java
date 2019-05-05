package com.google.firebase.storage;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.Executor;

public abstract class StorageTask<TResult extends ProvideError> extends ControllableTask<TResult> {
    private static final HashMap<Integer, HashSet<Integer>> zzcoR = new HashMap();
    private static final HashMap<Integer, HashSet<Integer>> zzcoS = new HashMap();
    protected final Object mSyncObject = new Object();
    private volatile int zzOn = 1;
    @VisibleForTesting
    private zzw<OnSuccessListener<? super TResult>, TResult> zzcoT = new zzw(this, 128, new zzi(this));
    @VisibleForTesting
    private zzw<OnFailureListener, TResult> zzcoU = new zzw(this, 320, new zzj(this));
    @VisibleForTesting
    private zzw<OnCompleteListener<TResult>, TResult> zzcoV = new zzw(this, 448, new zzk(this));
    @VisibleForTesting
    private zzw<OnProgressListener<? super TResult>, TResult> zzcoW = new zzw(this, -465, new zzl(this));
    @VisibleForTesting
    private zzw<OnPausedListener<? super TResult>, TResult> zzcoX = new zzw(this, 16, new zzm(this));
    private TResult zzcoY;

    public interface ProvideError {
        Exception getError();
    }

    public class SnapshotBase implements ProvideError {
        private final Exception zzcpc;

        public SnapshotBase(Exception exception) {
            if (exception == null) {
                Status status;
                Exception exception2;
                if (StorageTask.this.isCanceled()) {
                    status = Status.zzaBq;
                } else if (StorageTask.this.zzKR() == 64) {
                    status = Status.zzaBo;
                } else {
                    exception2 = null;
                    this.zzcpc = exception2;
                    return;
                }
                exception2 = StorageException.fromErrorStatus(status);
                this.zzcpc = exception2;
                return;
            }
            this.zzcpc = exception;
        }

        @Nullable
        public Exception getError() {
            return this.zzcpc;
        }

        @NonNull
        public StorageReference getStorage() {
            return getTask().getStorage();
        }

        @NonNull
        public StorageTask<TResult> getTask() {
            return StorageTask.this;
        }
    }

    static {
        zzcoR.put(Integer.valueOf(1), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(16), Integer.valueOf(256)})));
        zzcoR.put(Integer.valueOf(2), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(8), Integer.valueOf(32)})));
        zzcoR.put(Integer.valueOf(4), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(8), Integer.valueOf(32)})));
        zzcoR.put(Integer.valueOf(16), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(2), Integer.valueOf(256)})));
        zzcoR.put(Integer.valueOf(64), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(2), Integer.valueOf(256)})));
        zzcoS.put(Integer.valueOf(1), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(2), Integer.valueOf(64)})));
        zzcoS.put(Integer.valueOf(2), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(4), Integer.valueOf(64), Integer.valueOf(128)})));
        zzcoS.put(Integer.valueOf(4), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(4), Integer.valueOf(64), Integer.valueOf(128)})));
        zzcoS.put(Integer.valueOf(8), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(16), Integer.valueOf(64), Integer.valueOf(128)})));
        zzcoS.put(Integer.valueOf(32), new HashSet(Arrays.asList(new Integer[]{Integer.valueOf(256), Integer.valueOf(64), Integer.valueOf(128)})));
    }

    protected StorageTask() {
    }

    private final TResult zzKT() {
        if (this.zzcoY != null) {
            return this.zzcoY;
        }
        if (!isComplete()) {
            return null;
        }
        if (this.zzcoY == null) {
            this.zzcoY = zzKS();
        }
        return this.zzcoY;
    }

    private final void zzKU() {
        if (!isComplete() && !isPaused() && this.zzOn != 2 && !zzj(256, false)) {
            zzj(64, false);
        }
    }

    @NonNull
    private final <TContinuationResult> Task<TContinuationResult> zza(@Nullable Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zzcoV.zza(null, executor, new zzn(this, continuation, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    /* JADX WARNING: Missing block: B:36:0x00d1, code skipped:
            return true;
     */
    @android.support.annotation.VisibleForTesting
    private final boolean zza(int[] r9, boolean r10) {
        /*
        r8 = this;
        if (r10 == 0) goto L_0x0005;
    L_0x0002:
        r0 = zzcoR;
        goto L_0x0007;
    L_0x0005:
        r0 = zzcoS;
    L_0x0007:
        r1 = r8.mSyncObject;
        monitor-enter(r1);
        r2 = r9.length;	 Catch:{ all -> 0x0123 }
        r3 = 0;
        r4 = 0;
    L_0x000d:
        if (r4 >= r2) goto L_0x00d6;
    L_0x000f:
        r5 = r9[r4];	 Catch:{ all -> 0x0123 }
        r6 = r8.zzOn;	 Catch:{ all -> 0x0123 }
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ all -> 0x0123 }
        r6 = r0.get(r6);	 Catch:{ all -> 0x0123 }
        r6 = (java.util.HashSet) r6;	 Catch:{ all -> 0x0123 }
        if (r6 == 0) goto L_0x00d2;
    L_0x001f:
        r7 = java.lang.Integer.valueOf(r5);	 Catch:{ all -> 0x0123 }
        r6 = r6.contains(r7);	 Catch:{ all -> 0x0123 }
        if (r6 == 0) goto L_0x00d2;
    L_0x0029:
        r8.zzOn = r5;	 Catch:{ all -> 0x0123 }
        r9 = r8.zzOn;	 Catch:{ all -> 0x0123 }
        r0 = 2;
        if (r9 == r0) goto L_0x0058;
    L_0x0030:
        r0 = 4;
        if (r9 == r0) goto L_0x0054;
    L_0x0033:
        r0 = 16;
        if (r9 == r0) goto L_0x0050;
    L_0x0037:
        r0 = 64;
        if (r9 == r0) goto L_0x004c;
    L_0x003b:
        r0 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        if (r9 == r0) goto L_0x0048;
    L_0x003f:
        r0 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        if (r9 == r0) goto L_0x0044;
    L_0x0043:
        goto L_0x0062;
    L_0x0044:
        r8.onCanceled();	 Catch:{ all -> 0x0123 }
        goto L_0x0062;
    L_0x0048:
        r8.onSuccess();	 Catch:{ all -> 0x0123 }
        goto L_0x0062;
    L_0x004c:
        r8.onFailure();	 Catch:{ all -> 0x0123 }
        goto L_0x0062;
    L_0x0050:
        r8.onPaused();	 Catch:{ all -> 0x0123 }
        goto L_0x0062;
    L_0x0054:
        r8.onProgress();	 Catch:{ all -> 0x0123 }
        goto L_0x0062;
    L_0x0058:
        r9 = com.google.firebase.storage.zzs.zzKV();	 Catch:{ all -> 0x0123 }
        r9.zzb(r8);	 Catch:{ all -> 0x0123 }
        r8.onQueued();	 Catch:{ all -> 0x0123 }
    L_0x0062:
        r9 = r8.zzcoT;	 Catch:{ all -> 0x0123 }
        r9.zzKZ();	 Catch:{ all -> 0x0123 }
        r9 = r8.zzcoU;	 Catch:{ all -> 0x0123 }
        r9.zzKZ();	 Catch:{ all -> 0x0123 }
        r9 = r8.zzcoV;	 Catch:{ all -> 0x0123 }
        r9.zzKZ();	 Catch:{ all -> 0x0123 }
        r9 = r8.zzcoX;	 Catch:{ all -> 0x0123 }
        r9.zzKZ();	 Catch:{ all -> 0x0123 }
        r9 = r8.zzcoW;	 Catch:{ all -> 0x0123 }
        r9.zzKZ();	 Catch:{ all -> 0x0123 }
        r9 = "StorageTask";
        r0 = 3;
        r9 = android.util.Log.isLoggable(r9, r0);	 Catch:{ all -> 0x0123 }
        if (r9 == 0) goto L_0x00cf;
    L_0x0084:
        r9 = "StorageTask";
        r0 = zzcf(r5);	 Catch:{ all -> 0x0123 }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x0123 }
        r2 = r8.zzOn;	 Catch:{ all -> 0x0123 }
        r2 = zzcf(r2);	 Catch:{ all -> 0x0123 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0123 }
        r3 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x0123 }
        r3 = r3.length();	 Catch:{ all -> 0x0123 }
        r3 = r3 + 53;
        r4 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0123 }
        r4 = r4.length();	 Catch:{ all -> 0x0123 }
        r3 = r3 + r4;
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0123 }
        r4.<init>(r3);	 Catch:{ all -> 0x0123 }
        r3 = "changed internal state to: ";
        r4.append(r3);	 Catch:{ all -> 0x0123 }
        r4.append(r0);	 Catch:{ all -> 0x0123 }
        r0 = " isUser: ";
        r4.append(r0);	 Catch:{ all -> 0x0123 }
        r4.append(r10);	 Catch:{ all -> 0x0123 }
        r10 = " from state:";
        r4.append(r10);	 Catch:{ all -> 0x0123 }
        r4.append(r2);	 Catch:{ all -> 0x0123 }
        r10 = r4.toString();	 Catch:{ all -> 0x0123 }
        android.util.Log.d(r9, r10);	 Catch:{ all -> 0x0123 }
    L_0x00cf:
        monitor-exit(r1);	 Catch:{ all -> 0x0123 }
        r9 = 1;
        return r9;
    L_0x00d2:
        r4 = r4 + 1;
        goto L_0x000d;
    L_0x00d6:
        r0 = "StorageTask";
        r9 = zzd(r9);	 Catch:{ all -> 0x0123 }
        r9 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x0123 }
        r2 = r8.zzOn;	 Catch:{ all -> 0x0123 }
        r2 = zzcf(r2);	 Catch:{ all -> 0x0123 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0123 }
        r4 = java.lang.String.valueOf(r9);	 Catch:{ all -> 0x0123 }
        r4 = r4.length();	 Catch:{ all -> 0x0123 }
        r4 = r4 + 62;
        r5 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0123 }
        r5 = r5.length();	 Catch:{ all -> 0x0123 }
        r4 = r4 + r5;
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0123 }
        r5.<init>(r4);	 Catch:{ all -> 0x0123 }
        r4 = "unable to change internal state to: ";
        r5.append(r4);	 Catch:{ all -> 0x0123 }
        r5.append(r9);	 Catch:{ all -> 0x0123 }
        r9 = " isUser: ";
        r5.append(r9);	 Catch:{ all -> 0x0123 }
        r5.append(r10);	 Catch:{ all -> 0x0123 }
        r9 = " from state:";
        r5.append(r9);	 Catch:{ all -> 0x0123 }
        r5.append(r2);	 Catch:{ all -> 0x0123 }
        r9 = r5.toString();	 Catch:{ all -> 0x0123 }
        android.util.Log.w(r0, r9);	 Catch:{ all -> 0x0123 }
        monitor-exit(r1);	 Catch:{ all -> 0x0123 }
        return r3;
    L_0x0123:
        r9 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0123 }
        throw r9;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.storage.StorageTask.zza(int[], boolean):boolean");
    }

    @NonNull
    private final <TContinuationResult> Task<TContinuationResult> zzb(@Nullable Executor executor, @NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.zzcoV.zza(null, executor, new zzo(this, continuation, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private static String zzcf(int i) {
        if (i == 4) {
            return "INTERNAL_STATE_IN_PROGRESS";
        }
        if (i == 8) {
            return "INTERNAL_STATE_PAUSING";
        }
        if (i == 16) {
            return "INTERNAL_STATE_PAUSED";
        }
        if (i == 32) {
            return "INTERNAL_STATE_CANCELING";
        }
        if (i == 64) {
            return "INTERNAL_STATE_FAILURE";
        }
        if (i == 128) {
            return "INTERNAL_STATE_SUCCESS";
        }
        if (i == 256) {
            return "INTERNAL_STATE_CANCELED";
        }
        switch (i) {
            case 1:
                return "INTERNAL_STATE_NOT_STARTED";
            case 2:
                return "INTERNAL_STATE_QUEUED";
            default:
                return "Unknown Internal State!";
        }
    }

    private static String zzd(int[] iArr) {
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int zzcf : iArr) {
            stringBuilder.append(zzcf(zzcf));
            stringBuilder.append(", ");
        }
        return stringBuilder.substring(0, stringBuilder.length() - 2);
    }

    @NonNull
    public StorageTask<TResult> addOnCompleteListener(@NonNull Activity activity, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        zzbo.zzu(onCompleteListener);
        zzbo.zzu(activity);
        this.zzcoV.zza(activity, null, onCompleteListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnCompleteListener(@NonNull OnCompleteListener<TResult> onCompleteListener) {
        zzbo.zzu(onCompleteListener);
        this.zzcoV.zza(null, null, onCompleteListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnCompleteListener(@NonNull Executor executor, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        zzbo.zzu(onCompleteListener);
        zzbo.zzu(executor);
        this.zzcoV.zza(null, executor, onCompleteListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnFailureListener(@NonNull Activity activity, @NonNull OnFailureListener onFailureListener) {
        zzbo.zzu(onFailureListener);
        zzbo.zzu(activity);
        this.zzcoU.zza(activity, null, onFailureListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnFailureListener(@NonNull OnFailureListener onFailureListener) {
        zzbo.zzu(onFailureListener);
        this.zzcoU.zza(null, null, onFailureListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnFailureListener(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener) {
        zzbo.zzu(onFailureListener);
        zzbo.zzu(executor);
        this.zzcoU.zza(null, executor, onFailureListener);
        return this;
    }

    public StorageTask<TResult> addOnPausedListener(@NonNull Activity activity, @NonNull OnPausedListener<? super TResult> onPausedListener) {
        zzbo.zzu(onPausedListener);
        zzbo.zzu(activity);
        this.zzcoX.zza(activity, null, onPausedListener);
        return this;
    }

    public StorageTask<TResult> addOnPausedListener(@NonNull OnPausedListener<? super TResult> onPausedListener) {
        zzbo.zzu(onPausedListener);
        this.zzcoX.zza(null, null, onPausedListener);
        return this;
    }

    public StorageTask<TResult> addOnPausedListener(@NonNull Executor executor, @NonNull OnPausedListener<? super TResult> onPausedListener) {
        zzbo.zzu(onPausedListener);
        zzbo.zzu(executor);
        this.zzcoX.zza(null, executor, onPausedListener);
        return this;
    }

    public StorageTask<TResult> addOnProgressListener(@NonNull Activity activity, @NonNull OnProgressListener<? super TResult> onProgressListener) {
        zzbo.zzu(onProgressListener);
        zzbo.zzu(activity);
        this.zzcoW.zza(activity, null, onProgressListener);
        return this;
    }

    public StorageTask<TResult> addOnProgressListener(@NonNull OnProgressListener<? super TResult> onProgressListener) {
        zzbo.zzu(onProgressListener);
        this.zzcoW.zza(null, null, onProgressListener);
        return this;
    }

    public StorageTask<TResult> addOnProgressListener(@NonNull Executor executor, @NonNull OnProgressListener<? super TResult> onProgressListener) {
        zzbo.zzu(onProgressListener);
        zzbo.zzu(executor);
        this.zzcoW.zza(null, executor, onProgressListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnSuccessListener(@NonNull Activity activity, @NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        zzbo.zzu(activity);
        zzbo.zzu(onSuccessListener);
        this.zzcoT.zza(activity, null, onSuccessListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnSuccessListener(@NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        zzbo.zzu(onSuccessListener);
        this.zzcoT.zza(null, null, onSuccessListener);
        return this;
    }

    @NonNull
    public StorageTask<TResult> addOnSuccessListener(@NonNull Executor executor, @NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        zzbo.zzu(executor);
        zzbo.zzu(onSuccessListener);
        this.zzcoT.zza(null, executor, onSuccessListener);
        return this;
    }

    public boolean cancel() {
        return zza(new int[]{256, 32}, true);
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWith(@NonNull Continuation<TResult, TContinuationResult> continuation) {
        return zza(null, (Continuation) continuation);
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWith(@NonNull Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation) {
        return zza(executor, (Continuation) continuation);
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(@NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        return zzb(null, continuation);
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(@NonNull Executor executor, @NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        return zzb(executor, continuation);
    }

    @Nullable
    public Exception getException() {
        return zzKT() == null ? null : zzKT().getError();
    }

    public TResult getResult() {
        if (zzKT() == null) {
            throw new IllegalStateException();
        }
        Exception error = zzKT().getError();
        if (error == null) {
            return zzKT();
        }
        throw new RuntimeExecutionException(error);
    }

    public <X extends Throwable> TResult getResult(@NonNull Class<X> cls) throws Throwable {
        if (zzKT() == null) {
            throw new IllegalStateException();
        } else if (cls.isInstance(zzKT().getError())) {
            throw ((Throwable) cls.cast(zzKT().getError()));
        } else {
            Exception error = zzKT().getError();
            if (error == null) {
                return zzKT();
            }
            throw new RuntimeExecutionException(error);
        }
    }

    public TResult getSnapshot() {
        return zzKS();
    }

    @VisibleForTesting
    public abstract StorageReference getStorage();

    public boolean isCanceled() {
        return this.zzOn == 256;
    }

    public boolean isComplete() {
        return ((this.zzOn & 128) == 0 && (this.zzOn & 320) == 0) ? false : true;
    }

    public boolean isInProgress() {
        return (this.zzOn & -465) != 0;
    }

    public boolean isPaused() {
        return (this.zzOn & 16) != 0;
    }

    public boolean isSuccessful() {
        return (this.zzOn & 128) != 0;
    }

    /* Access modifiers changed, original: protected */
    public void onCanceled() {
    }

    /* Access modifiers changed, original: protected */
    public void onFailure() {
    }

    /* Access modifiers changed, original: protected */
    public void onPaused() {
    }

    /* Access modifiers changed, original: protected */
    public void onProgress() {
    }

    /* Access modifiers changed, original: protected */
    public void onQueued() {
    }

    /* Access modifiers changed, original: protected */
    public void onSuccess() {
    }

    public boolean pause() {
        return zza(new int[]{16, 8}, true);
    }

    public StorageTask<TResult> removeOnCompleteListener(@NonNull OnCompleteListener<TResult> onCompleteListener) {
        zzbo.zzu(onCompleteListener);
        this.zzcoV.zzat(onCompleteListener);
        return this;
    }

    public StorageTask<TResult> removeOnFailureListener(@NonNull OnFailureListener onFailureListener) {
        zzbo.zzu(onFailureListener);
        this.zzcoU.zzat(onFailureListener);
        return this;
    }

    public StorageTask<TResult> removeOnPausedListener(@NonNull OnPausedListener<? super TResult> onPausedListener) {
        zzbo.zzu(onPausedListener);
        this.zzcoX.zzat(onPausedListener);
        return this;
    }

    public StorageTask<TResult> removeOnProgressListener(@NonNull OnProgressListener<? super TResult> onProgressListener) {
        zzbo.zzu(onProgressListener);
        this.zzcoW.zzat(onProgressListener);
        return this;
    }

    public StorageTask<TResult> removeOnSuccessListener(@NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        zzbo.zzu(onSuccessListener);
        this.zzcoT.zzat(onSuccessListener);
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    @VisibleForTesting
    public void resetState() {
    }

    public boolean resume() {
        if (!zzj(2, true)) {
            return false;
        }
        resetState();
        schedule();
        return true;
    }

    @VisibleForTesting
    public abstract void run();

    @VisibleForTesting
    public abstract void schedule();

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final Runnable zzEf() {
        return new zzr(this);
    }

    @VisibleForTesting
    @NonNull
    public abstract TResult zzKM();

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final boolean zzKQ() {
        if (!zzj(2, false)) {
            return false;
        }
        schedule();
        return true;
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final int zzKR() {
        return this.zzOn;
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    @NonNull
    public final TResult zzKS() {
        ProvideError zzKM;
        synchronized (this.mSyncObject) {
            zzKM = zzKM();
        }
        return zzKM;
    }

    /* Access modifiers changed, original: final */
    @VisibleForTesting
    public final boolean zzj(int i, boolean z) {
        return zza(new int[]{i}, z);
    }
}
