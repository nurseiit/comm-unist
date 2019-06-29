package org.roboguice.shaded.goole.common.collect;

import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public enum BoundType {
    OPEN {
        /* Access modifiers changed, original: 0000 */
        public BoundType flip() {
            return CLOSED;
        }
    },
    CLOSED {
        /* Access modifiers changed, original: 0000 */
        public BoundType flip() {
            return OPEN;
        }
    };

    public abstract BoundType flip();

    static BoundType forBoolean(boolean z) {
        return z ? CLOSED : OPEN;
    }
}
