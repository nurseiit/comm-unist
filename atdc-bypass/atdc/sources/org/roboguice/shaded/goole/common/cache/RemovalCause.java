package org.roboguice.shaded.goole.common.cache;

import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public enum RemovalCause {
    EXPLICIT {
        /* Access modifiers changed, original: 0000 */
        public boolean wasEvicted() {
            return false;
        }
    },
    REPLACED {
        /* Access modifiers changed, original: 0000 */
        public boolean wasEvicted() {
            return false;
        }
    },
    COLLECTED {
        /* Access modifiers changed, original: 0000 */
        public boolean wasEvicted() {
            return true;
        }
    },
    EXPIRED {
        /* Access modifiers changed, original: 0000 */
        public boolean wasEvicted() {
            return true;
        }
    },
    SIZE {
        /* Access modifiers changed, original: 0000 */
        public boolean wasEvicted() {
            return true;
        }
    };

    public abstract boolean wasEvicted();
}
