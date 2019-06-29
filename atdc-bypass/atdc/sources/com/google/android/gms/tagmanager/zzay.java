package com.google.android.gms.tagmanager;

import java.util.Arrays;

final class zzay {
    final String zzBN;
    final byte[] zzbEw;

    zzay(String str, byte[] bArr) {
        this.zzBN = str;
        this.zzbEw = bArr;
    }

    public final String toString() {
        String str = this.zzBN;
        int hashCode = Arrays.hashCode(this.zzbEw);
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 54);
        stringBuilder.append("KeyAndSerialized: key = ");
        stringBuilder.append(str);
        stringBuilder.append(" serialized hash = ");
        stringBuilder.append(hashCode);
        return stringBuilder.toString();
    }
}
