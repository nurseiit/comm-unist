package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileReader;
import java.io.IOException;

public final class zzr {
    private static String zzaJW;
    private static final int zzaJX = Process.myPid();

    private static String zzaD(int i) {
        Throwable th;
        Closeable closeable = null;
        if (i <= 0) {
            return null;
        }
        ThreadPolicy allowThreadDiskReads;
        Closeable bufferedReader;
        try {
            allowThreadDiskReads = StrictMode.allowThreadDiskReads();
            StringBuilder stringBuilder = new StringBuilder(25);
            stringBuilder.append("/proc/");
            stringBuilder.append(i);
            stringBuilder.append("/cmdline");
            bufferedReader = new BufferedReader(new FileReader(stringBuilder.toString()));
            try {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                String trim = bufferedReader.readLine().trim();
                zzn.closeQuietly(bufferedReader);
                return trim;
            } catch (IOException unused) {
                zzn.closeQuietly(bufferedReader);
                return null;
            } catch (Throwable th2) {
                th = th2;
                closeable = bufferedReader;
                zzn.closeQuietly(closeable);
                throw th;
            }
        } catch (IOException unused2) {
            bufferedReader = null;
            zzn.closeQuietly(bufferedReader);
            return null;
        } catch (Throwable th3) {
            th = th3;
            zzn.closeQuietly(closeable);
            throw th;
        }
    }

    public static String zzsf() {
        if (zzaJW == null) {
            zzaJW = zzaD(zzaJX);
        }
        return zzaJW;
    }
}
