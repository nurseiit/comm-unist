package org.roboguice.shaded.goole.common.cache;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.Random;
import sun.misc.Unsafe;

abstract class Striped64 extends Number {
    static final int NCPU = Runtime.getRuntime().availableProcessors();
    private static final Unsafe UNSAFE;
    private static final long baseOffset;
    private static final long busyOffset;
    static final ThreadHashCode threadHashCode = new ThreadHashCode();
    volatile transient long base;
    volatile transient int busy;
    volatile transient Cell[] cells;

    static final class Cell {
        private static final Unsafe UNSAFE;
        private static final long valueOffset;
        volatile long p0;
        volatile long p1;
        volatile long p2;
        volatile long p3;
        volatile long p4;
        volatile long p5;
        volatile long p6;
        volatile long q0;
        volatile long q1;
        volatile long q2;
        volatile long q3;
        volatile long q4;
        volatile long q5;
        volatile long q6;
        volatile long value;

        Cell(long j) {
            this.value = j;
        }

        /* Access modifiers changed, original: final */
        public final boolean cas(long j, long j2) {
            return UNSAFE.compareAndSwapLong(this, valueOffset, j, j2);
        }

        static {
            try {
                UNSAFE = Striped64.getUnsafe();
                valueOffset = UNSAFE.objectFieldOffset(Cell.class.getDeclaredField(Param.VALUE));
            } catch (Exception e) {
                throw new Error(e);
            }
        }
    }

    static final class HashCode {
        static final Random rng = new Random();
        int code;

        HashCode() {
            int nextInt = rng.nextInt();
            if (nextInt == 0) {
                nextInt = 1;
            }
            this.code = nextInt;
        }
    }

    static final class ThreadHashCode extends ThreadLocal<HashCode> {
        ThreadHashCode() {
        }

        public HashCode initialValue() {
            return new HashCode();
        }
    }

    public abstract long fn(long j, long j2);

