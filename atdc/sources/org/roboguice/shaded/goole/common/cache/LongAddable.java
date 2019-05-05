package org.roboguice.shaded.goole.common.cache;

import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
interface LongAddable {
    void add(long j);

    void increment();

    long sum();
}
