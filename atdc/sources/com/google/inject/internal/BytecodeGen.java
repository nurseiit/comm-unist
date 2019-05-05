package com.google.inject.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.logging.Logger;
import org.roboguice.shaded.goole.common.cache.CacheBuilder;
import org.roboguice.shaded.goole.common.cache.CacheLoader;
import org.roboguice.shaded.goole.common.cache.LoadingCache;

public final class BytecodeGen {
    private static final String CGLIB_PACKAGE = " ";
    private static final LoadingCache<ClassLoader, ClassLoader> CLASS_LOADER_CACHE;
    private static final boolean CUSTOM_LOADER_ENABLED = Boolean.parseBoolean(System.getProperty("guice.custom.loader", "true"));
    static final ClassLoader GUICE_CLASS_LOADER = canonicalize(BytecodeGen.class.getClassLoader());
    static final String GUICE_INTERNAL_PACKAGE = BytecodeGen.class.getName().replaceFirst("\\.internal\\..*$", ".internal");
    static final Logger logger = Logger.getLogger(BytecodeGen.class.getName());

    private static class BridgeClassLoader extends ClassLoader {
        BridgeClassLoader() {
        }

        BridgeClassLoader(ClassLoader classLoader) {
            super(classLoader);
        }

        /* Access modifiers changed, original: protected */
        public Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if (str.startsWith("sun.reflect")) {
                return SystemBridgeHolder.SYSTEM_BRIDGE.classicLoadClass(str, z);
            }
            if (str.startsWith(BytecodeGen.GUICE_INTERNAL_PACKAGE) || str.startsWith(BytecodeGen.CGLIB_PACKAGE)) {
                if (BytecodeGen.GUICE_CLASS_LOADER == null) {
                    return SystemBridgeHolder.SYSTEM_BRIDGE.classicLoadClass(str, z);
                }
                try {
                    Class loadClass = BytecodeGen.GUICE_CLASS_LOADER.loadClass(str);
                    if (z) {
                        resolveClass(loadClass);
                    }
                    return loadClass;
                } catch (Throwable unused) {
                }
            }
            return classicLoadClass(str, z);
        }

        /* Access modifiers changed, original: 0000 */
        public Class<?> classicLoadClass(String str, boolean z) throws ClassNotFoundException {
            return super.loadClass(str, z);
        }
    }

    private static class SystemBridgeHolder {
        static final BridgeClassLoader SYSTEM_BRIDGE = new BridgeClassLoader();

        private SystemBridgeHolder() {
        }
    }

    public enum Visibility {
        PUBLIC {
            public Visibility and(Visibility visibility) {
                return visibility;
            }
        },
        SAME_PACKAGE {
            public Visibility and(Visibility visibility) {
                return this;
            }
        };

        public abstract Visibility and(Visibility visibility);

        public static Visibility forMember(Member member) {
            if ((member.getModifiers() & 5) == 0) {
                return SAME_PACKAGE;
            }
            Class[] parameterTypes;
            if (member instanceof Constructor) {
                parameterTypes = ((Constructor) member).getParameterTypes();
            } else {
                Method method = (Method) member;
                if (forType(method.getReturnType()) == SAME_PACKAGE) {
                    return SAME_PACKAGE;
                }
                parameterTypes = method.getParameterTypes();
            }
            for (Class forType : parameterTypes) {
                if (forType(forType) == SAME_PACKAGE) {
                    return SAME_PACKAGE;
                }
            }
            return PUBLIC;
        }

        public static Visibility forType(Class<?> cls) {
            return (cls.getModifiers() & 5) != 0 ? PUBLIC : SAME_PACKAGE;
        }
    }

    static {
        CacheBuilder weakValues = CacheBuilder.newBuilder().weakKeys().weakValues();
        if (!CUSTOM_LOADER_ENABLED) {
            weakValues.maximumSize(0);
        }
        CLASS_LOADER_CACHE = weakValues.build(new CacheLoader<ClassLoader, ClassLoader>() {
            public ClassLoader load(final ClassLoader classLoader) {
                Logger logger = BytecodeGen.logger;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Creating a bridge ClassLoader for ");
                stringBuilder.append(classLoader);
                logger.fine(stringBuilder.toString());
                return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() {
                    public ClassLoader run() {
                        return new BridgeClassLoader(classLoader);
                    }
                });
            }
        });
    }

    private static ClassLoader canonicalize(ClassLoader classLoader) {
        return classLoader != null ? classLoader : SystemBridgeHolder.SYSTEM_BRIDGE.getParent();
    }

    public static ClassLoader getClassLoader(Class<?> cls) {
        return getClassLoader(cls, cls.getClassLoader());
    }

    /* JADX WARNING: Missing block: B:20:0x003e, code skipped:
            return r3;
     */
    private static java.lang.ClassLoader getClassLoader(java.lang.Class<?> r2, java.lang.ClassLoader r3) {
        /*
        r0 = CUSTOM_LOADER_ENABLED;
        if (r0 != 0) goto L_0x0005;
    L_0x0004:
        return r3;
    L_0x0005:
        r0 = r2.getName();
        r1 = "java.";
        r0 = r0.startsWith(r1);
        if (r0 == 0) goto L_0x0014;
    L_0x0011:
        r2 = GUICE_CLASS_LOADER;
        return r2;
    L_0x0014:
        r3 = canonicalize(r3);
        r0 = GUICE_CLASS_LOADER;
        if (r3 == r0) goto L_0x003e;
    L_0x001c:
        r0 = r3 instanceof com.google.inject.internal.BytecodeGen.BridgeClassLoader;
        if (r0 == 0) goto L_0x0021;
    L_0x0020:
        goto L_0x003e;
    L_0x0021:
        r2 = com.google.inject.internal.BytecodeGen.Visibility.forType(r2);
        r0 = com.google.inject.internal.BytecodeGen.Visibility.PUBLIC;
        if (r2 != r0) goto L_0x003d;
    L_0x0029:
        r2 = com.google.inject.internal.BytecodeGen.SystemBridgeHolder.SYSTEM_BRIDGE;
        r2 = r2.getParent();
        if (r3 == r2) goto L_0x003a;
    L_0x0031:
        r2 = CLASS_LOADER_CACHE;
        r2 = r2.getUnchecked(r3);
        r2 = (java.lang.ClassLoader) r2;
        return r2;
    L_0x003a:
        r2 = com.google.inject.internal.BytecodeGen.SystemBridgeHolder.SYSTEM_BRIDGE;
        return r2;
    L_0x003d:
        return r3;
    L_0x003e:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.inject.internal.BytecodeGen.getClassLoader(java.lang.Class, java.lang.ClassLoader):java.lang.ClassLoader");
    }
}
