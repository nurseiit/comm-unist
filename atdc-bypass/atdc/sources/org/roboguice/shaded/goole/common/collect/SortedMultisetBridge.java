package org.roboguice.shaded.goole.common.collect;

import java.util.SortedSet;

interface SortedMultisetBridge<E> extends Multiset<E> {
    SortedSet<E> elementSet();
}
