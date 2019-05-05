package org.roboguice.shaded.goole.common.collect;

import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public abstract class ForwardingObject {
    public abstract Object delegate();

    protected ForwardingObject() {
    }

    public String toString() {
        return delegate().toString();
    }
}
