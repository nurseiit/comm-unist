package com.google.android.gms.internal;

import java.util.Random;

public final class zc {
    private static long zzcjA;
    private static final int[] zzcjB = new int[12];
    private static final Random zzcjz = new Random();

    private static void zzJH() {
        int i = 11;
        while (i >= 0) {
            if (zzcjB[i] != 63) {
                zzcjB[i] = zzcjB[i] + 1;
                return;
            } else {
                zzcjB[i] = 0;
                i--;
            }
        }
    }

    public static synchronized String zzaz(long j) {
        String stringBuilder;
        synchronized (zc.class) {
            int i = 0;
            Object obj = j == zzcjA ? 1 : null;
            zzcjA = j;
            char[] cArr = new char[8];
            StringBuilder stringBuilder2 = new StringBuilder(20);
            for (int i2 = 7; i2 >= 0; i2--) {
                cArr[i2] = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz".charAt((int) (j % 64));
                j /= 64;
            }
            stringBuilder2.append(cArr);
            if (obj == null) {
                for (int i3 = 0; i3 < 12; i3++) {
                    zzcjB[i3] = zzcjz.nextInt(64);
                }
            } else {
                zzJH();
            }
            while (i < 12) {
                stringBuilder2.append("-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz".charAt(zzcjB[i]));
                i++;
            }
            stringBuilder = stringBuilder2.toString();
        }
        return stringBuilder;
    }
}
