package com.google.android.gms.common.util;

public final class zzl {
    public static String zza(byte[] bArr, int i, int i2, boolean z) {
        if (bArr == null || bArr.length == 0 || i2 <= 0 || i2 > bArr.length) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder((((i2 + 16) - 1) / 16) * 57);
        int i3 = i2;
        int i4 = 0;
        int i5 = 0;
        while (i3 > 0) {
            String str;
            if (i4 == 0) {
                Object[] objArr;
                if (i2 < 65536) {
                    str = "%04X:";
                    objArr = new Object[]{Integer.valueOf(i5)};
                } else {
                    str = "%08X:";
                    objArr = new Object[]{Integer.valueOf(i5)};
                }
                str = String.format(str, objArr);
            } else {
                if (i4 == 8) {
                    str = " -";
                }
                stringBuilder.append(String.format(" %02X", new Object[]{Integer.valueOf(bArr[i5] & 255)}));
                i3--;
                i4++;
                if (i4 != 16 || i3 == 0) {
                    stringBuilder.append(10);
                    i4 = 0;
                }
                i5++;
            }
            stringBuilder.append(str);
            stringBuilder.append(String.format(" %02X", new Object[]{Integer.valueOf(bArr[i5] & 255)}));
            i3--;
            i4++;
            if (i4 != 16) {
            }
            stringBuilder.append(10);
            i4 = 0;
            i5++;
        }
        return stringBuilder.toString();
    }
}
