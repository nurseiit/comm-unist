package org.roboguice.shaded.goole.common.base;

import java.util.Arrays;
import javax.annotation.Nullable;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public final class Objects {

    public static final class ToStringHelper {
        private final String className;
        private ValueHolder holderHead;
        private ValueHolder holderTail;
        private boolean omitNullValues;

        private static final class ValueHolder {
            String name;
            ValueHolder next;
            Object value;

            private ValueHolder() {
            }

            /* synthetic */ ValueHolder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        /* synthetic */ ToStringHelper(String str, AnonymousClass1 anonymousClass1) {
            this(str);
        }

        private ToStringHelper(String str) {
            this.holderHead = new ValueHolder();
            this.holderTail = this.holderHead;
            this.omitNullValues = false;
            this.className = (String) Preconditions.checkNotNull(str);
        }

        public ToStringHelper omitNullValues() {
            this.omitNullValues = true;
            return this;
        }

        public ToStringHelper add(String str, @Nullable Object obj) {
            return addHolder(str, obj);
        }

        public ToStringHelper add(String str, boolean z) {
            return addHolder(str, String.valueOf(z));
        }

        public ToStringHelper add(String str, char c) {
            return addHolder(str, String.valueOf(c));
        }

        public ToStringHelper add(String str, double d) {
            return addHolder(str, String.valueOf(d));
        }

        public ToStringHelper add(String str, float f) {
            return addHolder(str, String.valueOf(f));
        }

        public ToStringHelper add(String str, int i) {
            return addHolder(str, String.valueOf(i));
        }

        public ToStringHelper add(String str, long j) {
            return addHolder(str, String.valueOf(j));
        }

        public ToStringHelper addValue(@Nullable Object obj) {
            return addHolder(obj);
        }

        public ToStringHelper addValue(boolean z) {
            return addHolder(String.valueOf(z));
        }

        public ToStringHelper addValue(char c) {
            return addHolder(String.valueOf(c));
        }

        public ToStringHelper addValue(double d) {
            return addHolder(String.valueOf(d));
        }

        public ToStringHelper addValue(float f) {
            return addHolder(String.valueOf(f));
        }

        public ToStringHelper addValue(int i) {
            return addHolder(String.valueOf(i));
        }

        public ToStringHelper addValue(long j) {
            return addHolder(String.valueOf(j));
        }

        public String toString() {
            boolean z = this.omitNullValues;
            String str = "";
            StringBuilder stringBuilder = new StringBuilder(32);
            stringBuilder.append(this.className);
            stringBuilder.append('{');
            ValueHolder valueHolder = this.holderHead.next;
            while (valueHolder != null) {
                if (!z || valueHolder.value != null) {
                    stringBuilder.append(str);
                    str = ", ";
                    if (valueHolder.name != null) {
                        stringBuilder.append(valueHolder.name);
                        stringBuilder.append('=');
                    }
                    stringBuilder.append(valueHolder.value);
                }
                valueHolder = valueHolder.next;
            }
            stringBuilder.append('}');
            return stringBuilder.toString();
        }

        private ValueHolder addHolder() {
            ValueHolder valueHolder = new ValueHolder();
            this.holderTail.next = valueHolder;
            this.holderTail = valueHolder;
            return valueHolder;
        }

        private ToStringHelper addHolder(@Nullable Object obj) {
            addHolder().value = obj;
            return this;
        }

        private ToStringHelper addHolder(String str, @Nullable Object obj) {
            ValueHolder addHolder = addHolder();
            addHolder.value = obj;
            addHolder.name = (String) Preconditions.checkNotNull(str);
            return this;
        }
    }

    private Objects() {
    }

    public static boolean equal(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hashCode(@Nullable Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(simpleName(obj.getClass()), null);
    }

    public static ToStringHelper toStringHelper(Class<?> cls) {
        return new ToStringHelper(simpleName(cls), null);
    }

    public static ToStringHelper toStringHelper(String str) {
        return new ToStringHelper(str, null);
    }

    private static String simpleName(Class<?> cls) {
        String replaceAll = cls.getName().replaceAll("\\$[0-9]+", "\\$");
        int lastIndexOf = replaceAll.lastIndexOf(36);
        if (lastIndexOf == -1) {
            lastIndexOf = replaceAll.lastIndexOf(46);
        }
        return replaceAll.substring(lastIndexOf + 1);
    }

    public static <T> T firstNonNull(@Nullable T t, @Nullable T t2) {
        return t != null ? t : Preconditions.checkNotNull(t2);
    }
}
