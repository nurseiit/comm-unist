package org.roboguice.shaded.goole.common.cache;

import java.util.concurrent.atomic.AtomicLong;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.base.Supplier;

@GwtCompatible(emulated = true)
final class LongAddables {
    private static final Supplier<LongAddable> SUPPLIER;

    private static final class PureJavaLongAddable extends AtomicLong implements LongAddable {
        private PureJavaLongAddable() {
        }

        /* synthetic */ PureJavaLongAddable(AnonymousClass1 anonymousClass1) {
            this();
        }

        public void increment() {
            getAndIncrement();
        }

        public void add(long j) {
            getAndAdd(j);
        }

        public long sum() {
            return get();
        }
    }

    LongAddables() {
    }

    static {
        Supplier anonymousClass1;
        try {
            LongAdder longAdder = new LongAdder();
            anonymousClass1 = new Supplier<LongAddable>() {
                public LongAddable get() {
                    return new LongAdder();
                }
            };
        } catch (Throwable unused) {
            anonymousClass1 = new Supplier<LongAddable>() {
                public LongAddable get() {
                    return new PureJavaLongAddable();
                }
            };
        }
        SUPPLIER = anonymousClass1;
    }

    public static LongAddable create() {
        return (LongAddable) SUPPLIER.get();
    }
}
