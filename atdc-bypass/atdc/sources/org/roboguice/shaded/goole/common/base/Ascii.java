package org.roboguice.shaded.goole.common.base;

import javax.annotation.CheckReturnValue;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;

@GwtCompatible
public final class Ascii {
    public static final byte ACK = (byte) 6;
    public static final byte BEL = (byte) 7;
    public static final byte BS = (byte) 8;
    public static final byte CAN = (byte) 24;
    public static final byte CR = (byte) 13;
    public static final byte DC1 = (byte) 17;
    public static final byte DC2 = (byte) 18;
    public static final byte DC3 = (byte) 19;
    public static final byte DC4 = (byte) 20;
    public static final byte DEL = Byte.MAX_VALUE;
    public static final byte DLE = (byte) 16;
    public static final byte EM = (byte) 25;
    public static final byte ENQ = (byte) 5;
    public static final byte EOT = (byte) 4;
    public static final byte ESC = (byte) 27;
    public static final byte ETB = (byte) 23;
    public static final byte ETX = (byte) 3;
    public static final byte FF = (byte) 12;
    public static final byte FS = (byte) 28;
    public static final byte GS = (byte) 29;
    public static final byte HT = (byte) 9;
    public static final byte LF = (byte) 10;
    public static final char MAX = '';
    public static final char MIN = '\u0000';
    public static final byte NAK = (byte) 21;
    public static final byte NL = (byte) 10;
    public static final byte NUL = (byte) 0;
    public static final byte RS = (byte) 30;
    public static final byte SI = (byte) 15;
    public static final byte SO = (byte) 14;
    public static final byte SOH = (byte) 1;
    public static final byte SP = (byte) 32;
    public static final byte SPACE = (byte) 32;
    public static final byte STX = (byte) 2;
    public static final byte SUB = (byte) 26;
    public static final byte SYN = (byte) 22;
    public static final byte US = (byte) 31;
    public static final byte VT = (byte) 11;
    public static final byte XOFF = (byte) 19;
    public static final byte XON = (byte) 17;

    private static int getAlphaIndex(char c) {
        return (char) ((c | 32) - 97);
    }

    public static boolean isLowerCase(char c) {
        return c >= 'a' && c <= 'z';
    }

    public static boolean isUpperCase(char c) {
        return c >= 'A' && c <= 'Z';
    }

    private Ascii() {
    }

    public static String toLowerCase(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (isUpperCase(str.charAt(i))) {
                char[] toCharArray = str.toCharArray();
                while (i < length) {
                    char c = toCharArray[i];
                    if (isUpperCase(c)) {
                        toCharArray[i] = (char) (c ^ 32);
                    }
                    i++;
                }
                return String.valueOf(toCharArray);
            }
            i++;
        }
        return str;
    }

    public static String toLowerCase(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return toLowerCase((String) charSequence);
        }
        int length = charSequence.length();
        StringBuilder stringBuilder = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            stringBuilder.append(toLowerCase(charSequence.charAt(i)));
        }
        return stringBuilder.toString();
    }

    public static char toLowerCase(char c) {
        return isUpperCase(c) ? (char) (c ^ 32) : c;
    }

    public static String toUpperCase(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (isLowerCase(str.charAt(i))) {
                char[] toCharArray = str.toCharArray();
                while (i < length) {
                    char c = toCharArray[i];
                    if (isLowerCase(c)) {
                        toCharArray[i] = (char) (c & 95);
                    }
                    i++;
                }
                return String.valueOf(toCharArray);
            }
            i++;
        }
        return str;
    }

    public static String toUpperCase(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return toUpperCase((String) charSequence);
        }
        int length = charSequence.length();
        StringBuilder stringBuilder = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            stringBuilder.append(toUpperCase(charSequence.charAt(i)));
        }
        return stringBuilder.toString();
    }

    public static char toUpperCase(char c) {
        return isLowerCase(c) ? (char) (c & 95) : c;
    }

    @Beta
    @CheckReturnValue
    public static String truncate(CharSequence charSequence, int i, String str) {
        Preconditions.checkNotNull(charSequence);
        int length = i - str.length();
        Preconditions.checkArgument(length >= 0, "maxLength (%s) must be >= length of the truncation indicator (%s)", Integer.valueOf(i), Integer.valueOf(str.length()));
        if (charSequence.length() <= i) {
            charSequence = charSequence.toString();
            if (charSequence.length() <= i) {
                return charSequence;
            }
        }
        StringBuilder stringBuilder = new StringBuilder(i);
        stringBuilder.append(charSequence, 0, length);
        stringBuilder.append(str);
        return stringBuilder.toString();
    }

    @Beta
    public static boolean equalsIgnoreCase(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            char charAt2 = charSequence2.charAt(i);
            if (charAt != charAt2) {
                int alphaIndex = getAlphaIndex(charAt);
                if (alphaIndex >= 26 || alphaIndex != getAlphaIndex(charAt2)) {
                    return false;
                }
            }
        }
        return true;
    }
}
