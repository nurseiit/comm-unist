package org.altbeacon.beacon;

import java.util.regex.Pattern;

public class Identifier {
    private static final Pattern DECIMAL_PATTERN = Pattern.compile("^[0-9]+$");
    private static final Pattern HEX_PATTERN = Pattern.compile("^0x[0-9A-F-a-f]+$");
    private static final String TAG = "Identifier";
    private static final Pattern UUID_PATTERN = Pattern.compile("[0-9A-F-a-f]+-[0-9A-F-a-f]+-[0-9A-F-a-f]+-[0-9A-F-a-f]+-[0-9A-F-a-f]+");
    private String mStringValue;

    public static Identifier parse(String str) {
        return new Identifier(str);
    }

    public static Identifier fromInt(int i) {
        return new Identifier(Integer.toString(i));
    }

    public Identifier(Identifier identifier) {
        if (identifier != null) {
            this.mStringValue = identifier.mStringValue;
            return;
        }
        throw new NullPointerException("cannot construct Identifier from a null value");
    }

    public String toString() {
        return this.mStringValue;
    }

    public int toInt() {
        return Integer.parseInt(this.mStringValue);
    }

    public byte[] toByteArrayOfSpecifiedEndianness(boolean z) {
        String toHexString = toHexString();
        int length = toHexString.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            byte parseInt = (byte) Integer.parseInt(toHexString.substring(i2, i2 + 2), 16);
            if (z) {
                bArr[i] = parseInt;
            } else {
                bArr[(length - i) - 1] = parseInt;
            }
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Identifier)) {
            return false;
        }
        return this.mStringValue.equals(((Identifier) obj).mStringValue);
    }

    private Identifier(String str) {
        if (str == null) {
            this.mStringValue = null;
        } else if (formatValid(str)) {
            this.mStringValue = str.toLowerCase();
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Cannot parse identifier string:");
            stringBuilder.append(str);
            stringBuilder.append("  Must be a decimal number 0-99999, a hex number of the form 0x00 or a UUID");
            throw new NumberFormatException(stringBuilder.toString());
        }
    }

    private static boolean isHex(String str) {
        if (str.length() < 4) {
            return false;
        }
        return HEX_PATTERN.matcher(str).find();
    }

    private static boolean isDecimal(String str) {
        if (str.length() != 0 && DECIMAL_PATTERN.matcher(str).find() && Integer.parseInt(str) <= 65535) {
            return true;
        }
        return false;
    }

    private static boolean isUuid(String str) {
        return UUID_PATTERN.matcher(str).find();
    }

    private static boolean formatValid(String str) {
        return isDecimal(str) || isHex(str) || isUuid(str);
    }

    public String toHexString() {
        if (isHex(this.mStringValue)) {
            return this.mStringValue.substring(2);
        }
        if (isUuid(this.mStringValue)) {
            return this.mStringValue.replaceAll("-", "");
        }
        return String.format("%04x", new Object[]{Integer.valueOf(Integer.parseInt(this.mStringValue))});
    }

    private Identifier() {
    }

    public int compareTo(Identifier identifier) {
        if (this.mStringValue == null && identifier.mStringValue == null) {
            return 0;
        }
        return this.mStringValue.compareTo(identifier.mStringValue);
    }
}
