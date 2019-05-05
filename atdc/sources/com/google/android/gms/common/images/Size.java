package com.google.android.gms.common.images;

public final class Size {
    private final int zzrW;
    private final int zzrX;

    public Size(int i, int i2) {
        this.zzrW = i;
        this.zzrX = i2;
    }

    public static Size parseSize(String str) throws NumberFormatException {
        if (str == null) {
            throw new IllegalArgumentException("string must not be null");
        }
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            indexOf = str.indexOf(120);
        }
        if (indexOf < 0) {
            throw zzcy(str);
        }
        try {
            return new Size(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
        } catch (NumberFormatException unused) {
            throw zzcy(str);
        }
    }

    private static NumberFormatException zzcy(String str) {
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 16);
        stringBuilder.append("Invalid Size: \"");
        stringBuilder.append(str);
        stringBuilder.append("\"");
        throw new NumberFormatException(stringBuilder.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            return this.zzrW == size.zzrW && this.zzrX == size.zzrX;
        }
    }

    public final int getHeight() {
        return this.zzrX;
    }

    public final int getWidth() {
        return this.zzrW;
    }

    public final int hashCode() {
        return this.zzrX ^ ((this.zzrW << 16) | (this.zzrW >>> 16));
    }

    public final String toString() {
        int i = this.zzrW;
        int i2 = this.zzrX;
        StringBuilder stringBuilder = new StringBuilder(23);
        stringBuilder.append(i);
        stringBuilder.append("x");
        stringBuilder.append(i2);
        return stringBuilder.toString();
    }
}
