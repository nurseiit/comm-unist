package roboguice.event.javaassist;

import java.lang.reflect.Method;

public final class RuntimeSupport {
    private RuntimeSupport() {
    }

    public static String makeDescriptor(Method method) {
        return makeDescriptor(method.getParameterTypes(), method.getReturnType());
    }

    public static String makeDescriptor(Class<?>[] clsArr, Class<?> cls) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Class makeDesc : clsArr) {
            makeDesc(stringBuffer, makeDesc);
        }
        stringBuffer.append(')');
        makeDesc(stringBuffer, cls);
        return stringBuffer.toString();
    }

    private static void makeDesc(StringBuffer stringBuffer, Class<?> cls) {
        if (cls.isArray()) {
            stringBuffer.append('[');
            makeDesc(stringBuffer, cls.getComponentType());
        } else if (!cls.isPrimitive()) {
            stringBuffer.append('L');
            stringBuffer.append(cls.getName().replace('.', '/'));
            stringBuffer.append(';');
        } else if (cls == Void.TYPE) {
            stringBuffer.append('V');
        } else if (cls == Integer.TYPE) {
            stringBuffer.append('I');
        } else if (cls == Byte.TYPE) {
            stringBuffer.append('B');
        } else if (cls == Long.TYPE) {
            stringBuffer.append('J');
        } else if (cls == Double.TYPE) {
            stringBuffer.append('D');
        } else if (cls == Float.TYPE) {
            stringBuffer.append('F');
        } else if (cls == Character.TYPE) {
            stringBuffer.append('C');
        } else if (cls == Short.TYPE) {
            stringBuffer.append('S');
        } else if (cls == Boolean.TYPE) {
            stringBuffer.append('Z');
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("bad type: ");
            stringBuilder.append(cls.getName());
            throw new RuntimeException(stringBuilder.toString());
        }
    }
}
