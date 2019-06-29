package com.google.firebase.storage;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.StreamDownloadTask.StreamProcessor;

final class zzh implements StreamProcessor {
    private /* synthetic */ TaskCompletionSource zzcoP;
    private /* synthetic */ long zzcoQ;

    zzh(StorageReference storageReference, long j, TaskCompletionSource taskCompletionSource) {
        this.zzcoQ = j;
        this.zzcoP = taskCompletionSource;
    }

    /* JADX WARNING: Missing block: B:9:0x002d, code skipped:
            r11.flush();
            r10.zzcoP.setResult(r11.toByteArray());
     */
    public final void doInBackground(com.google.firebase.storage.StreamDownloadTask.TaskSnapshot r11, java.io.InputStream r12) throws java.io.IOException {
        /*
        r10 = this;
        r11 = new java.io.ByteArrayOutputStream;	 Catch:{ all -> 0x003d }
        r11.<init>();	 Catch:{ all -> 0x003d }
        r0 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        r1 = new byte[r0];	 Catch:{ all -> 0x003d }
        r2 = 0;
        r3 = 0;
    L_0x000b:
        r4 = r12.read(r1, r2, r0);	 Catch:{ all -> 0x003d }
        r5 = -1;
        if (r4 == r5) goto L_0x002d;
    L_0x0012:
        r3 = r3 + r4;
        r5 = (long) r3;	 Catch:{ all -> 0x003d }
        r7 = r10.zzcoQ;	 Catch:{ all -> 0x003d }
        r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r9 <= 0) goto L_0x0029;
    L_0x001a:
        r11 = "StorageReference";
        r0 = "the maximum allowed buffer size was exceeded.";
        android.util.Log.e(r11, r0);	 Catch:{ all -> 0x003d }
        r11 = new java.lang.IndexOutOfBoundsException;	 Catch:{ all -> 0x003d }
        r0 = "the maximum allowed buffer size was exceeded.";
        r11.<init>(r0);	 Catch:{ all -> 0x003d }
        throw r11;	 Catch:{ all -> 0x003d }
    L_0x0029:
        r11.write(r1, r2, r4);	 Catch:{ all -> 0x003d }
        goto L_0x000b;
    L_0x002d:
        r11.flush();	 Catch:{ all -> 0x003d }
        r0 = r10.zzcoP;	 Catch:{ all -> 0x003d }
        r11 = r11.toByteArray();	 Catch:{ all -> 0x003d }
        r0.setResult(r11);	 Catch:{ all -> 0x003d }
        r12.close();
        return;
    L_0x003d:
        r11 = move-exception;
        r12.close();
        throw r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.storage.zzh.doInBackground(com.google.firebase.storage.StreamDownloadTask$TaskSnapshot, java.io.InputStream):void");
    }
}
