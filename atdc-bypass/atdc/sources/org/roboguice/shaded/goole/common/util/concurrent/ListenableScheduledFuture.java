package org.roboguice.shaded.goole.common.util.concurrent;

import java.util.concurrent.ScheduledFuture;
import org.roboguice.shaded.goole.common.annotations.Beta;

@Beta
public interface ListenableScheduledFuture<V> extends ScheduledFuture<V>, ListenableFuture<V> {
}
