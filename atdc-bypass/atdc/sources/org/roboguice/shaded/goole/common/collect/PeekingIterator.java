package org.roboguice.shaded.goole.common.collect;

import java.util.Iterator;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public interface PeekingIterator<E> extends Iterator<E> {
    E next();

    E peek();

    void remove();
}
