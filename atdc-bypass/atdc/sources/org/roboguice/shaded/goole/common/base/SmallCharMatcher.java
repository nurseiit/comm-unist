package org.roboguice.shaded.goole.common.base;

import java.util.BitSet;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;
import org.roboguice.shaded.goole.common.annotations.VisibleForTesting;

@GwtIncompatible("no precomputation is done in GWT")
final class SmallCharMatcher extends FastMatcher {
    private static final int C1 = -862048943;
    private static final int C2 = 461845907;
    private static final double DESIRED_LOAD_FACTOR = 0.5d;
    static final int MAX_SIZE = 1023;
    private final boolean containsZero;
    private final long filter;
    private final char[] table;

    private SmallCharMatcher(char[] cArr, long j, boolean z, String str) {
        super(str);
        this.table = cArr;
        this.filter = j;
        this.containsZero = z;
    }

    static int smear(int i) {
        return Integer.rotateLeft(i * C1, 15) * C2;
    }

    private boolean checkFilter(int i) {
        return 1 == ((this.filter >> i) & 1);
    }

    @VisibleForTesting
    static int chooseTableSize(int i) {
        if (i == 1) {
            return 2;
        }
        int highestOneBit = Integer.highestOneBit(i - 1) << 1;
        while (((double) highestOneBit) * DESIRED_LOAD_FACTOR < ((double) i)) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    @GwtIncompatible("java.util.BitSet")
    static CharMatcher from(BitSet bitSet, String str) {
        int cardinality = bitSet.cardinality();
        boolean z = bitSet.get(0);
        char[] cArr = new char[chooseTableSize(cardinality)];
        cardinality = cArr.length - 1;
        int nextSetBit = bitSet.nextSetBit(0);
        long j = 0;
        while (nextSetBit != -1) {
            long j2 = j | (1 << nextSetBit);
            int smear = smear(nextSetBit);
            while (true) {
                smear &= cardinality;
                if (cArr[smear] == 0) {
                    break;
                }
                smear++;
            }
            cArr[smear] = (char) nextSetBit;
            nextSetBit = bitSet.nextSetBit(nextSetBit + 1);
            j = j2;
        }
        return new SmallCharMatcher(cArr, j, z, str);
    }

    public boolean matches(char c) {
        if (c == 0) {
            return this.containsZero;
        }
        if (!checkFilter(c)) {
            return false;
        }
        int length = this.table.length - 1;
        int smear = smear(c) & length;
        int i = smear;
        while (this.table[i] != 0) {
            if (this.table[i] == c) {
                return true;
            }
            i = (i + 1) & length;
            if (i == smear) {
                return false;
            }
        }
        return false;
    }

    /* Access modifiers changed, original: 0000 */
    @GwtIncompatible("java.util.BitSet")
    public void setBits(BitSet bitSet) {
        int i = 0;
        if (this.containsZero) {
            bitSet.set(0);
        }
        char[] cArr = this.table;
        int length = cArr.length;
        while (i < length) {
            char c = cArr[i];
            if (c != 0) {
                bitSet.set(c);
            }
            i++;
        }
    }
}
