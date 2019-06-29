package org.roboguice.shaded.goole.common.util.concurrent;

import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public class ExecutionError extends Error {
    private static final long serialVersionUID = 0;

    protected ExecutionError() {
    }

    protected ExecutionError(@Nullable String str) {
        super(str);
    }

    public ExecutionError(@Nullable String str, @Nullable Error error) {
        super(str, error);
    }

    public ExecutionError(@Nullable Error error) {
        super(error);
    }
}
