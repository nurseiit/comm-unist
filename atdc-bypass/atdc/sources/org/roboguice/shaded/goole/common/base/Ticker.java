package org.roboguice.shaded.goole.common.base;

import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public abstract class Ticker {
    private static final Ticker SYSTEM_TICKER = new Ticker() {
        public long read() {
            return Platform.systemNanoTime();
        }
    };

    public abstract long read();

    protected Ticker() {
    }

    public static Ticker systemTicker() {
        return SYSTEM_TICKER;
    }
}
