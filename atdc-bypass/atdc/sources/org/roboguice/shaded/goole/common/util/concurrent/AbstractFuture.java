package org.roboguice.shaded.goole.common.util.concurrent;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.base.Preconditions;

public abstract class AbstractFuture<V> implements ListenableFuture<V> {
    private final ExecutionList executionList = new ExecutionList();
    private final Sync<V> sync = new Sync();

    static final class Sync<V> extends AbstractQueuedSynchronizer {
        static final int CANCELLED = 4;
        static final int COMPLETED = 2;
        static final int COMPLETING = 1;
        static final int INTERRUPTED = 8;
        static final int RUNNING = 0;
        private static final long serialVersionUID = 0;
        private Throwable exception;
        private V value;

        Sync() {
        }

        /* Access modifiers changed, original: protected */
        public int tryAcquireShared(int i) {
            return isDone() ? 1 : -1;
        }

        /* Access modifiers changed, original: protected */
        public boolean tryReleaseShared(int i) {
            setState(i);
            return true;
        }

        /* Access modifiers changed, original: 0000 */
        public V get(long j) throws TimeoutException, CancellationException, ExecutionException, InterruptedException {
            if (tryAcquireSharedNanos(-1, j)) {
                return getValue();
            }
            throw new TimeoutException("Timeout waiting for task.");
        }

        /* Access modifiers changed, original: 0000 */
        public V get() throws CancellationException, ExecutionException, InterruptedException {
            acquireSharedInterruptibly(-1);
            return getValue();
        }

        private V getValue() throws CancellationException, ExecutionException {
            int state = getState();
            if (state != 2) {
                if (state == 4 || state == 8) {
                    throw AbstractFuture.cancellationExceptionWithCause("Task was cancelled.", this.exception);
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Error, synchronizer in invalid state: ");
                stringBuilder.append(state);
                throw new IllegalStateException(stringBuilder.toString());
            } else if (this.exception == null) {
                return this.value;
            } else {
                throw new ExecutionException(this.exception);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isDone() {
            return (getState() & 14) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean isCancelled() {
            return (getState() & 12) != 0;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean wasInterrupted() {
            return getState() == 8;
        }

        /* Access modifiers changed, original: 0000 */
        public boolean set(@Nullable V v) {
            return complete(v, null, 2);
        }

        /* Access modifiers changed, original: 0000 */
        public boolean setException(Throwable th) {
            return complete(null, th, 2);
        }

        /* Access modifiers changed, original: 0000 */
        public boolean cancel(boolean z) {
            return complete(null, null, z ? 8 : 4);
        }

        private boolean complete(@Nullable V v, @Nullable Throwable th, int i) {
            boolean compareAndSetState = compareAndSetState(0, 1);
            if (compareAndSetState) {
                this.value = v;
                if ((i & 12) != 0) {
                    th = new CancellationException("Future.cancel() was called.");
                }
                this.exception = th;
                releaseShared(i);
            } else if (getState() == 1) {
                acquireShared(-1);
            }
            return compareAndSetState;
        }
    }

    /* Access modifiers changed, original: protected */
    public void interruptTask() {
    }

    protected AbstractFuture() {
    }

    public V get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        return this.sync.get(timeUnit.toNanos(j));
    }

    public V get() throws InterruptedException, ExecutionException {
        return this.sync.get();
    }

    public boolean isDone() {
        return this.sync.isDone();
    }

    public boolean isCancelled() {
        return this.sync.isCancelled();
    }

    public boolean cancel(boolean z) {
        if (!this.sync.cancel(z)) {
            return false;
        }
        this.executionList.execute();
        if (z) {
            interruptTask();
        }
        return true;
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean wasInterrupted() {
        return this.sync.wasInterrupted();
    }

    public void addListener(Runnable runnable, Executor executor) {
        this.executionList.add(runnable, executor);
    }

    /* Access modifiers changed, original: protected */
    public boolean set(@Nullable V v) {
        boolean z = this.sync.set(v);
        if (z) {
            this.executionList.execute();
        }
        return z;
    }

    /* Access modifiers changed, original: protected */
    public boolean setException(Throwable th) {
        boolean exception = this.sync.setException((Throwable) Preconditions.checkNotNull(th));
        if (exception) {
            this.executionList.execute();
        }
        return exception;
    }

    static final CancellationException cancellationExceptionWithCause(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
