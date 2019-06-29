package org.roboguice.shaded.goole.common.util.concurrent;

public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(I i) throws Exception;
}
