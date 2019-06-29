package org.roboguice.shaded.goole.common.util.concurrent;

import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public class UncheckedExecutionException extends RuntimeException {
    private static final long serialVersionUID = 0;

    protected UncheckedExecutionException() {
    }

    protected UncheckedExecutionException(@Nullable String str) {
        super(str);
    }

    public UncheckedExecutionException(@Nullable String str, @Nullable Throwable th) {
        super(str, th);
    }

    public UncheckedExecutionException(@Nullable Throwable th) {
        super(th);
    }
}
