package org.roboguice.shaded.goole.common.collect;

import java.util.Iterator;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public abstract class ForwardingIterator<T> extends ForwardingObject implements Iterator<T> {
    public abstract Iterator<T> delegate();

    protected ForwardingIterator() {
    }

    public boolean hasNext() {
        return delegate().hasNext();
    }

    public T next() {
        return delegate().next();
    }

    public void remove() {
        delegate().remove();
    }
}
