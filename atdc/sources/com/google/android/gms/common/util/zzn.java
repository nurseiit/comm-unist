package com.google.android.gms.common.util;

import android.os.ParcelFileDescriptor;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class zzn {
    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static long zza(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        return zza(inputStream, outputStream, z, 1024);
    }

    public static long zza(InputStream inputStream, OutputStream outputStream, boolean z, int i) throws IOException {
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, bArr.length);
                if (read == -1) {
                    break;
                }
                long j2 = j + ((long) read);
                outputStream.write(bArr, 0, read);
                j = j2;
            } finally {
                if (z) {
                    closeQuietly(inputStream);
                    closeQuietly(outputStream);
                }
            }
        }
        return j;
    }

    public static void zza(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    public static byte[] zza(InputStream inputStream, boolean z) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        zza(inputStream, byteArrayOutputStream, z);
        return byteArrayOutputStream.toByteArray();
    }
}
