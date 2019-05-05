package org.roboguice.shaded.goole.common.util.concurrent;

import java.util.concurrent.Callable;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.base.Supplier;

public final class Callables {
    private Callables() {
    }

    public static <T> Callable<T> returning(@Nullable final T t) {
        return new Callable<T>() {
            public T call() {
                return t;
            }
        };
    }

    static <T> Callable<T> threadRenaming(final Callable<T> callable, final Supplier<String> supplier) {
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(callable);
        return new Callable<T>() {
            public T call() throws Exception {
                Thread currentThread = Thread.currentThread();
                String name = currentThread.getName();
                boolean access$000 = Callables.trySetName((String) supplier.get(), currentThread);
                try {
                    T call = callable.call();
                    return call;
                } finally {
                    if (access$000) {
                        Callables.trySetName(name, currentThread);
                    }
                }
            }
        };
    }

    static Runnable threadRenaming(final Runnable runnable, final Supplier<String> supplier) {
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(runnable);
        return new Runnable() {
            public void run() {
                Thread currentThread = Thread.currentThread();
                String name = currentThread.getName();
                boolean access$000 = Callables.trySetName((String) supplier.get(), currentThread);
                try {
                    runnable.run();
                } finally {
                    if (access$000) {
                        Callables.trySetName(name, currentThread);
                    }
                }
            }
        };
    }

    private static boolean trySetName(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
