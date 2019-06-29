package com.google.firebase.storage;

import android.app.Activity;
import android.support.annotation.NonNull;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;

public abstract class CancellableTask<TState> extends Task<TState> {
    public abstract CancellableTask<TState> addOnProgressListener(@NonNull Activity activity, @NonNull OnProgressListener<? super TState> onProgressListener);

    public abstract CancellableTask<TState> addOnProgressListener(@NonNull OnProgressListener<? super TState> onProgressListener);

    public abstract CancellableTask<TState> addOnProgressListener(@NonNull Executor executor, @NonNull OnProgressListener<? super TState> onProgressListener);

    public abstract boolean cancel();

    public abstract boolean isCanceled();

    public abstract boolean isInProgress();
}
