package org.roboguice.shaded.goole.common.collect;

import java.util.Map;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.collect.Multiset.Entry;

@GwtCompatible(serializable = true)
class RegularImmutableMultiset<E> extends ImmutableMultiset<E> {
    private final transient ImmutableMap<E, Integer> map;
    private final transient int size;

    RegularImmutableMultiset(ImmutableMap<E, Integer> immutableMap, int i) {
        this.map = immutableMap;
        this.size = i;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return this.map.isPartialView();
    }

    public int count(@Nullable Object obj) {
        Integer num = (Integer) this.map.get(obj);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int size() {
        return this.size;
    }

    public boolean contains(@Nullable Object obj) {
        return this.map.containsKey(obj);
    }

    public ImmutableSet<E> elementSet() {
        return this.map.keySet();
    }

    /* Access modifiers changed, original: 0000 */
    public Entry<E> getEntry(int i) {
        Map.Entry entry = (Map.Entry) this.map.entrySet().asList().get(i);
        return Multisets.immutableEntry(entry.getKey(), ((Integer) entry.getValue()).intValue());
    }

    public int hashCode() {
        return this.map.hashCode();
    }
}
