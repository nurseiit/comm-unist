package com.google.inject.internal.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import org.roboguice.shaded.goole.common.base.Preconditions;

public final class Classes {
    public static boolean isInnerClass(Class<?> cls) {
        return (Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null) ? false : true;
    }

    public static boolean isConcrete(Class<?> cls) {
        return (cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) ? false : true;
    }

    public static String toString(Member member) {
        Class memberType = memberType(member);
        StringBuilder stringBuilder;
        if (memberType == Method.class) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(member.getDeclaringClass().getName());
            stringBuilder.append(".");
            stringBuilder.append(member.getName());
            stringBuilder.append("()");
            return stringBuilder.toString();
        } else if (memberType == Field.class) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(member.getDeclaringClass().getName());
            stringBuilder.append(".");
            stringBuilder.append(member.getName());
            return stringBuilder.toString();
        } else if (memberType == Constructor.class) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(member.getDeclaringClass().getName());
            stringBuilder.append(".<init>()");
            return stringBuilder.toString();
        } else {
            throw new AssertionError();
        }
    }

    public static Class<? extends Member> memberType(Member member) {
        Preconditions.checkNotNull(member, "member");
        if (member instanceof Field) {
            return Field.class;
        }
        if (member instanceof Method) {
            return Method.class;
        }
        if (member instanceof Constructor) {
            return Constructor.class;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Unsupported implementation class for Member, ");
        stringBuilder.append(member.getClass());
        throw new IllegalArgumentException(stringBuilder.toString());
    }
}
