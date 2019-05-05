package com.google.android.gms.internal;

import java.io.IOException;

public final class ads {
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static int zzcsA = 16;
    private static int zzcsB = 26;
    public static final int[] zzcsC = new int[0];
    public static final long[] zzcsD = new long[0];
    public static final float[] zzcsE = new float[0];
    private static double[] zzcsF = new double[0];
    public static final boolean[] zzcsG = new boolean[0];
    public static final byte[][] zzcsH = new byte[0][];
    public static final byte[] zzcsI = new byte[0];
    private static int zzcsy = 11;
    private static int zzcsz = 12;

    public static final int zzb(adg adg, int i) throws IOException {
        int position = adg.getPosition();
        adg.zzcm(i);
        int i2 = 1;
        while (adg.zzLA() == i) {
            adg.zzcm(i);
            i2++;
        }
        adg.zzq(position, i);
        return i2;
    }
}