    static {
        try {
            UNSAFE = getUnsafe();
            Class cls = Striped64.class;
            baseOffset = UNSAFE.objectFieldOffset(cls.getDeclaredField("base"));
            busyOffset = UNSAFE.objectFieldOffset(cls.getDeclaredField("busy"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    Striped64() {
    }

    /* Access modifiers changed, original: final */
    public final boolean casBase(long j, long j2) {
        return UNSAFE.compareAndSwapLong(this, baseOffset, j, j2);
    }

    /* Access modifiers changed, original: final */
    public final boolean casBusy() {
        return UNSAFE.compareAndSwapInt(this, busyOffset, 0, 1);
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0004 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x00cb A:{SYNTHETIC, EDGE_INSN: B:76:0x00cb->B:73:0x00cb ?: BREAK  , EDGE_INSN: B:76:0x00cb->B:73:0x00cb ?: BREAK  } */
    /* JADX WARNING: Missing block: B:45:0x006f, code skipped:
            if (r11.cells != r3) goto L_0x0081;
     */
    /* JADX WARNING: Missing block: B:46:0x0071, code skipped:
            r2 = new org.roboguice.shaded.goole.common.cache.Striped64.Cell[(r5 << 1)];
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:47:0x0076, code skipped:
            if (r4 >= r5) goto L_0x007f;
     */
    /* JADX WARNING: Missing block: B:48:0x0078, code skipped:
            r2[r4] = r3[r4];
            r4 = r4 + 1;
     */
    /* JADX WARNING: Missing block: B:49:0x007f, code skipped:
            r11.cells = r2;
     */
    public final void retryUpdate(long r12, org.roboguice.shaded.goole.common.cache.Striped64.HashCode r14, boolean r15) {
        /*
        r11 = this;
        r0 = r14.code;
        r1 = 0;
    L_0x0003:
        r2 = 0;
    L_0x0004:
        r3 = r11.cells;
        r4 = 1;
        if (r3 == 0) goto L_0x0094;
    L_0x0009:
        r5 = r3.length;
        if (r5 <= 0) goto L_0x0094;
    L_0x000c:
        r6 = r5 + -1;
        r6 = r6 & r0;
        r6 = r3[r6];
        if (r6 != 0) goto L_0x0044;
    L_0x0013:
        r3 = r11.busy;
        if (r3 != 0) goto L_0x0042;
    L_0x0017:
        r3 = new org.roboguice.shaded.goole.common.cache.Striped64$Cell;
        r3.<init>(r12);
        r5 = r11.busy;
        if (r5 != 0) goto L_0x0042;
    L_0x0020:
        r5 = r11.casBusy();
        if (r5 == 0) goto L_0x0042;
    L_0x0026:
        r5 = r11.cells;	 Catch:{ all -> 0x003e }
        if (r5 == 0) goto L_0x0037;
    L_0x002a:
        r6 = r5.length;	 Catch:{ all -> 0x003e }
        if (r6 <= 0) goto L_0x0037;
    L_0x002d:
        r6 = r6 + -1;
        r6 = r6 & r0;
        r7 = r5[r6];	 Catch:{ all -> 0x003e }
        if (r7 != 0) goto L_0x0037;
    L_0x0034:
        r5[r6] = r3;	 Catch:{ all -> 0x003e }
        goto L_0x0038;
    L_0x0037:
        r4 = 0;
    L_0x0038:
        r11.busy = r1;
        if (r4 == 0) goto L_0x0004;
    L_0x003c:
        goto L_0x00cb;
    L_0x003e:
        r12 = move-exception;
        r11.busy = r1;
        throw r12;
    L_0x0042:
        r2 = 0;
        goto L_0x0089;
    L_0x0044:
        if (r15 != 0) goto L_0x0048;
    L_0x0046:
        r15 = 1;
        goto L_0x0089;
    L_0x0048:
        r7 = r6.value;
        r9 = r11.fn(r7, r12);
        r6 = r6.cas(r7, r9);
        if (r6 == 0) goto L_0x0056;
    L_0x0054:
        goto L_0x00cb;
    L_0x0056:
        r6 = NCPU;
        if (r5 >= r6) goto L_0x0042;
    L_0x005a:
        r6 = r11.cells;
        if (r6 == r3) goto L_0x005f;
    L_0x005e:
        goto L_0x0042;
    L_0x005f:
        if (r2 != 0) goto L_0x0063;
    L_0x0061:
        r2 = 1;
        goto L_0x0089;
    L_0x0063:
        r4 = r11.busy;
        if (r4 != 0) goto L_0x0089;
    L_0x0067:
        r4 = r11.casBusy();
        if (r4 == 0) goto L_0x0089;
    L_0x006d:
        r2 = r11.cells;	 Catch:{ all -> 0x0085 }
        if (r2 != r3) goto L_0x0081;
    L_0x0071:
        r2 = r5 << 1;
        r2 = new org.roboguice.shaded.goole.common.cache.Striped64.Cell[r2];	 Catch:{ all -> 0x0085 }
        r4 = 0;
    L_0x0076:
        if (r4 >= r5) goto L_0x007f;
    L_0x0078:
        r6 = r3[r4];	 Catch:{ all -> 0x0085 }
        r2[r4] = r6;	 Catch:{ all -> 0x0085 }
        r4 = r4 + 1;
        goto L_0x0076;
    L_0x007f:
        r11.cells = r2;	 Catch:{ all -> 0x0085 }
    L_0x0081:
        r11.busy = r1;
        goto L_0x0003;
    L_0x0085:
        r12 = move-exception;
        r11.busy = r1;
        throw r12;
    L_0x0089:
        r3 = r0 << 13;
        r0 = r0 ^ r3;
        r3 = r0 >>> 17;
        r0 = r0 ^ r3;
        r3 = r0 << 5;
        r0 = r0 ^ r3;
        goto L_0x0004;
    L_0x0094:
        r5 = r11.busy;
        if (r5 != 0) goto L_0x00bf;
    L_0x0098:
        r5 = r11.cells;
        if (r5 != r3) goto L_0x00bf;
    L_0x009c:
        r5 = r11.casBusy();
        if (r5 == 0) goto L_0x00bf;
    L_0x00a2:
        r5 = r11.cells;	 Catch:{ all -> 0x00bb }
        if (r5 != r3) goto L_0x00b5;
    L_0x00a6:
        r3 = 2;
        r3 = new org.roboguice.shaded.goole.common.cache.Striped64.Cell[r3];	 Catch:{ all -> 0x00bb }
        r5 = r0 & 1;
        r6 = new org.roboguice.shaded.goole.common.cache.Striped64$Cell;	 Catch:{ all -> 0x00bb }
        r6.<init>(r12);	 Catch:{ all -> 0x00bb }
        r3[r5] = r6;	 Catch:{ all -> 0x00bb }
        r11.cells = r3;	 Catch:{ all -> 0x00bb }
        goto L_0x00b6;
    L_0x00b5:
        r4 = 0;
    L_0x00b6:
        r11.busy = r1;
        if (r4 == 0) goto L_0x0004;
    L_0x00ba:
        goto L_0x00cb;
    L_0x00bb:
        r12 = move-exception;
        r11.busy = r1;
        throw r12;
    L_0x00bf:
        r3 = r11.base;
        r5 = r11.fn(r3, r12);
        r3 = r11.casBase(r3, r5);
        if (r3 == 0) goto L_0x0004;
    L_0x00cb:
        r14.code = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.cache.Striped64.retryUpdate(long, org.roboguice.shaded.goole.common.cache.Striped64$HashCode, boolean):void");
    }

    /* Access modifiers changed, original: final */
    public final void internalReset(long j) {
        Cell[] cellArr = this.cells;
        this.base = j;
        if (cellArr != null) {
            for (Cell cell : cellArr) {
                if (cell != null) {
                    cell.value = j;
                }
            }
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0005 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:5:0x0010, code skipped:
            return (sun.misc.Unsafe) java.security.AccessController.doPrivileged(new org.roboguice.shaded.goole.common.cache.Striped64.AnonymousClass1());
     */
    /* JADX WARNING: Missing block: B:6:0x0011, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:8:0x001d, code skipped:
            throw new java.lang.RuntimeException("Could not initialize intrinsics", r0.getCause());
     */
    private static sun.misc.Unsafe getUnsafe() {
        /*
        r0 = sun.misc.Unsafe.getUnsafe();	 Catch:{ SecurityException -> 0x0005 }
        return r0;
    L_0x0005:
        r0 = new org.roboguice.shaded.goole.common.cache.Striped64$1;	 Catch:{ PrivilegedActionException -> 0x0011 }
        r0.<init>();	 Catch:{ PrivilegedActionException -> 0x0011 }
        r0 = java.security.AccessController.doPrivileged(r0);	 Catch:{ PrivilegedActionException -> 0x0011 }
        r0 = (sun.misc.Unsafe) r0;	 Catch:{ PrivilegedActionException -> 0x0011 }
        return r0;
    L_0x0011:
        r0 = move-exception;
        r1 = new java.lang.RuntimeException;
        r2 = "Could not initialize intrinsics";
        r0 = r0.getCause();
        r1.<init>(r2, r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.cache.Striped64.getUnsafe():sun.misc.Unsafe");
    }
}
