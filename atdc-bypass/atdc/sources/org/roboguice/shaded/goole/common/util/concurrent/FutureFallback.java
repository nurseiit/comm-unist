package org.roboguice.shaded.goole.common.util.concurrent;

import org.roboguice.shaded.goole.common.annotations.Beta;

@Beta
public interface FutureFallback<V> {
    ListenableFuture<V> create(Throwable th) throws Exception;
}
