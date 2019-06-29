package okio;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import com.bumptech.glide.load.Key;
import java.nio.charset.Charset;

final class Util {
    public static final Charset UTF_8 = Charset.forName(Key.STRING_CHARSET_NAME);

    public static int reverseBytesInt(int i) {
        return ((i & 255) << 24) | ((((ViewCompat.MEASURED_STATE_MASK & i) >>> 24) | ((16711680 & i) >>> 8)) | ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) << 8));
    }

    public static long reverseBytesLong(long j) {
        return ((((((((j & -72057594037927936L) >>> 56) | ((j & 71776119061217280L) >>> 40)) | ((j & 280375465082880L) >>> 24)) | ((j & 1095216660480L) >>> 8)) | ((j & 4278190080L) << 8)) | ((j & 16711680) << 24)) | ((j & 65280) << 40)) | ((j & 255) << 56);
    }

    public static short reverseBytesShort(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) >>> 8));
    }

    private Util() {
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", new Object[]{Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3)}));
        }
    }

    public static void sneakyRethrow(Throwable th) {
        sneakyThrow2(th);
    }

    private static <T extends Throwable> void sneakyThrow2(Throwable th) throws Throwable {
        throw th;
    }

    public static boolean arrayRangeEquals(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }
}
