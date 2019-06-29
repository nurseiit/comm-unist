package org.roboguice.shaded.goole.common.util.concurrent;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.roboguice.shaded.goole.common.annotations.Beta;

@Beta
public interface CheckedFuture<V, X extends Exception> extends ListenableFuture<V> {
    V checkedGet() throws Exception;

    V checkedGet(long j, TimeUnit timeUnit) throws TimeoutException, Exception;
}
