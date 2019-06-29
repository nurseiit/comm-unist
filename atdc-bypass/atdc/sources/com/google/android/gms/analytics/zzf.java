package com.google.android.gms.analytics;

import android.support.v4.app.NotificationCompat;
import com.google.android.gms.internal.zzaob;

public final class zzf {
    public static String zzC(int i) {
        return zzc("&cd", i);
    }

    public static String zzD(int i) {
        return zzc("cd", i);
    }

    public static String zzE(int i) {
        return zzc("&cm", i);
    }

    public static String zzF(int i) {
        return zzc("cm", i);
    }

    public static String zzG(int i) {
        return zzc("&pr", i);
    }

    public static String zzH(int i) {
        return zzc("pr", i);
    }

    public static String zzI(int i) {
        return zzc("&promo", i);
    }

    public static String zzJ(int i) {
        return zzc(NotificationCompat.CATEGORY_PROMO, i);
    }

    public static String zzK(int i) {
        return zzc("pi", i);
    }

    public static String zzL(int i) {
        return zzc("&il", i);
    }

    public static String zzM(int i) {
        return zzc("il", i);
    }

    public static String zzN(int i) {
        return zzc("cd", i);
    }

    public static String zzO(int i) {
        return zzc("cm", i);
    }

    private static String zzc(String str, int i) {
        if (i <= 0) {
            zzaob.zzf("index out of range for prefix", str);
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 11);
        stringBuilder.append(str);
        stringBuilder.append(i);
        return stringBuilder.toString();
    }
}
