package org.roboguice.shaded.goole.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
interface SortedIterable<T> extends Iterable<T> {
    Comparator<? super T> comparator();

    Iterator<T> iterator();
}
