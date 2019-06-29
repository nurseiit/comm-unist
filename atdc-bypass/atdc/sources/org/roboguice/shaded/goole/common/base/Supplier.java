package org.roboguice.shaded.goole.common.base;

import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public interface Supplier<T> {
    T get();
}
