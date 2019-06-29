package android.support.v4.graphics;

import android.os.ParcelFileDescriptor;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;

@RequiresApi(21)
@RestrictTo({Scope.LIBRARY_GROUP})
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String TAG = "TypefaceCompatApi21Impl";

    TypefaceCompatApi21Impl() {
    }

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("/proc/self/fd/");
            stringBuilder.append(parcelFileDescriptor.getFd());
            String readlink = Os.readlink(stringBuilder.toString());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException unused) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x0061 A:{ExcHandler: all (th java.lang.Throwable), Splitter:B:6:0x0018} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:44:0x0061, code skipped:
            r5 = th;
     */
    /* JADX WARNING: Missing block: B:45:0x0062, code skipped:
            r7 = null;
     */
    /* JADX WARNING: Missing block: B:49:0x0066, code skipped:
            r7 = move-exception;
     */
    /* JADX WARNING: Missing block: B:50:0x0067, code skipped:
            r3 = r7;
            r7 = r5;
            r5 = r3;
     */
    public android.graphics.Typeface createFromFontInfo(android.content.Context r5, android.os.CancellationSignal r6, @android.support.annotation.NonNull android.support.v4.provider.FontsContractCompat.FontInfo[] r7, int r8) {
        /*
        r4 = this;
        r0 = r7.length;
        r1 = 0;
        r2 = 1;
        if (r0 >= r2) goto L_0x0006;
    L_0x0005:
        return r1;
    L_0x0006:
        r7 = r4.findBestInfo(r7, r8);
        r8 = r5.getContentResolver();
        r7 = r7.getUri();	 Catch:{ IOException -> 0x007b }
        r0 = "r";
        r6 = r8.openFileDescriptor(r7, r0, r6);	 Catch:{ IOException -> 0x007b }
        r7 = r4.getFile(r6);	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
        if (r7 == 0) goto L_0x002f;
    L_0x001e:
        r8 = r7.canRead();	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
        if (r8 != 0) goto L_0x0025;
    L_0x0024:
        goto L_0x002f;
    L_0x0025:
        r5 = android.graphics.Typeface.createFromFile(r7);	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
        if (r6 == 0) goto L_0x002e;
    L_0x002b:
        r6.close();	 Catch:{ IOException -> 0x007b }
    L_0x002e:
        return r5;
    L_0x002f:
        r7 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
        r8 = r6.getFileDescriptor();	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
        r7.<init>(r8);	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
        r5 = super.createFromInputStream(r5, r7);	 Catch:{ Throwable -> 0x004a, all -> 0x0047 }
        if (r7 == 0) goto L_0x0041;
    L_0x003e:
        r7.close();	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
    L_0x0041:
        if (r6 == 0) goto L_0x0046;
    L_0x0043:
        r6.close();	 Catch:{ IOException -> 0x007b }
    L_0x0046:
        return r5;
    L_0x0047:
        r5 = move-exception;
        r8 = r1;
        goto L_0x0050;
    L_0x004a:
        r5 = move-exception;
        throw r5;	 Catch:{ all -> 0x004c }
    L_0x004c:
        r8 = move-exception;
        r3 = r8;
        r8 = r5;
        r5 = r3;
    L_0x0050:
        if (r7 == 0) goto L_0x0060;
    L_0x0052:
        if (r8 == 0) goto L_0x005d;
    L_0x0054:
        r7.close();	 Catch:{ Throwable -> 0x0058, all -> 0x0061 }
        goto L_0x0060;
    L_0x0058:
        r7 = move-exception;
        r8.addSuppressed(r7);	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
        goto L_0x0060;
    L_0x005d:
        r7.close();	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
    L_0x0060:
        throw r5;	 Catch:{ Throwable -> 0x0064, all -> 0x0061 }
    L_0x0061:
        r5 = move-exception;
        r7 = r1;
        goto L_0x006a;
    L_0x0064:
        r5 = move-exception;
        throw r5;	 Catch:{ all -> 0x0066 }
    L_0x0066:
        r7 = move-exception;
        r3 = r7;
        r7 = r5;
        r5 = r3;
    L_0x006a:
        if (r6 == 0) goto L_0x007a;
    L_0x006c:
        if (r7 == 0) goto L_0x0077;
    L_0x006e:
        r6.close();	 Catch:{ Throwable -> 0x0072 }
        goto L_0x007a;
    L_0x0072:
        r6 = move-exception;
        r7.addSuppressed(r6);	 Catch:{ IOException -> 0x007b }
        goto L_0x007a;
    L_0x0077:
        r6.close();	 Catch:{ IOException -> 0x007b }
    L_0x007a:
        throw r5;	 Catch:{ IOException -> 0x007b }
    L_0x007b:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.TypefaceCompatApi21Impl.createFromFontInfo(android.content.Context, android.os.CancellationSignal, android.support.v4.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }
}
