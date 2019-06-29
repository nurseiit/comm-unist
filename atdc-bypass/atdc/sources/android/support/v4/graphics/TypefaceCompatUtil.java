package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;

@RestrictTo({Scope.LIBRARY_GROUP})
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = ".font";
    private static final String TAG = "TypefaceCompatUtil";

    private TypefaceCompatUtil() {
    }

    @Nullable
    public static File getTempFile(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(CACHE_FILE_PREFIX);
        stringBuilder.append(Process.myPid());
        stringBuilder.append("-");
        stringBuilder.append(Process.myTid());
        stringBuilder.append("-");
        String stringBuilder2 = stringBuilder.toString();
        int i = 0;
        while (i < 100) {
            File cacheDir = context.getCacheDir();
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(stringBuilder2);
            stringBuilder3.append(i);
            File file = new File(cacheDir, stringBuilder3.toString());
            try {
                if (file.createNewFile()) {
                    return file;
                }
                i++;
            } catch (IOException unused) {
            }
        }
        return null;
    }

    @Nullable
    @RequiresApi(19)
    private static ByteBuffer mmap(File file) {
        Throwable th;
        Throwable th2;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(MapMode.READ_ONLY, 0, channel.size());
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                return map;
            } catch (Throwable th22) {
                Throwable th3 = th22;
                th22 = th;
                th = th3;
            }
            throw th;
            if (fileInputStream != null) {
                if (th22 != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th4) {
                        th22.addSuppressed(th4);
                    }
                } else {
                    fileInputStream.close();
                }
            }
            throw th;
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0051 A:{ExcHandler: all (th java.lang.Throwable), Splitter:B:7:0x0013} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:34:0x0051, code skipped:
            r9 = th;
     */
    /* JADX WARNING: Missing block: B:35:0x0052, code skipped:
            r10 = null;
     */
    /* JADX WARNING: Missing block: B:39:0x0056, code skipped:
            r10 = move-exception;
     */
    /* JADX WARNING: Missing block: B:40:0x0057, code skipped:
            r7 = r10;
            r10 = r9;
            r9 = r7;
     */
    @android.support.annotation.Nullable
    @android.support.annotation.RequiresApi(19)
    public static java.nio.ByteBuffer mmap(android.content.Context r8, android.os.CancellationSignal r9, android.net.Uri r10) {
        /*
        r8 = r8.getContentResolver();
        r0 = 0;
        r1 = "r";
        r8 = r8.openFileDescriptor(r10, r1, r9);	 Catch:{ IOException -> 0x006b }
        if (r8 != 0) goto L_0x0013;
    L_0x000d:
        if (r8 == 0) goto L_0x0012;
    L_0x000f:
        r8.close();	 Catch:{ IOException -> 0x006b }
    L_0x0012:
        return r0;
    L_0x0013:
        r9 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x0054, all -> 0x0051 }
        r10 = r8.getFileDescriptor();	 Catch:{ Throwable -> 0x0054, all -> 0x0051 }
        r9.<init>(r10);	 Catch:{ Throwable -> 0x0054, all -> 0x0051 }
        r1 = r9.getChannel();	 Catch:{ Throwable -> 0x003a, all -> 0x0037 }
        r5 = r1.size();	 Catch:{ Throwable -> 0x003a, all -> 0x0037 }
        r2 = java.nio.channels.FileChannel.MapMode.READ_ONLY;	 Catch:{ Throwable -> 0x003a, all -> 0x0037 }
        r3 = 0;
        r10 = r1.map(r2, r3, r5);	 Catch:{ Throwable -> 0x003a, all -> 0x0037 }
        if (r9 == 0) goto L_0x0031;
    L_0x002e:
        r9.close();	 Catch:{ Throwable -> 0x0054, all -> 0x0051 }
    L_0x0031:
        if (r8 == 0) goto L_0x0036;
    L_0x0033:
        r8.close();	 Catch:{ IOException -> 0x006b }
    L_0x0036:
        return r10;
    L_0x0037:
        r10 = move-exception;
        r1 = r0;
        goto L_0x0040;
    L_0x003a:
        r10 = move-exception;
        throw r10;	 Catch:{ all -> 0x003c }
    L_0x003c:
        r1 = move-exception;
        r7 = r1;
        r1 = r10;
        r10 = r7;
    L_0x0040:
        if (r9 == 0) goto L_0x0050;
    L_0x0042:
        if (r1 == 0) goto L_0x004d;
    L_0x0044:
        r9.close();	 Catch:{ Throwable -> 0x0048, all -> 0x0051 }
        goto L_0x0050;
    L_0x0048:
        r9 = move-exception;
        r1.addSuppressed(r9);	 Catch:{ Throwable -> 0x0054, all -> 0x0051 }
        goto L_0x0050;
    L_0x004d:
        r9.close();	 Catch:{ Throwable -> 0x0054, all -> 0x0051 }
    L_0x0050:
        throw r10;	 Catch:{ Throwable -> 0x0054, all -> 0x0051 }
    L_0x0051:
        r9 = move-exception;
        r10 = r0;
        goto L_0x005a;
    L_0x0054:
        r9 = move-exception;
        throw r9;	 Catch:{ all -> 0x0056 }
    L_0x0056:
        r10 = move-exception;
        r7 = r10;
        r10 = r9;
        r9 = r7;
    L_0x005a:
        if (r8 == 0) goto L_0x006a;
    L_0x005c:
        if (r10 == 0) goto L_0x0067;
    L_0x005e:
        r8.close();	 Catch:{ Throwable -> 0x0062 }
        goto L_0x006a;
    L_0x0062:
        r8 = move-exception;
        r10.addSuppressed(r8);	 Catch:{ IOException -> 0x006b }
        goto L_0x006a;
    L_0x0067:
        r8.close();	 Catch:{ IOException -> 0x006b }
    L_0x006a:
        throw r9;	 Catch:{ IOException -> 0x006b }
    L_0x006b:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatUtil.mmap(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    @Nullable
    @RequiresApi(19)
    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i) {
        File tempFile = getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (!copyToFile(tempFile, resources, i)) {
                return null;
            }
            ByteBuffer mmap = mmap(tempFile);
            tempFile.delete();
            return mmap;
        } finally {
            tempFile.delete();
        }
    }

    public static boolean copyToFile(File file, InputStream inputStream) {
        IOException e;
        String str;
        StringBuilder stringBuilder;
        Throwable th;
        Closeable closeable = null;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file, false);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        closeQuietly(fileOutputStream);
                        return true;
                    }
                }
            } catch (IOException e2) {
                e = e2;
                closeable = fileOutputStream;
                try {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Error copying resource contents to temp file: ");
                    stringBuilder.append(e.getMessage());
                    Log.e(str, stringBuilder.toString());
                    closeQuietly(closeable);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(closeable);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                closeable = fileOutputStream;
                closeQuietly(closeable);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            str = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Error copying resource contents to temp file: ");
            stringBuilder.append(e.getMessage());
            Log.e(str, stringBuilder.toString());
            closeQuietly(closeable);
            return false;
        }
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        Throwable th;
        Closeable openRawResource;
        try {
            openRawResource = resources.openRawResource(i);
            try {
                boolean copyToFile = copyToFile(file, openRawResource);
                closeQuietly(openRawResource);
                return copyToFile;
            } catch (Throwable th2) {
                th = th2;
                closeQuietly(openRawResource);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            openRawResource = null;
            closeQuietly(openRawResource);
            throw th;
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
