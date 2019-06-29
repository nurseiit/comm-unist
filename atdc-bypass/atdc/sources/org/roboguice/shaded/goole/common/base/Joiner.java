package org.roboguice.shaded.goole.common.base;

import java.io.IOException;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public class Joiner {
    private final String separator;

    public static final class MapJoiner {
        private final Joiner joiner;
        private final String keyValueSeparator;

        /* synthetic */ MapJoiner(Joiner joiner, String str, AnonymousClass1 anonymousClass1) {
            this(joiner, str);
        }

        private MapJoiner(Joiner joiner, String str) {
            this.joiner = joiner;
            this.keyValueSeparator = (String) Preconditions.checkNotNull(str);
        }

        public <A extends Appendable> A appendTo(A a, Map<?, ?> map) throws IOException {
            return appendTo((Appendable) a, map.entrySet());
        }

        public StringBuilder appendTo(StringBuilder stringBuilder, Map<?, ?> map) {
            return appendTo(stringBuilder, map.entrySet());
        }

        public String join(Map<?, ?> map) {
            return join(map.entrySet());
        }

        @Beta
        public <A extends Appendable> A appendTo(A a, Iterable<? extends Entry<?, ?>> iterable) throws IOException {
            return appendTo((Appendable) a, iterable.iterator());
        }

        @Beta
        public <A extends Appendable> A appendTo(A a, Iterator<? extends Entry<?, ?>> it) throws IOException {
            Preconditions.checkNotNull(a);
            if (it.hasNext()) {
                Entry entry = (Entry) it.next();
                a.append(this.joiner.toString(entry.getKey()));
                a.append(this.keyValueSeparator);
                a.append(this.joiner.toString(entry.getValue()));
                while (it.hasNext()) {
                    a.append(this.joiner.separator);
                    entry = (Entry) it.next();
                    a.append(this.joiner.toString(entry.getKey()));
                    a.append(this.keyValueSeparator);
                    a.append(this.joiner.toString(entry.getValue()));
                }
            }
            return a;
        }

        @Beta
        public StringBuilder appendTo(StringBuilder stringBuilder, Iterable<? extends Entry<?, ?>> iterable) {
            return appendTo(stringBuilder, iterable.iterator());
        }

        @Beta
        public StringBuilder appendTo(StringBuilder stringBuilder, Iterator<? extends Entry<?, ?>> it) {
            try {
                appendTo((Appendable) stringBuilder, (Iterator) it);
                return stringBuilder;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Beta
        public String join(Iterable<? extends Entry<?, ?>> iterable) {
            return join(iterable.iterator());
        }

        @Beta
        public String join(Iterator<? extends Entry<?, ?>> it) {
            return appendTo(new StringBuilder(), (Iterator) it).toString();
        }

        @CheckReturnValue
        public MapJoiner useForNull(String str) {
            return new MapJoiner(this.joiner.useForNull(str), this.keyValueSeparator);
        }
    }

    /* synthetic */ Joiner(Joiner joiner, AnonymousClass1 anonymousClass1) {
        this(joiner);
    }

    public static Joiner on(String str) {
        return new Joiner(str);
    }

    public static Joiner on(char c) {
        return new Joiner(String.valueOf(c));
    }

    private Joiner(String str) {
        this.separator = (String) Preconditions.checkNotNull(str);
    }

    private Joiner(Joiner joiner) {
        this.separator = joiner.separator;
    }

    public <A extends Appendable> A appendTo(A a, Iterable<?> iterable) throws IOException {
        return appendTo((Appendable) a, iterable.iterator());
    }

    public <A extends Appendable> A appendTo(A a, Iterator<?> it) throws IOException {
        Preconditions.checkNotNull(a);
        if (it.hasNext()) {
            a.append(toString(it.next()));
            while (it.hasNext()) {
                a.append(this.separator);
                a.append(toString(it.next()));
            }
        }
        return a;
    }

    public final <A extends Appendable> A appendTo(A a, Object[] objArr) throws IOException {
        return appendTo((Appendable) a, Arrays.asList(objArr));
    }

    public final <A extends Appendable> A appendTo(A a, @Nullable Object obj, @Nullable Object obj2, Object... objArr) throws IOException {
        return appendTo((Appendable) a, iterable(obj, obj2, objArr));
    }

    public final StringBuilder appendTo(StringBuilder stringBuilder, Iterable<?> iterable) {
        return appendTo(stringBuilder, iterable.iterator());
    }

    public final StringBuilder appendTo(StringBuilder stringBuilder, Iterator<?> it) {
        try {
            appendTo((Appendable) stringBuilder, (Iterator) it);
            return stringBuilder;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final StringBuilder appendTo(StringBuilder stringBuilder, Object[] objArr) {
        return appendTo(stringBuilder, Arrays.asList(objArr));
    }

    public final StringBuilder appendTo(StringBuilder stringBuilder, @Nullable Object obj, @Nullable Object obj2, Object... objArr) {
        return appendTo(stringBuilder, iterable(obj, obj2, objArr));
    }

    public final String join(Iterable<?> iterable) {
        return join(iterable.iterator());
    }

    public final String join(Iterator<?> it) {
        return appendTo(new StringBuilder(), (Iterator) it).toString();
    }

    public final String join(Object[] objArr) {
        return join(Arrays.asList(objArr));
    }

    public final String join(@Nullable Object obj, @Nullable Object obj2, Object... objArr) {
        return join(iterable(obj, obj2, objArr));
    }

    @CheckReturnValue
    public Joiner useForNull(final String str) {
        Preconditions.checkNotNull(str);
        return new Joiner(this) {
            /* Access modifiers changed, original: 0000 */
            public CharSequence toString(@Nullable Object obj) {
                return obj == null ? str : Joiner.this.toString(obj);
            }

            public Joiner useForNull(String str) {
                throw new UnsupportedOperationException("already specified useForNull");
            }

            public Joiner skipNulls() {
                throw new UnsupportedOperationException("already specified useForNull");
            }
        };
    }

    @CheckReturnValue
    public Joiner skipNulls() {
        return new Joiner(this) {
            public <A extends Appendable> A appendTo(A a, Iterator<?> it) throws IOException {
                Object next;
                Preconditions.checkNotNull(a, "appendable");
                Preconditions.checkNotNull(it, "parts");
                while (it.hasNext()) {
                    next = it.next();
                    if (next != null) {
                        a.append(Joiner.this.toString(next));
                        break;
                    }
                }
                while (it.hasNext()) {
                    next = it.next();
                    if (next != null) {
                        a.append(Joiner.this.separator);
                        a.append(Joiner.this.toString(next));
                    }
                }
                return a;
            }

            public Joiner useForNull(String str) {
                throw new UnsupportedOperationException("already specified skipNulls");
            }

            public MapJoiner withKeyValueSeparator(String str) {
                throw new UnsupportedOperationException("can't use .skipNulls() with maps");
            }
        };
    }

    @CheckReturnValue
    public MapJoiner withKeyValueSeparator(String str) {
        return new MapJoiner(this, str, null);
    }

    /* Access modifiers changed, original: 0000 */
    public CharSequence toString(Object obj) {
        Preconditions.checkNotNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    private static Iterable<Object> iterable(final Object obj, final Object obj2, final Object[] objArr) {
        Preconditions.checkNotNull(objArr);
        return new AbstractList<Object>() {
            public int size() {
                return objArr.length + 2;
            }

            public Object get(int i) {
                switch (i) {
                    case 0:
                        return obj;
                    case 1:
                        return obj2;
                    default:
                        return objArr[i - 2];
                }
            }
        };
    }
}
