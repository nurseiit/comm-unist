package com.google.android.gms.internal;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;

final class zzcsq {
    private static final Pattern zzbCf = Pattern.compile("[.]");
    private static final Inet4Address zzbCg = ((Inet4Address) zzeN("127.0.0.1"));
    private static final Inet4Address zzbCh = ((Inet4Address) zzeN("0.0.0.0"));

    static String zza(InetAddress inetAddress) {
        if (inetAddress instanceof Inet4Address) {
            return inetAddress.getHostAddress();
        }
        int i;
        int i2;
        byte[] address = inetAddress.getAddress();
        int[] iArr = new int[8];
        for (i = 0; i < 8; i++) {
            i2 = i * 2;
            iArr[i] = (address[i2 + 1] & 255) | (((address[i2] & 255) << 8) | 0);
        }
        i = 0;
        i2 = -1;
        int i3 = -1;
        int i4 = -1;
        while (i < 9) {
            if (i >= 8 || iArr[i] != 0) {
                if (i3 >= 0) {
                    int i5 = i - i3;
                    if (i5 > i2) {
                        i2 = i5;
                    } else {
                        i3 = i4;
                    }
                    i4 = i3;
                    i3 = -1;
                }
            } else if (i3 < 0) {
                i3 = i;
            }
            i++;
        }
        if (i2 >= 2) {
            Arrays.fill(iArr, i4, i2 + i4, -1);
        }
        StringBuilder stringBuilder = new StringBuilder(39);
        i = 0;
        Object obj = null;
        while (i < 8) {
            String toHexString;
            Object obj2 = iArr[i] >= 0 ? 1 : null;
            if (obj2 != null) {
                if (obj != null) {
                    stringBuilder.append(':');
                }
                toHexString = Integer.toHexString(iArr[i]);
            } else if (i == 0 || obj != null) {
                toHexString = "::";
            } else {
                i++;
                obj = obj2;
            }
            stringBuilder.append(toHexString);
            i++;
            obj = obj2;
        }
        return stringBuilder.toString();
    }

    static boolean zzeI(String str) {
        return zzeJ(str) != null;
    }

    private static byte[] zzeJ(String str) {
        int i;
        Object obj = null;
        Object obj2 = null;
        for (i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '.') {
                obj2 = 1;
            } else if (charAt == ':') {
                if (obj2 != null) {
                    return null;
                }
                obj = 1;
            } else if (Character.digit(charAt, 16) == -1) {
                return null;
            }
        }
        if (obj == null) {
            return obj2 != null ? zzeK(str) : null;
        } else {
            if (obj2 != null) {
                i = str.lastIndexOf(58) + 1;
                String substring = str.substring(0, i);
                byte[] zzeK = zzeK(str.substring(i));
                if (zzeK == null) {
                    str = null;
                } else {
                    String toHexString = Integer.toHexString(((zzeK[0] & 255) << 8) | (zzeK[1] & 255));
                    str = Integer.toHexString((zzeK[3] & 255) | ((zzeK[2] & 255) << 8));
                    StringBuilder stringBuilder = new StringBuilder(((String.valueOf(substring).length() + 1) + String.valueOf(toHexString).length()) + String.valueOf(str).length());
                    stringBuilder.append(substring);
                    stringBuilder.append(toHexString);
                    stringBuilder.append(":");
                    stringBuilder.append(str);
                    str = stringBuilder.toString();
                }
                if (str == null) {
                    return null;
                }
            }
            return zzeL(str);
        }
    }

    private static byte[] zzeK(String str) {
        byte[] bArr = new byte[4];
        try {
            String[] split = zzbCf.split(str, 4);
            int length = split.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                String str2 = split[i];
                int i3 = i2 + 1;
                int parseInt = Integer.parseInt(str2);
                if (parseInt <= 255) {
                    if (!str2.startsWith("0") || str2.length() <= 1) {
                        bArr[i2] = (byte) parseInt;
                        i++;
                        i2 = i3;
                    }
                }
                throw new NumberFormatException();
            }
            return i2 == 4 ? bArr : null;
        } catch (NumberFormatException unused) {
        }
    }

    private static byte[] zzeL(String str) {
        String[] split = str.split(":", 10);
        if (split.length < 3 || split.length > 9) {
            return null;
        }
        int length;
        int i;
        int i2;
        int i3 = -1;
        for (int i4 = 1; i4 < split.length - 1; i4++) {
            if (split[i4].length() == 0) {
                if (i3 >= 0) {
                    return null;
                }
                i3 = i4;
            }
        }
        if (i3 >= 0) {
            length = (split.length - i3) - 1;
            if (split[0].length() == 0) {
                i = i3 - 1;
                if (i != 0) {
                    return null;
                }
            }
            i = i3;
            if (split[split.length - 1].length() == 0) {
                i2 = length - 1;
                if (i2 != 0) {
                    return null;
                }
            }
            i2 = length;
        } else {
            i = split.length;
            i2 = 0;
        }
        length = 8 - (i + i2);
        if (!i3 < 0 ? length > 0 : length == 0) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(16);
        int i5 = 0;
        while (i5 < i) {
            try {
                allocate.putShort(zzeM(split[i5]));
                i5++;
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        for (i = 0; i < length; i++) {
            allocate.putShort((short) 0);
        }
        while (i2 > 0) {
            allocate.putShort(zzeM(split[split.length - i2]));
            i2--;
        }
        return allocate.array();
    }

    private static short zzeM(String str) {
        int parseInt = Integer.parseInt(str, 16);
        if (parseInt <= 65535) {
            return (short) parseInt;
        }
        throw new NumberFormatException();
    }

    static InetAddress zzeN(String str) {
        byte[] zzeJ = zzeJ(str);
        if (zzeJ != null) {
            return zzq(zzeJ);
        }
        Object[] objArr = new Object[]{str};
        throw new IllegalArgumentException(String.format(Locale.ROOT, "'%s' is not an IP string literal.", objArr));
    }

    private static InetAddress zzq(byte[] bArr) {
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException e) {
            throw new AssertionError(e);
        }
    }
}
