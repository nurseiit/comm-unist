package okhttp3.internal.http2;

import java.io.IOException;
import okhttp3.internal.Util;
import okio.ByteString;

public final class Http2 {
    static final String[] BINARY = new String[256];
    static final ByteString CONNECTION_PREFACE = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    static final String[] FLAGS = new String[64];
    static final byte FLAG_ACK = (byte) 1;
    static final byte FLAG_COMPRESSED = (byte) 32;
    static final byte FLAG_END_HEADERS = (byte) 4;
    static final byte FLAG_END_PUSH_PROMISE = (byte) 4;
    static final byte FLAG_END_STREAM = (byte) 1;
    static final byte FLAG_NONE = (byte) 0;
    static final byte FLAG_PADDED = (byte) 8;
    static final byte FLAG_PRIORITY = (byte) 32;
    private static final String[] FRAME_NAMES;
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = (byte) 9;
    static final byte TYPE_DATA = (byte) 0;
    static final byte TYPE_GOAWAY = (byte) 7;
    static final byte TYPE_HEADERS = (byte) 1;
    static final byte TYPE_PING = (byte) 6;
    static final byte TYPE_PRIORITY = (byte) 2;
    static final byte TYPE_PUSH_PROMISE = (byte) 5;
    static final byte TYPE_RST_STREAM = (byte) 3;
    static final byte TYPE_SETTINGS = (byte) 4;
    static final byte TYPE_WINDOW_UPDATE = (byte) 8;

    static {
        r0 = new String[10];
        int i = 0;
        r0[0] = "DATA";
        r0[1] = "HEADERS";
        r0[2] = "PRIORITY";
        r0[3] = "RST_STREAM";
        r0[4] = "SETTINGS";
        r0[5] = "PUSH_PROMISE";
        r0[6] = "PING";
        r0[7] = "GOAWAY";
        r0[8] = "WINDOW_UPDATE";
        r0[9] = "CONTINUATION";
        FRAME_NAMES = r0;
        for (int i2 = 0; i2 < BINARY.length; i2++) {
            BINARY[i2] = Util.format("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
        }
        FLAGS[0] = "";
        FLAGS[1] = "END_STREAM";
        int[] iArr = new int[]{1};
        FLAGS[8] = "PADDED";
        for (int i3 : iArr) {
            String[] strArr = FLAGS;
            int i4 = i3 | 8;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(FLAGS[i3]);
            stringBuilder.append("|PADDED");
            strArr[i4] = stringBuilder.toString();
        }
        FLAGS[4] = "END_HEADERS";
        FLAGS[32] = "PRIORITY";
        FLAGS[36] = "END_HEADERS|PRIORITY";
        for (int i5 : new int[]{4, 32, 36}) {
            for (int i6 : iArr) {
                String[] strArr2 = FLAGS;
                int i7 = i6 | i5;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(FLAGS[i6]);
                stringBuilder2.append('|');
                stringBuilder2.append(FLAGS[i5]);
                strArr2[i7] = stringBuilder2.toString();
                strArr2 = FLAGS;
                i7 |= 8;
                stringBuilder2 = new StringBuilder();
                stringBuilder2.append(FLAGS[i6]);
                stringBuilder2.append('|');
                stringBuilder2.append(FLAGS[i5]);
                stringBuilder2.append("|PADDED");
                strArr2[i7] = stringBuilder2.toString();
            }
        }
        while (i < FLAGS.length) {
            if (FLAGS[i] == null) {
                FLAGS[i] = BINARY[i];
            }
            i++;
        }
    }

    private Http2() {
    }

    static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(Util.format(str, objArr));
    }

    static String frameLog(boolean z, int i, int i2, byte b, byte b2) {
        String format = b < FRAME_NAMES.length ? FRAME_NAMES[b] : Util.format("0x%02x", Byte.valueOf(b));
        String formatFlags = formatFlags(b, b2);
        String str = "%s 0x%08x %5d %-13s %s";
        Object[] objArr = new Object[5];
        objArr[0] = z ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = Integer.valueOf(i2);
        objArr[3] = format;
        objArr[4] = formatFlags;
        return Util.format(str, objArr);
    }

    static String formatFlags(byte b, byte b2) {
        if (b2 == (byte) 0) {
            return "";
        }
        switch (b) {
            case (byte) 2:
            case (byte) 3:
            case (byte) 7:
            case (byte) 8:
                return BINARY[b2];
            case (byte) 4:
            case (byte) 6:
                return b2 == (byte) 1 ? "ACK" : BINARY[b2];
            default:
                String str;
                if (b2 < FLAGS.length) {
                    str = FLAGS[b2];
                } else {
                    str = BINARY[b2];
                }
                if (b != (byte) 5 || (b2 & 4) == 0) {
                    return (b != (byte) 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                } else {
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
        }
    }
}
