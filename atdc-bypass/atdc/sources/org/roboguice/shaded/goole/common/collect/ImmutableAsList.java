package org.roboguice.shaded.goole.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;

@GwtCompatible(emulated = true, serializable = true)
abstract class ImmutableAsList<E> extends ImmutableList<E> {

    @GwtIncompatible("serialization")
    static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableCollection<?> collection;

        SerializedForm(ImmutableCollection<?> immutableCollection) {
            this.collection = immutableCollection;
        }

        /* Access modifiers changed, original: 0000 */
        public Object readResolve() {
            return this.collection.asList();
        }
    }

    public abstract ImmutableCollection<E> delegateCollection();

    ImmutableAsList() {
    }

    public boolean contains(Object obj) {
        return delegateCollection().contains(obj);
    }

    public int size() {
        return delegateCollection().size();
    }

    public boolean isEmpty() {
        return delegateCollection().isEmpty();
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isPartialView() {
        return delegateCollection().isPartialView();
    }

    @GwtIncompatible("serialization")
    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    /* Access modifiers changed, original: 0000 */
    @GwtIncompatible("serialization")
    public Object writeReplace() {
        return new SerializedForm(delegateCollection());
    }
}
