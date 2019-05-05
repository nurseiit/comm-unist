package org.roboguice.shaded.goole.common.math;

import java.math.RoundingMode;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;
import org.roboguice.shaded.goole.common.annotations.VisibleForTesting;
import org.roboguice.shaded.goole.common.base.Ascii;
import org.roboguice.shaded.goole.common.base.Preconditions;

@GwtCompatible(emulated = true)
public final class LongMath {
    @VisibleForTesting
    static final long FLOOR_SQRT_MAX_LONG = 3037000499L;
    @VisibleForTesting
    static final long MAX_POWER_OF_SQRT2_UNSIGNED = -5402926248376769404L;
    static final int[] biggestBinomials = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, 1733, 887, 534, 361, 265, 206, 169, 143, 125, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};
    @VisibleForTesting
    static final int[] biggestSimpleBinomials = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, 1313, 684, 419, 287, 214, 169, 139, 119, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};
    static final long[] factorials = new long[]{1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};
    @GwtIncompatible("TODO")
    @VisibleForTesting
    static final long[] halfPowersOf10 = new long[]{3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};
    @VisibleForTesting
    static final byte[] maxLog10ForLeadingZeros = new byte[]{(byte) 19, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, (byte) 17, (byte) 17, (byte) 17, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.CR, Ascii.CR, Ascii.CR, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.FF, Ascii.VT, Ascii.VT, Ascii.VT, (byte) 10, (byte) 10, (byte) 10, (byte) 9, (byte) 9, (byte) 9, (byte) 9, (byte) 8, (byte) 8, (byte) 8, (byte) 7, (byte) 7, (byte) 7, (byte) 6, (byte) 6, (byte) 6, (byte) 6, (byte) 5, (byte) 5, (byte) 5, (byte) 4, (byte) 4, (byte) 4, (byte) 3, (byte) 3, (byte) 3, (byte) 3, (byte) 2, (byte) 2, (byte) 2, (byte) 1, (byte) 1, (byte) 1, (byte) 0, (byte) 0, (byte) 0};
    @GwtIncompatible("TODO")
    @VisibleForTesting
    static final long[] powersOf10 = new long[]{1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000L, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};

    /* renamed from: org.roboguice.shaded.goole.common.math.LongMath$1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode = new int[RoundingMode.values().length];

        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x004b */
        /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0056 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Can't wrap try/catch for region: R(18:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|18) */
        /* JADX WARNING: Can't wrap try/catch for region: R(18:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|18) */
        /* JADX WARNING: Can't wrap try/catch for region: R(18:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|18) */
        /* JADX WARNING: Can't wrap try/catch for region: R(16:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|(3:15|16|18)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(16:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|(3:15|16|18)) */
        /* JADX WARNING: Can't wrap try/catch for region: R(16:0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|(3:15|16|18)) */
        static {
            /*
            r0 = java.math.RoundingMode.values();
            r0 = r0.length;
            r0 = new int[r0];
            $SwitchMap$java$math$RoundingMode = r0;
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = java.math.RoundingMode.UNNECESSARY;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = 1;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = java.math.RoundingMode.DOWN;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = 2;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = java.math.RoundingMode.FLOOR;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x002a }
            r2 = 3;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = java.math.RoundingMode.UP;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0035 }
            r2 = 4;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x0040 }
            r1 = java.math.RoundingMode.CEILING;	 Catch:{ NoSuchFieldError -> 0x0040 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0040 }
            r2 = 5;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0040 }
        L_0x0040:
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x004b }
            r1 = java.math.RoundingMode.HALF_DOWN;	 Catch:{ NoSuchFieldError -> 0x004b }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x004b }
            r2 = 6;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x004b }
        L_0x004b:
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x0056 }
            r1 = java.math.RoundingMode.HALF_UP;	 Catch:{ NoSuchFieldError -> 0x0056 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0056 }
            r2 = 7;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0056 }
        L_0x0056:
            r0 = $SwitchMap$java$math$RoundingMode;	 Catch:{ NoSuchFieldError -> 0x0062 }
            r1 = java.math.RoundingMode.HALF_EVEN;	 Catch:{ NoSuchFieldError -> 0x0062 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0062 }
            r2 = 8;
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0062 }
        L_0x0062:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.math.LongMath$AnonymousClass1.<clinit>():void");
        }
    }

    static boolean fitsInInt(long j) {
        return ((long) ((int) j)) == j;
    }

    public static boolean isPowerOfTwo(long j) {
        int i = 0;
        int i2 = j > 0 ? 1 : 0;
        if ((j & (j - 1)) == 0) {
            i = 1;
        }
        return i2 & i;
    }

    @VisibleForTesting
    static int lessThanBranchFree(long j, long j2) {
        return (int) ((((j - j2) ^ -1) ^ -1) >>> 63);
    }

    public static long mean(long j, long j2) {
        return (j & j2) + ((j ^ j2) >> 1);
    }

    public static int log2(long j, RoundingMode roundingMode) {
        MathPreconditions.checkPositive("x", j);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(j));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 64 - Long.numberOfLeadingZeros(j - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Long.numberOfLeadingZeros(j);
                return (63 - numberOfLeadingZeros) + lessThanBranchFree(MAX_POWER_OF_SQRT2_UNSIGNED >>> numberOfLeadingZeros, j);
            default:
                throw new AssertionError("impossible");
        }
        return 63 - Long.numberOfLeadingZeros(j);
    }

    @GwtIncompatible("TODO")
    public static int log10(long j, RoundingMode roundingMode) {
        MathPreconditions.checkPositive("x", j);
        int log10Floor = log10Floor(j);
        long j2 = powersOf10[log10Floor];
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(j == j2);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return log10Floor + lessThanBranchFree(j2, j);
            case 6:
            case 7:
            case 8:
                return log10Floor + lessThanBranchFree(halfPowersOf10[log10Floor], j);
            default:
                throw new AssertionError();
        }
        return log10Floor;
    }

    @GwtIncompatible("TODO")
    static int log10Floor(long j) {
        byte b = maxLog10ForLeadingZeros[Long.numberOfLeadingZeros(j)];
        return b - lessThanBranchFree(j, powersOf10[b]);
    }

    @GwtIncompatible("TODO")
    public static long pow(long j, int i) {
        MathPreconditions.checkNonNegative("exponent", i);
        long j2 = 1;
        long j3;
        if (-2 > j || j > 2) {
            j3 = j;
            j = 1;
            while (true) {
                switch (i) {
                    case 0:
                        return j;
                    case 1:
                        return j * j3;
                    default:
                        j *= (i & 1) == 0 ? 1 : j3;
                        j3 *= j3;
                        i >>= 1;
                }
            }
        } else {
            j3 = 0;
            switch ((int) j) {
                case -2:
                    if (i >= 64) {
                        return 0;
                    }
                    return (i & 1) == 0 ? 1 << i : -(1 << i);
                case -1:
                    if ((i & 1) != 0) {
                        j2 = -1;
                    }
                    return j2;
                case 0:
                    if (i != 0) {
                        j2 = 0;
                    }
                    return j2;
                case 1:
                    return 1;
                case 2:
                    if (i < 64) {
                        j3 = 1 << i;
                    }
                    return j3;
                default:
                    throw new AssertionError();
            }
        }
    }

    @GwtIncompatible("TODO")
    public static long sqrt(long j, RoundingMode roundingMode) {
        MathPreconditions.checkNonNegative("x", j);
        if (fitsInInt(j)) {
            return (long) IntMath.sqrt((int) j, roundingMode);
        }
        long sqrt = (long) Math.sqrt((double) j);
        long j2 = sqrt * sqrt;
        boolean z = false;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                if (j2 == j) {
                    z = true;
                }
                MathPreconditions.checkRoundingUnnecessary(z);
                return sqrt;
            case 2:
            case 3:
                return j < j2 ? sqrt - 1 : sqrt;
            case 4:
            case 5:
                return j > j2 ? sqrt + 1 : sqrt;
            case 6:
            case 7:
            case 8:
                int i;
                if (j < j2) {
                    i = 1;
                }
                long j3 = sqrt - ((long) i);
                return j3 + ((long) lessThanBranchFree((j3 * j3) + j3, j));
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARNING: Missing block: B:22:0x0058, code skipped:
            if (r12 > 0) goto L_0x006b;
     */
    /* JADX WARNING: Missing block: B:23:0x005b, code skipped:
            if (r10 > 0) goto L_0x006b;
     */
    /* JADX WARNING: Missing block: B:24:0x005e, code skipped:
            if (r10 < 0) goto L_0x006b;
     */
    @org.roboguice.shaded.goole.common.annotations.GwtIncompatible("TODO")
    public static long divide(long r10, long r12, java.math.RoundingMode r14) {
        /*
        org.roboguice.shaded.goole.common.base.Preconditions.checkNotNull(r14);
        r0 = r10 / r12;
        r2 = r12 * r0;
        r4 = r10 - r2;
        r2 = 0;
        r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r6 != 0) goto L_0x0010;
    L_0x000f:
        return r0;
    L_0x0010:
        r6 = r10 ^ r12;
        r10 = 63;
        r10 = r6 >> r10;
        r10 = (int) r10;
        r11 = 1;
        r10 = r10 | r11;
        r6 = org.roboguice.shaded.goole.common.math.LongMath.AnonymousClass1.$SwitchMap$java$math$RoundingMode;
        r7 = r14.ordinal();
        r6 = r6[r7];
        r7 = 0;
        switch(r6) {
            case 1: goto L_0x0061;
            case 2: goto L_0x006a;
            case 3: goto L_0x005e;
            case 4: goto L_0x006b;
            case 5: goto L_0x005b;
            case 6: goto L_0x002b;
            case 7: goto L_0x002b;
            case 8: goto L_0x002b;
            default: goto L_0x0025;
        };
    L_0x0025:
        r10 = new java.lang.AssertionError;
        r10.<init>();
        throw r10;
    L_0x002b:
        r4 = java.lang.Math.abs(r4);
        r12 = java.lang.Math.abs(r12);
        r8 = r12 - r4;
        r12 = r4 - r8;
        r4 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1));
        if (r4 != 0) goto L_0x0056;
    L_0x003b:
        r12 = java.math.RoundingMode.HALF_UP;
        if (r14 != r12) goto L_0x0041;
    L_0x003f:
        r12 = 1;
        goto L_0x0042;
    L_0x0041:
        r12 = 0;
    L_0x0042:
        r13 = java.math.RoundingMode.HALF_EVEN;
        if (r14 != r13) goto L_0x0048;
    L_0x0046:
        r13 = 1;
        goto L_0x0049;
    L_0x0048:
        r13 = 0;
    L_0x0049:
        r4 = 1;
        r8 = r0 & r4;
        r14 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1));
        if (r14 == 0) goto L_0x0052;
    L_0x0051:
        goto L_0x0053;
    L_0x0052:
        r11 = 0;
    L_0x0053:
        r11 = r11 & r13;
        r11 = r11 | r12;
        goto L_0x006b;
    L_0x0056:
        r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1));
        if (r14 <= 0) goto L_0x006a;
    L_0x005a:
        goto L_0x006b;
    L_0x005b:
        if (r10 <= 0) goto L_0x006a;
    L_0x005d:
        goto L_0x006b;
    L_0x005e:
        if (r10 >= 0) goto L_0x006a;
    L_0x0060:
        goto L_0x006b;
    L_0x0061:
        r12 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r12 != 0) goto L_0x0066;
    L_0x0065:
        goto L_0x0067;
    L_0x0066:
        r11 = 0;
    L_0x0067:
        org.roboguice.shaded.goole.common.math.MathPreconditions.checkRoundingUnnecessary(r11);
    L_0x006a:
        r11 = 0;
    L_0x006b:
        if (r11 == 0) goto L_0x0071;
    L_0x006d:
        r10 = (long) r10;
        r12 = r0 + r10;
        goto L_0x0072;
    L_0x0071:
        r12 = r0;
    L_0x0072:
        return r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.roboguice.shaded.goole.common.math.LongMath.divide(long, long, java.math.RoundingMode):long");
    }

    @GwtIncompatible("TODO")
    public static int mod(long j, int i) {
        return (int) mod(j, (long) i);
    }

    @GwtIncompatible("TODO")
    public static long mod(long j, long j2) {
        if (j2 <= 0) {
            throw new ArithmeticException("Modulus must be positive");
        }
        j %= j2;
        return j >= 0 ? j : j + j2;
    }

    public static long gcd(long j, long j2) {
        MathPreconditions.checkNonNegative("a", j);
        MathPreconditions.checkNonNegative("b", j2);
        if (j == 0) {
            return j2;
        }
        if (j2 == 0) {
            return j;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        j >>= numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j2);
        j2 >>= numberOfTrailingZeros2;
        while (j != j2) {
            long j3 = j - j2;
            long j4 = j3 & (j3 >> 63);
            j3 = (j3 - j4) - j4;
            long j5 = j2 + j4;
            j = j3 >> Long.numberOfTrailingZeros(j3);
            j2 = j5;
        }
        return j << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    @GwtIncompatible("TODO")
    public static long checkedAdd(long j, long j2) {
        long j3 = j + j2;
        int i = 0;
        int i2 = (j ^ j2) < 0 ? 1 : 0;
        if ((j ^ j3) >= 0) {
            i = 1;
        }
        MathPreconditions.checkNoOverflow(i2 | i);
        return j3;
    }

    @GwtIncompatible("TODO")
    public static long checkedSubtract(long j, long j2) {
        long j3 = j - j2;
        int i = 0;
        int i2 = (j ^ j2) >= 0 ? 1 : 0;
        if ((j ^ j3) >= 0) {
            i = 1;
        }
        MathPreconditions.checkNoOverflow(i2 | i);
        return j3;
    }

    @GwtIncompatible("TODO")
    public static long checkedMultiply(long j, long j2) {
        int numberOfLeadingZeros = ((Long.numberOfLeadingZeros(j) + Long.numberOfLeadingZeros(j ^ -1)) + Long.numberOfLeadingZeros(j2)) + Long.numberOfLeadingZeros(j2 ^ -1);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        boolean z = false;
        MathPreconditions.checkNoOverflow(numberOfLeadingZeros >= 64);
        MathPreconditions.checkNoOverflow((j >= 0 ? 1 : 0) | (j2 != Long.MIN_VALUE ? 1 : 0));
        long j3 = j * j2;
        if (j == 0 || j3 / j == j2) {
            z = true;
        }
        MathPreconditions.checkNoOverflow(z);
        return j3;
    }

    @GwtIncompatible("TODO")
    public static long checkedPow(long j, int i) {
        MathPreconditions.checkNonNegative("exponent", i);
        boolean z = false;
        long j2 = 1;
        if (((j >= -2 ? 1 : 0) & (j <= 2 ? 1 : 0)) != 0) {
            switch ((int) j) {
                case -2:
                    if (i < 64) {
                        z = true;
                    }
                    MathPreconditions.checkNoOverflow(z);
                    return (i & 1) == 0 ? 1 << i : -1 << i;
                case -1:
                    if ((i & 1) != 0) {
                        j2 = -1;
                    }
                    return j2;
                case 0:
                    if (i != 0) {
                        j2 = 0;
                    }
                    return j2;
                case 1:
                    return 1;
                case 2:
                    if (i < 63) {
                        z = true;
                    }
                    MathPreconditions.checkNoOverflow(z);
                    return 1 << i;
                default:
                    throw new AssertionError();
            }
        }
        while (true) {
            switch (i) {
                case 0:
                    return j2;
                case 1:
                    return checkedMultiply(j2, j);
                default:
                    if ((i & 1) != 0) {
                        j2 = checkedMultiply(j2, j);
                    }
                    i >>= 1;
                    if (i > 0) {
                        MathPreconditions.checkNoOverflow(j <= FLOOR_SQRT_MAX_LONG);
                        j *= j;
                    }
            }
        }
    }

    @GwtIncompatible("TODO")
    public static long factorial(int i) {
        MathPreconditions.checkNonNegative("n", i);
        return i < factorials.length ? factorials[i] : Long.MAX_VALUE;
    }

    public static long binomial(int i, int i2) {
        MathPreconditions.checkNonNegative("n", i);
        MathPreconditions.checkNonNegative("k", i2);
        int i3 = 2;
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", Integer.valueOf(i2), Integer.valueOf(i));
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        switch (i2) {
            case 0:
                return 1;
            case 1:
                return (long) i;
            default:
                if (i < factorials.length) {
                    return factorials[i] / (factorials[i2] * factorials[i - i2]);
                }
                if (i2 >= biggestBinomials.length || i > biggestBinomials[i2]) {
                    return Long.MAX_VALUE;
                }
                int i4;
                long multiplyFraction;
                if (i2 >= biggestSimpleBinomials.length || i > biggestSimpleBinomials[i2]) {
                    long j = (long) i;
                    int log2 = log2(j, RoundingMode.CEILING);
                    long j2 = 1;
                    long j3 = j2;
                    long j4 = j;
                    i4 = i - 1;
                    i = log2;
                    while (i3 <= i2) {
                        i += log2;
                        if (i < 63) {
                            j4 *= (long) i4;
                            j3 *= (long) i3;
                        } else {
                            multiplyFraction = multiplyFraction(j2, j4, j3);
                            i = log2;
                            j3 = (long) i3;
                            j4 = (long) i4;
                            j2 = multiplyFraction;
                        }
                        i3++;
                        i4--;
                    }
                    return multiplyFraction(j2, j4, j3);
                }
                i4 = i - 1;
                multiplyFraction = (long) i;
                while (i3 <= i2) {
                    multiplyFraction = (multiplyFraction * ((long) i4)) / ((long) i3);
                    i4--;
                    i3++;
                }
                return multiplyFraction;
        }
    }

    static long multiplyFraction(long j, long j2, long j3) {
        if (j == 1) {
            return j2 / j3;
        }
        long gcd = gcd(j, j3);
        return (j / gcd) * (j2 / (j3 / gcd));
    }

    private LongMath() {
    }
}
