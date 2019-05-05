package org.roboguice.shaded.goole.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.base.Predicate;
import org.roboguice.shaded.goole.common.base.Predicates;

@GwtCompatible
final class FilteredMultimapValues<K, V> extends AbstractCollection<V> {
    private final FilteredMultimap<K, V> multimap;

    FilteredMultimapValues(FilteredMultimap<K, V> filteredMultimap) {
        this.multimap = (FilteredMultimap) Preconditions.checkNotNull(filteredMultimap);
    }

    public Iterator<V> iterator() {
        return Maps.valueIterator(this.multimap.entries().iterator());
    }

    public boolean contains(@Nullable Object obj) {
        return this.multimap.containsValue(obj);
    }

    public int size() {
        return this.multimap.size();
    }

    public boolean remove(@Nullable Object obj) {
        Predicate entryPredicate = this.multimap.entryPredicate();
        Iterator it = this.multimap.unfiltered().entries().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (entryPredicate.apply(entry) && Objects.equal(entry.getValue(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public boolean removeAll(Collection<?> collection) {
        return Iterables.removeIf(this.multimap.unfiltered().entries(), Predicates.and(this.multimap.entryPredicate(), Maps.valuePredicateOnEntries(Predicates.in(collection))));
    }

    public boolean retainAll(Collection<?> collection) {
        return Iterables.removeIf(this.multimap.unfiltered().entries(), Predicates.and(this.multimap.entryPredicate(), Maps.valuePredicateOnEntries(Predicates.not(Predicates.in(collection)))));
    }

    public void clear() {
        this.multimap.clear();
    }
}
