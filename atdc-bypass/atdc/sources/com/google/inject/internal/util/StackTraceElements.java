package com.google.inject.internal.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.util.Map;
import org.roboguice.shaded.goole.common.collect.MapMaker;

public class StackTraceElements {
    private static final InMemoryStackTraceElement[] EMPTY_INMEMORY_STACK_TRACE = new InMemoryStackTraceElement[0];
    private static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
    private static final String UNKNOWN_SOURCE = "Unknown Source";
    private static Map<Object, Object> cache = new MapMaker().makeMap();

    public static class InMemoryStackTraceElement {
        private String declaringClass;
        private int lineNumber;
        private String methodName;

        InMemoryStackTraceElement(StackTraceElement stackTraceElement) {
            this(stackTraceElement.getClassName(), stackTraceElement.getMethodName(), stackTraceElement.getLineNumber());
        }

        InMemoryStackTraceElement(String str, String str2, int i) {
            this.declaringClass = str;
            this.methodName = str2;
            this.lineNumber = i;
        }

        /* Access modifiers changed, original: 0000 */
        public String getClassName() {
            return this.declaringClass;
        }

        /* Access modifiers changed, original: 0000 */
        public String getMethodName() {
            return this.methodName;
        }

        /* Access modifiers changed, original: 0000 */
        public int getLineNumber() {
            return this.lineNumber;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof InMemoryStackTraceElement)) {
                return false;
            }
            InMemoryStackTraceElement inMemoryStackTraceElement = (InMemoryStackTraceElement) obj;
            if (!(inMemoryStackTraceElement.declaringClass.equals(this.declaringClass) && inMemoryStackTraceElement.lineNumber == this.lineNumber && this.methodName.equals(inMemoryStackTraceElement.methodName))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((this.declaringClass.hashCode() * 31) + this.methodName.hashCode()) * 31) + this.lineNumber;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.declaringClass);
            stringBuilder.append(".");
            stringBuilder.append(this.methodName);
            stringBuilder.append("(");
            stringBuilder.append(this.lineNumber);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    public static Object forMember(Member member) {
        if (member == null) {
            return SourceProvider.UNKNOWN_SOURCE;
        }
        return new StackTraceElement(member.getDeclaringClass().getName(), Classes.memberType(member) == Constructor.class ? "<init>" : member.getName(), null, -1);
    }

    public static Object forType(Class<?> cls) {
        return new StackTraceElement(cls.getName(), "class", null, -1);
    }

    public static void clearCache() {
        cache.clear();
    }

    public static InMemoryStackTraceElement[] convertToInMemoryStackTraceElement(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length == 0) {
            return EMPTY_INMEMORY_STACK_TRACE;
        }
        InMemoryStackTraceElement[] inMemoryStackTraceElementArr = new InMemoryStackTraceElement[stackTraceElementArr.length];
        for (int i = 0; i < stackTraceElementArr.length; i++) {
            inMemoryStackTraceElementArr[i] = weakIntern(new InMemoryStackTraceElement(stackTraceElementArr[i]));
        }
        return inMemoryStackTraceElementArr;
    }

    public static StackTraceElement[] convertToStackTraceElement(InMemoryStackTraceElement[] inMemoryStackTraceElementArr) {
        if (inMemoryStackTraceElementArr.length == 0) {
            return EMPTY_STACK_TRACE;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[inMemoryStackTraceElementArr.length];
        for (int i = 0; i < inMemoryStackTraceElementArr.length; i++) {
            stackTraceElementArr[i] = new StackTraceElement(inMemoryStackTraceElementArr[i].getClassName(), inMemoryStackTraceElementArr[i].getMethodName(), UNKNOWN_SOURCE, inMemoryStackTraceElementArr[i].getLineNumber());
        }
        return stackTraceElementArr;
    }

    private static InMemoryStackTraceElement weakIntern(InMemoryStackTraceElement inMemoryStackTraceElement) {
        InMemoryStackTraceElement inMemoryStackTraceElement2 = (InMemoryStackTraceElement) cache.get(inMemoryStackTraceElement);
        if (inMemoryStackTraceElement2 != null) {
            return inMemoryStackTraceElement2;
        }
        inMemoryStackTraceElement2 = new InMemoryStackTraceElement(weakIntern(inMemoryStackTraceElement.getClassName()), weakIntern(inMemoryStackTraceElement.getMethodName()), inMemoryStackTraceElement.getLineNumber());
        cache.put(inMemoryStackTraceElement2, inMemoryStackTraceElement2);
        return inMemoryStackTraceElement2;
    }

    private static String weakIntern(String str) {
        String str2 = (String) cache.get(str);
        if (str2 != null) {
            return str2;
        }
        cache.put(str, str);
        return str;
    }
}
