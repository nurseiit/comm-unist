package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import java.util.concurrent.Callable;

final class zzfx implements Callable<Boolean> {
    private /* synthetic */ byte[] zzbKQ;
    private /* synthetic */ ParcelFileDescriptor zzbTp;

    zzfx(zzfw zzfw, ParcelFileDescriptor parcelFileDescriptor, byte[] bArr) {
        this.zzbTp = parcelFileDescriptor;
        this.zzbKQ = bArr;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x00a5 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:17|18|19|29|20|21) */
    /* JADX WARNING: Missing block: B:18:?, code skipped:
            r3 = java.lang.String.valueOf(r6.zzbTp);
            r5 = new java.lang.StringBuilder(java.lang.String.valueOf(r3).length() + 36);
            r5.append("processAssets: writing data failed: ");
            r5.append(r3);
            android.util.Log.w("WearableClient", r5.toString());
     */
    /* JADX WARNING: Missing block: B:21:0x0101, code skipped:
            return java.lang.Boolean.valueOf(false);
     */
    /* JADX WARNING: Missing block: B:24:0x0108, code skipped:
            if (android.util.Log.isLoggable("WearableClient", 3) != false) goto L_0x010a;
     */
    /* JADX WARNING: Missing block: B:25:0x010a, code skipped:
            r3 = java.lang.String.valueOf(r6.zzbTp);
            r5 = new java.lang.StringBuilder(java.lang.String.valueOf(r3).length() + 24);
            r5.append("processAssets: closing: ");
            r5.append(r3);
            android.util.Log.d("WearableClient", r5.toString());
     */
    /* JADX WARNING: Missing block: B:26:0x0130, code skipped:
            r0.close();
     */
    private final java.lang.Boolean zzDX() {
        /*
        r6 = this;
        r0 = "WearableClient";
        r1 = 3;
        r0 = android.util.Log.isLoggable(r0, r1);
        if (r0 == 0) goto L_0x002f;
    L_0x0009:
        r0 = "WearableClient";
        r2 = r6.zzbTp;
        r2 = java.lang.String.valueOf(r2);
        r3 = java.lang.String.valueOf(r2);
        r3 = r3.length();
        r3 = r3 + 36;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r3);
        r3 = "processAssets: writing data to FD : ";
        r4.append(r3);
        r4.append(r2);
        r2 = r4.toString();
        android.util.Log.d(r0, r2);
    L_0x002f:
        r0 = new android.os.ParcelFileDescriptor$AutoCloseOutputStream;
        r2 = r6.zzbTp;
        r0.<init>(r2);
        r2 = r6.zzbKQ;	 Catch:{ IOException -> 0x00a5 }
        r0.write(r2);	 Catch:{ IOException -> 0x00a5 }
        r0.flush();	 Catch:{ IOException -> 0x00a5 }
        r2 = "WearableClient";
        r2 = android.util.Log.isLoggable(r2, r1);	 Catch:{ IOException -> 0x00a5 }
        if (r2 == 0) goto L_0x006c;
    L_0x0046:
        r2 = "WearableClient";
        r3 = r6.zzbTp;	 Catch:{ IOException -> 0x00a5 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x00a5 }
        r4 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x00a5 }
        r4 = r4.length();	 Catch:{ IOException -> 0x00a5 }
        r4 = r4 + 27;
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x00a5 }
        r5.<init>(r4);	 Catch:{ IOException -> 0x00a5 }
        r4 = "processAssets: wrote data: ";
        r5.append(r4);	 Catch:{ IOException -> 0x00a5 }
        r5.append(r3);	 Catch:{ IOException -> 0x00a5 }
        r3 = r5.toString();	 Catch:{ IOException -> 0x00a5 }
        android.util.Log.d(r2, r3);	 Catch:{ IOException -> 0x00a5 }
    L_0x006c:
        r2 = 1;
        r2 = java.lang.Boolean.valueOf(r2);	 Catch:{ IOException -> 0x00a5 }
        r3 = "WearableClient";
        r1 = android.util.Log.isLoggable(r3, r1);	 Catch:{ IOException -> 0x00a2 }
        if (r1 == 0) goto L_0x009f;
    L_0x0079:
        r1 = "WearableClient";
        r3 = r6.zzbTp;	 Catch:{ IOException -> 0x00a2 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x00a2 }
        r4 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x00a2 }
        r4 = r4.length();	 Catch:{ IOException -> 0x00a2 }
        r4 = r4 + 24;
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x00a2 }
        r5.<init>(r4);	 Catch:{ IOException -> 0x00a2 }
        r4 = "processAssets: closing: ";
        r5.append(r4);	 Catch:{ IOException -> 0x00a2 }
        r5.append(r3);	 Catch:{ IOException -> 0x00a2 }
        r3 = r5.toString();	 Catch:{ IOException -> 0x00a2 }
        android.util.Log.d(r1, r3);	 Catch:{ IOException -> 0x00a2 }
    L_0x009f:
        r0.close();	 Catch:{ IOException -> 0x00a2 }
    L_0x00a2:
        return r2;
    L_0x00a3:
        r2 = move-exception;
        goto L_0x0102;
    L_0x00a5:
        r2 = "WearableClient";
        r3 = r6.zzbTp;	 Catch:{ all -> 0x00a3 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00a3 }
        r4 = java.lang.String.valueOf(r3);	 Catch:{ all -> 0x00a3 }
        r4 = r4.length();	 Catch:{ all -> 0x00a3 }
        r4 = r4 + 36;
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a3 }
        r5.<init>(r4);	 Catch:{ all -> 0x00a3 }
        r4 = "processAssets: writing data failed: ";
        r5.append(r4);	 Catch:{ all -> 0x00a3 }
        r5.append(r3);	 Catch:{ all -> 0x00a3 }
        r3 = r5.toString();	 Catch:{ all -> 0x00a3 }
        android.util.Log.w(r2, r3);	 Catch:{ all -> 0x00a3 }
        r2 = "WearableClient";
        r1 = android.util.Log.isLoggable(r2, r1);	 Catch:{ IOException -> 0x00fc }
        if (r1 == 0) goto L_0x00f9;
    L_0x00d3:
        r1 = "WearableClient";
        r2 = r6.zzbTp;	 Catch:{ IOException -> 0x00fc }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x00fc }
        r3 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x00fc }
        r3 = r3.length();	 Catch:{ IOException -> 0x00fc }
        r3 = r3 + 24;
        r4 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x00fc }
        r4.<init>(r3);	 Catch:{ IOException -> 0x00fc }
        r3 = "processAssets: closing: ";
        r4.append(r3);	 Catch:{ IOException -> 0x00fc }
        r4.append(r2);	 Catch:{ IOException -> 0x00fc }
        r2 = r4.toString();	 Catch:{ IOException -> 0x00fc }
        android.util.Log.d(r1, r2);	 Catch:{ IOException -> 0x00fc }
    L_0x00f9:
        r0.close();	 Catch:{ IOException -> 0x00fc }
    L_0x00fc:
        r0 = 0;
        r0 = java.lang.Boolean.valueOf(r0);
        return r0;
    L_0x0102:
        r3 = "WearableClient";
        r1 = android.util.Log.isLoggable(r3, r1);	 Catch:{ IOException -> 0x0133 }
        if (r1 == 0) goto L_0x0130;
    L_0x010a:
        r1 = "WearableClient";
        r3 = r6.zzbTp;	 Catch:{ IOException -> 0x0133 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0133 }
        r4 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0133 }
        r4 = r4.length();	 Catch:{ IOException -> 0x0133 }
        r4 = r4 + 24;
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0133 }
        r5.<init>(r4);	 Catch:{ IOException -> 0x0133 }
        r4 = "processAssets: closing: ";
        r5.append(r4);	 Catch:{ IOException -> 0x0133 }
        r5.append(r3);	 Catch:{ IOException -> 0x0133 }
        r3 = r5.toString();	 Catch:{ IOException -> 0x0133 }
        android.util.Log.d(r1, r3);	 Catch:{ IOException -> 0x0133 }
    L_0x0130:
        r0.close();	 Catch:{ IOException -> 0x0133 }
    L_0x0133:
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.wearable.internal.zzfx.zzDX():java.lang.Boolean");
    }

    public final /* synthetic */ Object call() throws Exception {
        return zzDX();
    }
}
