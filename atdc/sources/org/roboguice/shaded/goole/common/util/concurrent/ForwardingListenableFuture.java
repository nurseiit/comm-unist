package org.roboguice.shaded.goole.common.util.concurrent;

import java.util.concurrent.Executor;
import org.roboguice.shaded.goole.common.base.Preconditions;

public abstract class ForwardingListenableFuture<V> extends ForwardingFuture<V> implements ListenableFuture<V> {

    public static abstract class SimpleForwardingListenableFuture<V> extends ForwardingListenableFuture<V> {
        private final ListenableFuture<V> delegate;

        protected SimpleForwardingListenableFuture(ListenableFuture<V> listenableFuture) {
            this.delegate = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        }

        /* Access modifiers changed, original: protected|final */
        public final ListenableFuture<V> delegate() {
            return this.delegate;
        }
    }

    public abstract ListenableFuture<V> delegate();

    protected ForwardingListenableFuture() {
    }

    public void addListener(Runnable runnable, Executor executor) {
        delegate().addListener(runnable, executor);
    }
}
