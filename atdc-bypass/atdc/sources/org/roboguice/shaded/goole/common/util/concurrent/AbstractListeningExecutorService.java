package org.roboguice.shaded.goole.common.util.concurrent;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;

@Beta
public abstract class AbstractListeningExecutorService extends AbstractExecutorService implements ListeningExecutorService {
    /* Access modifiers changed, original: protected|final */
    public final <T> ListenableFutureTask<T> newTaskFor(Runnable runnable, T t) {
        return ListenableFutureTask.create(runnable, t);
    }

    /* Access modifiers changed, original: protected|final */
    public final <T> ListenableFutureTask<T> newTaskFor(Callable<T> callable) {
        return ListenableFutureTask.create(callable);
    }

    public ListenableFuture<?> submit(Runnable runnable) {
        return (ListenableFuture) super.submit(runnable);
    }

    public <T> ListenableFuture<T> submit(Runnable runnable, @Nullable T t) {
        return (ListenableFuture) super.submit(runnable, t);
    }

    public <T> ListenableFuture<T> submit(Callable<T> callable) {
        return (ListenableFuture) super.submit(callable);
    }
}
