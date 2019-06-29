package org.roboguice.shaded.goole.common.collect;

import java.util.Iterator;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public abstract class UnmodifiableIterator<E> implements Iterator<E> {
    protected UnmodifiableIterator() {
    }

    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
