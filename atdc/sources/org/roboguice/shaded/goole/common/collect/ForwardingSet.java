package org.roboguice.shaded.goole.common.collect;

import java.util.Collection;
import java.util.Set;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible
public abstract class ForwardingSet<E> extends ForwardingCollection<E> implements Set<E> {
    public abstract Set<E> delegate();

    protected ForwardingSet() {
    }

    public boolean equals(@Nullable Object obj) {
        return obj == this || delegate().equals(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    /* Access modifiers changed, original: protected */
    public boolean standardRemoveAll(Collection<?> collection) {
        return Sets.removeAllImpl((Set) this, (Collection) Preconditions.checkNotNull(collection));
    }

    /* Access modifiers changed, original: protected */
    public boolean standardEquals(@Nullable Object obj) {
        return Sets.equalsImpl(this, obj);
    }

    /* Access modifiers changed, original: protected */
    public int standardHashCode() {
        return Sets.hashCodeImpl(this);
    }
}
