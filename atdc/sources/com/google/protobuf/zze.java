package com.google.protobuf;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

final class zze {
    private static final Logger logger = Logger.getLogger(zze.class.getName());
    private static final boolean zzcrM = zzLw();
    private static final long zzcrN = ((long) (zzcrM ? zzcrY.zzcsd.arrayBaseOffset(byte[].class) : -1));
    private static final Unsafe zzcrT = zzLv();
    private static final Class<?> zzcrU = zzhP("libcore.io.Memory");
    private static final boolean zzcrV = (zzhP("org.robolectric.Robolectric") != null);
    private static final boolean zzcrW = zzg(Long.TYPE);
    private static final boolean zzcrX = zzg(Integer.TYPE);
    private static final zzd zzcrY;
    private static final boolean zzcrZ = zzLy();
    private static final boolean zzcsa = zzLx();
    private static final long zzcsb;
    private static final boolean zzcsc;

    static abstract class zzd {
        Unsafe zzcsd;

        zzd(Unsafe unsafe) {
            this.zzcsd = unsafe;
        }
    }

    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }
    }

    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }
    }

    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }
    }

    /* JADX WARNING: Missing block: B:22:0x0099, code skipped:
            if (r0 != null) goto L_0x00a4;
     */
    static {
        /*
        r0 = com.google.protobuf.zze.class;
        r0 = r0.getName();
        r0 = java.util.logging.Logger.getLogger(r0);
        logger = r0;
        r0 = zzLv();
        zzcrT = r0;
        r0 = "libcore.io.Memory";
        r0 = zzhP(r0);
        zzcrU = r0;
        r0 = "org.robolectric.Robolectric";
        r0 = zzhP(r0);
        r1 = 0;
        r2 = 1;
        if (r0 == 0) goto L_0x0026;
    L_0x0024:
        r0 = 1;
        goto L_0x0027;
    L_0x0026:
        r0 = 0;
    L_0x0027:
        zzcrV = r0;
        r0 = java.lang.Long.TYPE;
        r0 = zzg(r0);
        zzcrW = r0;
        r0 = java.lang.Integer.TYPE;
        r0 = zzg(r0);
        zzcrX = r0;
        r0 = zzcrT;
        r3 = 0;
        if (r0 != 0) goto L_0x003f;
    L_0x003e:
        goto L_0x0064;
    L_0x003f:
        r0 = zzLz();
        if (r0 == 0) goto L_0x005d;
    L_0x0045:
        r0 = zzcrW;
        if (r0 == 0) goto L_0x0051;
    L_0x0049:
        r3 = new com.google.protobuf.zze$zzb;
        r0 = zzcrT;
        r3.<init>(r0);
        goto L_0x0064;
    L_0x0051:
        r0 = zzcrX;
        if (r0 == 0) goto L_0x0064;
    L_0x0055:
        r3 = new com.google.protobuf.zze$zza;
        r0 = zzcrT;
        r3.<init>(r0);
        goto L_0x0064;
    L_0x005d:
        r3 = new com.google.protobuf.zze$zzc;
        r0 = zzcrT;
        r3.<init>(r0);
    L_0x0064:
        zzcrY = r3;
        r0 = zzLy();
        zzcrZ = r0;
        r0 = zzLw();
        zzcrM = r0;
        r0 = zzLx();
        zzcsa = r0;
        r0 = zzcrM;
        if (r0 == 0) goto L_0x0087;
    L_0x007c:
        r0 = zzcrY;
        r3 = byte[].class;
        r0 = r0.zzcsd;
        r0 = r0.arrayBaseOffset(r3);
        goto L_0x0088;
    L_0x0087:
        r0 = -1;
    L_0x0088:
        r3 = (long) r0;
        zzcrN = r3;
        r0 = zzLz();
        if (r0 == 0) goto L_0x009c;
    L_0x0091:
        r0 = java.nio.Buffer.class;
        r3 = "effectiveDirectAddress";
        r0 = zza(r0, r3);
        if (r0 == 0) goto L_0x009c;
    L_0x009b:
        goto L_0x00a4;
    L_0x009c:
        r0 = java.nio.Buffer.class;
        r3 = "address";
        r0 = zza(r0, r3);
    L_0x00a4:
        if (r0 == 0) goto L_0x00b4;
    L_0x00a6:
        r3 = zzcrY;
        if (r3 != 0) goto L_0x00ab;
    L_0x00aa:
        goto L_0x00b4;
    L_0x00ab:
        r3 = zzcrY;
        r3 = r3.zzcsd;
        r3 = r3.objectFieldOffset(r0);
        goto L_0x00b6;
    L_0x00b4:
        r3 = -1;
    L_0x00b6:
        zzcsb = r3;
        r0 = java.nio.ByteOrder.nativeOrder();
        r3 = java.nio.ByteOrder.BIG_ENDIAN;
        if (r0 != r3) goto L_0x00c1;
    L_0x00c0:
        r1 = 1;
    L_0x00c1:
        zzcsc = r1;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.zze.<clinit>():void");
    }

    private zze() {
    }

    static boolean zzLt() {
        return zzcrM;
    }

    static long zzLu() {
        return zzcrN;
    }

    private static Unsafe zzLv() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzf());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zzLw() {
        if (zzcrT == null) {
            return false;
        }
        try {
            Class cls = zzcrT.getClass();
            cls.getMethod("objectFieldOffset", new Class[]{Field.class});
            cls.getMethod("arrayBaseOffset", new Class[]{Class.class});
            cls.getMethod("getInt", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putInt", new Class[]{Object.class, Long.TYPE, Integer.TYPE});
            cls.getMethod("getLong", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putLong", new Class[]{Object.class, Long.TYPE, Long.TYPE});
            cls.getMethod("getObject", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putObject", new Class[]{Object.class, Long.TYPE, Object.class});
            if (zzLz()) {
                return true;
            }
            cls.getMethod("getByte", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putByte", new Class[]{Object.class, Long.TYPE, Byte.TYPE});
            cls.getMethod("getBoolean", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putBoolean", new Class[]{Object.class, Long.TYPE, Boolean.TYPE});
            cls.getMethod("getFloat", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putFloat", new Class[]{Object.class, Long.TYPE, Float.TYPE});
            cls.getMethod("getDouble", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putDouble", new Class[]{Object.class, Long.TYPE, Double.TYPE});
            return true;
        } catch (Throwable th) {
            String valueOf = String.valueOf(th);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 71);
            stringBuilder.append("platform method missing - proto runtime falling back to safer methods: ");
            stringBuilder.append(valueOf);
            logger.logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", stringBuilder.toString());
            return false;
        }
    }

    private static boolean zzLx() {
        if (zzcrT == null) {
            return false;
        }
        try {
            zzcrT.getClass().getMethod("copyMemory", new Class[]{Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE});
            return true;
        } catch (Throwable unused) {
            logger.logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "supportsUnsafeCopyMemory", "copyMemory is missing from platform - proto runtime falling back to safer methods.");
            return false;
        }
    }

    private static boolean zzLy() {
        if (zzcrT == null) {
            return false;
        }
        try {
            Class cls = zzcrT.getClass();
            cls.getMethod("objectFieldOffset", new Class[]{Field.class});
            cls.getMethod("getLong", new Class[]{Object.class, Long.TYPE});
            if (zzLz()) {
                return true;
            }
            cls.getMethod("getByte", new Class[]{Long.TYPE});
            cls.getMethod("putByte", new Class[]{Long.TYPE, Byte.TYPE});
            cls.getMethod("getInt", new Class[]{Long.TYPE});
            cls.getMethod("putInt", new Class[]{Long.TYPE, Integer.TYPE});
            cls.getMethod("getLong", new Class[]{Long.TYPE});
            cls.getMethod("putLong", new Class[]{Long.TYPE, Long.TYPE});
            cls.getMethod("copyMemory", new Class[]{Long.TYPE, Long.TYPE, Long.TYPE});
            return true;
        } catch (Throwable th) {
            String valueOf = String.valueOf(th);
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 71);
            stringBuilder.append("platform method missing - proto runtime falling back to safer methods: ");
            stringBuilder.append(valueOf);
            logger.logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", stringBuilder.toString());
            return false;
        }
    }

    private static boolean zzLz() {
        return (zzcrU == null || zzcrV) ? false : true;
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zzg(Class<?> cls) {
        if (!zzLz()) {
            return false;
        }
        try {
            Class cls2 = zzcrU;
            cls2.getMethod("peekLong", new Class[]{cls, Boolean.TYPE});
            cls2.getMethod("pokeLong", new Class[]{cls, Long.TYPE, Boolean.TYPE});
            cls2.getMethod("pokeInt", new Class[]{cls, Integer.TYPE, Boolean.TYPE});
            cls2.getMethod("peekInt", new Class[]{cls, Boolean.TYPE});
            cls2.getMethod("pokeByte", new Class[]{cls, Byte.TYPE});
            cls2.getMethod("peekByte", new Class[]{cls});
            cls2.getMethod("pokeByteArray", new Class[]{cls, byte[].class, Integer.TYPE, Integer.TYPE});
            cls2.getMethod("peekByteArray", new Class[]{cls, byte[].class, Integer.TYPE, Integer.TYPE});
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static <T> Class<T> zzhP(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
