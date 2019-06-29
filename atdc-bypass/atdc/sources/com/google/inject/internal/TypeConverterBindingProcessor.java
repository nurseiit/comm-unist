package com.google.inject.internal;

import com.google.inject.TypeLiteral;
import com.google.inject.internal.util.SourceProvider;
import com.google.inject.matcher.AbstractMatcher;
import com.google.inject.matcher.Matcher;
import com.google.inject.matcher.Matchers;
import com.google.inject.spi.TypeConverter;
import com.google.inject.spi.TypeConverterBinding;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

final class TypeConverterBindingProcessor extends AbstractProcessor {
    TypeConverterBindingProcessor(Errors errors) {
        super(errors);
    }

    static void prepareBuiltInConverters(InjectorImpl injectorImpl) {
        convertToPrimitiveType(injectorImpl, Integer.TYPE, Integer.class);
        convertToPrimitiveType(injectorImpl, Long.TYPE, Long.class);
        convertToPrimitiveType(injectorImpl, Boolean.TYPE, Boolean.class);
        convertToPrimitiveType(injectorImpl, Byte.TYPE, Byte.class);
        convertToPrimitiveType(injectorImpl, Short.TYPE, Short.class);
        convertToPrimitiveType(injectorImpl, Float.TYPE, Float.class);
        convertToPrimitiveType(injectorImpl, Double.TYPE, Double.class);
        convertToClass(injectorImpl, Character.class, new TypeConverter() {
            public String toString() {
                return "TypeConverter<Character>";
            }

            public Object convert(String str, TypeLiteral<?> typeLiteral) {
                str = str.trim();
                if (str.length() == 1) {
                    return Character.valueOf(str.charAt(0));
                }
                throw new RuntimeException("Length != 1.");
            }
        });
        convertToClasses(injectorImpl, Matchers.subclassesOf(Enum.class), new TypeConverter() {
            public String toString() {
                return "TypeConverter<E extends Enum<E>>";
            }

            public Object convert(String str, TypeLiteral<?> typeLiteral) {
                return Enum.valueOf(typeLiteral.getRawType(), str);
            }
        });
        internalConvertToTypes(injectorImpl, new AbstractMatcher<TypeLiteral<?>>() {
            public String toString() {
                return "Class<?>";
            }

            public boolean matches(TypeLiteral<?> typeLiteral) {
                return typeLiteral.getRawType() == Class.class;
            }
        }, new TypeConverter() {
            public String toString() {
                return "TypeConverter<Class<?>>";
            }

            public Object convert(String str, TypeLiteral<?> typeLiteral) {
                try {
                    return Class.forName(str);
                } catch (ClassNotFoundException e) {
                    throw new RuntimeException(e.getMessage());
                }
            }
        });
    }

    private static <T> void convertToPrimitiveType(InjectorImpl injectorImpl, Class<T> cls, final Class<T> cls2) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("parse");
            stringBuilder.append(capitalize(cls.getName()));
            final Method method = cls2.getMethod(stringBuilder.toString(), new Class[]{String.class});
            convertToClass(injectorImpl, cls2, new TypeConverter() {
                public Object convert(String str, TypeLiteral<?> typeLiteral) {
                    try {
                        return method.invoke(null, new Object[]{str});
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException(e2.getTargetException().getMessage());
                    }
                }

                public String toString() {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("TypeConverter<");
                    stringBuilder.append(cls2.getSimpleName());
                    stringBuilder.append(">");
                    return stringBuilder.toString();
                }
            });
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }

    private static <T> void convertToClass(InjectorImpl injectorImpl, Class<T> cls, TypeConverter typeConverter) {
        convertToClasses(injectorImpl, Matchers.identicalTo(cls), typeConverter);
    }

    private static void convertToClasses(InjectorImpl injectorImpl, final Matcher<? super Class<?>> matcher, TypeConverter typeConverter) {
        internalConvertToTypes(injectorImpl, new AbstractMatcher<TypeLiteral<?>>() {
            public boolean matches(TypeLiteral<?> typeLiteral) {
                Type type = typeLiteral.getType();
                if (!(type instanceof Class)) {
                    return false;
                }
                return matcher.matches((Class) type);
            }

            public String toString() {
                return matcher.toString();
            }
        }, typeConverter);
    }

    private static void internalConvertToTypes(InjectorImpl injectorImpl, Matcher<? super TypeLiteral<?>> matcher, TypeConverter typeConverter) {
        injectorImpl.state.addConverter(new TypeConverterBinding(SourceProvider.UNKNOWN_SOURCE, matcher, typeConverter));
    }

    public Boolean visit(TypeConverterBinding typeConverterBinding) {
        this.injector.state.addConverter(new TypeConverterBinding(typeConverterBinding.getSource(), typeConverterBinding.getTypeMatcher(), typeConverterBinding.getTypeConverter()));
        return Boolean.valueOf(true);
    }

    private static String capitalize(String str) {
        if (str.length() == 0) {
            return str;
        }
        char charAt = str.charAt(0);
        char toUpperCase = Character.toUpperCase(charAt);
        if (charAt != toUpperCase) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(toUpperCase);
            stringBuilder.append(str.substring(1));
            str = stringBuilder.toString();
        }
        return str;
    }
}
