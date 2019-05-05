package com.google.firebase.storage;

import android.app.Activity;
import android.support.annotation.NonNull;
import java.util.concurrent.Executor;

public abstract class ControllableTask<TState> extends CancellableTask<TState> {
    public abstract ControllableTask<TState> addOnPausedListener(@NonNull Activity activity, @NonNull OnPausedListener<? super TState> onPausedListener);

    public abstract ControllableTask<TState> addOnPausedListener(@NonNull OnPausedListener<? super TState> onPausedListener);

    public abstract ControllableTask<TState> addOnPausedListener(@NonNull Executor executor, @NonNull OnPausedListener<? super TState> onPausedListener);

    public abstract boolean isPaused();

    public abstract boolean pause();

    public abstract boolean resume();
}
