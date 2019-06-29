package org.roboguice.shaded.goole.common.collect;

import java.util.Map.Entry;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true)
final class EmptyImmutableBiMap extends ImmutableBiMap<Object, Object> {
    static final EmptyImmutableBiMap INSTANCE = new EmptyImmutableBiMap();

    public Object get(@Nullable Object obj) {
        return null;
    }

    public ImmutableBiMap<Object, Object> inverse() {
        return this;
    }

    public boolean isEmpty() {
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return false;
    }

    public int size() {
        return 0;
    }

    private EmptyImmutableBiMap() {
    }

    public ImmutableSet<Entry<Object, Object>> entrySet() {
        return ImmutableSet.of();
    }

    /* Access modifiers changed, original: 0000 */
    public ImmutableSet<Entry<Object, Object>> createEntrySet() {
        throw new AssertionError("should never be called");
    }

    public ImmutableSetMultimap<Object, Object> asMultimap() {
        return ImmutableSetMultimap.of();
    }

    public ImmutableSet<Object> keySet() {
        return ImmutableSet.of();
    }

    /* Access modifiers changed, original: 0000 */
    public Object readResolve() {
        return INSTANCE;
    }
}
