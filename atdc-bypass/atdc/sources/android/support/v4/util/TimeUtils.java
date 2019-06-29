package android.support.v4.util;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import java.io.PrintWriter;

@RestrictTo({Scope.LIBRARY_GROUP})
public final class TimeUtils {
    @RestrictTo({Scope.LIBRARY_GROUP})
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static char[] sFormatStr = new char[24];
    private static final Object sFormatSync = new Object();

    private static int accumField(int i, int i2, boolean z, int i3) {
        return (i > 99 || (z && i3 >= 3)) ? i2 + 3 : (i > 9 || (z && i3 >= 2)) ? i2 + 2 : (z || i > 0) ? i2 + 1 : 0;
    }

    private static int printField(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        if (!z && i <= 0) {
            return i2;
        }
        int i4;
        if ((!z || i3 < 3) && i <= 99) {
            i4 = i2;
        } else {
            int i5 = i / 100;
            cArr[i2] = (char) (i5 + 48);
            i4 = i2 + 1;
            i -= i5 * 100;
        }
        if ((z && i3 >= 2) || i > 9 || i2 != i4) {
            i2 = i / 10;
            cArr[i4] = (char) (i2 + 48);
            i4++;
            i -= i2 * 10;
        }
        cArr[i4] = (char) (i + 48);
        i4++;
        cArr[i4] = c;
        return i4 + 1;
    }

    private static int formatDurationLocked(long j, int i) {
        long j2 = j;
        int i2 = i;
        if (sFormatStr.length < i2) {
            sFormatStr = new char[i2];
        }
        char[] cArr = sFormatStr;
        int i3;
        if (j2 == 0) {
            i3 = i2 - 1;
            while (i3 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        char c;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (j2 > 0) {
            c = '+';
        } else {
            c = '-';
            j2 = -j2;
        }
        int i9 = (int) (j2 % 1000);
        i3 = (int) Math.floor((double) (j2 / 1000));
        if (i3 > 86400) {
            i4 = i3 / 86400;
            i3 -= 86400 * i4;
        } else {
            i4 = 0;
        }
        if (i3 > SECONDS_PER_HOUR) {
            i5 = i3 / SECONDS_PER_HOUR;
            i3 -= i5 * SECONDS_PER_HOUR;
        } else {
            i5 = 0;
        }
        if (i3 > 60) {
            i6 = i3 / 60;
            i7 = i3 - (i6 * 60);
            i3 = i6;
        } else {
            i7 = i3;
            i3 = 0;
        }
        if (i2 != 0) {
            i6 = accumField(i4, 1, false, 0);
            i6 += accumField(i5, 1, i6 > 0, 2);
            i6 += accumField(i3, 1, i6 > 0, 2);
            i6 += accumField(i7, 1, i6 > 0, 2);
            i8 = 0;
            for (i6 += accumField(i9, 2, true, i6 > 0 ? 3 : 0) + 1; i6 < i2; i6++) {
                cArr[i8] = ' ';
                i8++;
            }
        } else {
            i8 = 0;
        }
        cArr[i8] = c;
        int i10 = i8 + 1;
        Object obj = i2 != 0 ? 1 : null;
        int i11 = i10;
        int printField = printField(cArr, i4, 'd', i10, false, 0);
        printField = printField(cArr, i5, 'h', printField, printField != i11, obj != null ? 2 : 0);
        printField = printField(cArr, i3, 'm', printField, printField != i11, obj != null ? 2 : 0);
        printField = printField(cArr, i7, 's', printField, printField != i11, obj != null ? 2 : 0);
        i10 = (obj == null || printField == i11) ? 0 : 3;
        i3 = printField(cArr, i9, 'm', printField, true, i10);
        cArr[i3] = 's';
        return i3 + 1;
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, StringBuilder stringBuilder) {
        synchronized (sFormatSync) {
            stringBuilder.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, i)));
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    private TimeUtils() {
    }
}
