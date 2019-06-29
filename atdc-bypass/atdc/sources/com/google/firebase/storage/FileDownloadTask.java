package com.google.firebase.storage;

import android.net.Uri;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.abu;
import com.google.android.gms.internal.acf;
import com.google.firebase.storage.StorageTask.ProvideError;
import com.google.firebase.storage.StorageTask.SnapshotBase;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileDownloadTask extends StorageTask<TaskSnapshot> {
    private int mResultCode;
    private long zzaNq = -1;
    private volatile Exception zzbMj = null;
    private StorageReference zzcoe;
    private abu zzcog;
    private final Uri zzcoh;
    private long zzcoi;
    private String zzcoj = null;
    private long zzcok = 0;

    public class TaskSnapshot extends SnapshotBase {
        private final long zzcoi;

        TaskSnapshot(Exception exception, long j) {
            super(exception);
            this.zzcoi = j;
        }

        public long getBytesTransferred() {
            return this.zzcoi;
        }

        public long getTotalByteCount() {
            return FileDownloadTask.this.getTotalBytes();
        }
    }

    FileDownloadTask(@NonNull StorageReference storageReference, @NonNull Uri uri) {
        this.zzcoe = storageReference;
        this.zzcoh = uri;
        this.zzcog = new abu(this.zzcoe.getStorage().getApp(), this.zzcoe.getStorage().getMaxDownloadRetryTimeMillis());
    }

    private final int zza(InputStream inputStream, byte[] bArr) {
        int i = 0;
        Object obj = null;
        while (i != bArr.length) {
            try {
                int read = inputStream.read(bArr, i, bArr.length - i);
                if (read == -1) {
                    break;
                }
                obj = 1;
                i += read;
            } catch (IOException e) {
                this.zzbMj = e;
            }
        }
        return obj != null ? i : -1;
    }

    private final boolean zza(acf acf) throws IOException {
        InputStream stream = acf.getStream();
        if (stream != null) {
            OutputStream fileOutputStream;
            File file = new File(this.zzcoh.getPath());
            if (!file.exists()) {
                if (this.zzcok > 0) {
                    String str = "FileDownloadTask";
                    String str2 = "The file downloading to has been deleted:";
                    String valueOf = String.valueOf(file.getAbsolutePath());
                    Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                    throw new IllegalStateException("expected a file to resume from.");
                } else if (!file.createNewFile()) {
                    String str3 = "FileDownloadTask";
                    String str4 = "unable to create file:";
                    String valueOf2 = String.valueOf(file.getAbsolutePath());
                    Log.w(str3, valueOf2.length() != 0 ? str4.concat(valueOf2) : new String(str4));
                }
            }
            boolean z = true;
            if (this.zzcok > 0) {
                String valueOf3 = String.valueOf(file.getAbsolutePath());
                long j = this.zzcok;
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf3).length() + 47);
                stringBuilder.append("Resuming download file ");
                stringBuilder.append(valueOf3);
                stringBuilder.append(" at ");
                stringBuilder.append(j);
                Log.d("FileDownloadTask", stringBuilder.toString());
                fileOutputStream = new FileOutputStream(file, true);
            } else {
                fileOutputStream = new FileOutputStream(file);
            }
            try {
                byte[] bArr = new byte[262144];
                while (z) {
                    int zza = zza(stream, bArr);
                    if (zza == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, zza);
                    this.zzcoi += (long) zza;
                    if (this.zzbMj != null) {
                        Log.d("FileDownloadTask", "Exception occurred during file download. Retrying.", this.zzbMj);
                        this.zzbMj = null;
                        z = false;
                    }
                    if (!zzj(4, false)) {
                        z = false;
                    }
                }
                fileOutputStream.flush();
                fileOutputStream.close();
                stream.close();
                return z;
            } catch (Throwable th) {
                fileOutputStream.flush();
                fileOutputStream.close();
                stream.close();
            }
        } else {
            this.zzbMj = new IllegalStateException("Unable to open Firebase Storage stream.");
            return false;
        }
    }

    /* Access modifiers changed, original: final */
    @NonNull
    public final StorageReference getStorage() {
        return this.zzcoe;
    }

    /* Access modifiers changed, original: final */
    public final long getTotalBytes() {
        return this.zzaNq;
    }

    /* Access modifiers changed, original: protected */
    public void onCanceled() {
        this.zzcog.cancel();
        this.zzbMj = StorageException.fromErrorStatus(Status.zzaBq);
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x00cd A:{SYNTHETIC} */
    public final void run() {
        /*
        r12 = this;
        r0 = r12.zzbMj;
        r1 = 64;
        r2 = 0;
        if (r0 == 0) goto L_0x000b;
    L_0x0007:
        r12.zzj(r1, r2);
        return;
    L_0x000b:
        r0 = 4;
        r3 = r12.zzj(r0, r2);
        if (r3 != 0) goto L_0x0013;
    L_0x0012:
        return;
    L_0x0013:
        r3 = 0;
        r12.zzcoi = r3;
        r5 = 0;
        r12.zzbMj = r5;
        r6 = r12.zzcog;
        r6.reset();
        r6 = r12.zzcoe;	 Catch:{ RemoteException -> 0x0132 }
        r6 = r6.getStorage();	 Catch:{ RemoteException -> 0x0132 }
        r6 = r6.getApp();	 Catch:{ RemoteException -> 0x0132 }
        r6 = com.google.android.gms.internal.ace.zzg(r6);	 Catch:{ RemoteException -> 0x0132 }
        r7 = r12.zzcoe;	 Catch:{ RemoteException -> 0x0132 }
        r7 = r7.zzKP();	 Catch:{ RemoteException -> 0x0132 }
        r8 = r12.zzcok;	 Catch:{ RemoteException -> 0x0132 }
        r6 = r6.zza(r7, r8);	 Catch:{ RemoteException -> 0x0132 }
        r7 = r12.zzcog;
        r7.zza(r6, r2);
        r7 = r6.getResultCode();
        r12.mResultCode = r7;
        r7 = r6.getException();
        if (r7 == 0) goto L_0x004f;
    L_0x004a:
        r7 = r6.getException();
        goto L_0x0051;
    L_0x004f:
        r7 = r12.zzbMj;
    L_0x0051:
        r12.zzbMj = r7;
        r7 = r12.mResultCode;
        r8 = 308; // 0x134 float:4.32E-43 double:1.52E-321;
        r9 = 1;
        if (r7 == r8) goto L_0x0065;
    L_0x005a:
        r8 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r7 < r8) goto L_0x0063;
    L_0x005e:
        r8 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r7 >= r8) goto L_0x0063;
    L_0x0062:
        goto L_0x0065;
    L_0x0063:
        r7 = 0;
        goto L_0x0066;
    L_0x0065:
        r7 = 1;
    L_0x0066:
        if (r7 == 0) goto L_0x0074;
    L_0x0068:
        r7 = r12.zzbMj;
        if (r7 != 0) goto L_0x0074;
    L_0x006c:
        r7 = r12.zzKR();
        if (r7 != r0) goto L_0x0074;
    L_0x0072:
        r7 = 1;
        goto L_0x0075;
    L_0x0074:
        r7 = 0;
    L_0x0075:
        if (r7 == 0) goto L_0x00b9;
    L_0x0077:
        r8 = r6.zzLl();
        r10 = (long) r8;
        r12.zzaNq = r10;
        r8 = "ETag";
        r8 = r6.zzhO(r8);
        r10 = android.text.TextUtils.isEmpty(r8);
        if (r10 != 0) goto L_0x00a8;
    L_0x008a:
        r10 = r12.zzcoj;
        if (r10 == 0) goto L_0x00a8;
    L_0x008e:
        r10 = r12.zzcoj;
        r10 = r10.equals(r8);
        if (r10 != 0) goto L_0x00a8;
    L_0x0096:
        r0 = "FileDownloadTask";
        r1 = "The file at the server has changed.  Restarting from the beginning.";
        android.util.Log.w(r0, r1);
        r12.zzcok = r3;
        r12.zzcoj = r5;
        r6.zzLf();
        r12.schedule();
        return;
    L_0x00a8:
        r12.zzcoj = r8;
        r5 = r12.zza(r6);	 Catch:{ IOException -> 0x00af }
        goto L_0x00ba;
    L_0x00af:
        r5 = move-exception;
        r8 = "FileDownloadTask";
        r10 = "Exception occurred during file write.  Aborting.";
        android.util.Log.e(r8, r10, r5);
        r12.zzbMj = r5;
    L_0x00b9:
        r5 = r7;
    L_0x00ba:
        r6.zzLf();
        if (r5 == 0) goto L_0x00ca;
    L_0x00bf:
        r5 = r12.zzbMj;
        if (r5 != 0) goto L_0x00ca;
    L_0x00c3:
        r5 = r12.zzKR();
        if (r5 != r0) goto L_0x00ca;
    L_0x00c9:
        goto L_0x00cb;
    L_0x00ca:
        r9 = 0;
    L_0x00cb:
        if (r9 == 0) goto L_0x00d3;
    L_0x00cd:
        r0 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r12.zzj(r0, r2);
        return;
    L_0x00d3:
        r5 = new java.io.File;
        r6 = r12.zzcoh;
        r6 = r6.getPath();
        r5.<init>(r6);
        r6 = r5.exists();
        if (r6 == 0) goto L_0x00eb;
    L_0x00e4:
        r5 = r5.length();
        r12.zzcok = r5;
        goto L_0x00ed;
    L_0x00eb:
        r12.zzcok = r3;
    L_0x00ed:
        r5 = r12.zzKR();
        r6 = 8;
        if (r5 != r6) goto L_0x00fb;
    L_0x00f5:
        r0 = 16;
        r12.zzj(r0, r2);
        return;
    L_0x00fb:
        r5 = r12.zzKR();
        r6 = 32;
        if (r5 != r6) goto L_0x0128;
    L_0x0103:
        r0 = 256; // 0x100 float:3.59E-43 double:1.265E-321;
        r0 = r12.zzj(r0, r2);
        if (r0 != 0) goto L_0x0127;
    L_0x010b:
        r0 = "FileDownloadTask";
        r1 = r12.zzKR();
        r2 = 62;
        r3 = new java.lang.StringBuilder;
        r3.<init>(r2);
        r2 = "Unable to change download task to final state from ";
        r3.append(r2);
        r3.append(r1);
        r1 = r3.toString();
        android.util.Log.w(r0, r1);
    L_0x0127:
        return;
    L_0x0128:
        r5 = r12.zzcoi;
        r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1));
        if (r7 > 0) goto L_0x0013;
    L_0x012e:
        r12.zzj(r1, r2);
        return;
    L_0x0132:
        r0 = move-exception;
        r3 = "FileDownloadTask";
        r4 = "Unable to create firebase storage network request.";
        android.util.Log.e(r3, r4, r0);
        r12.zzbMj = r0;
        r12.zzj(r1, r2);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.storage.FileDownloadTask.run():void");
    }

    /* Access modifiers changed, original: protected */
    public void schedule() {
        zzt.zzu(zzEf());
    }

    /* Access modifiers changed, original: final|synthetic */
    @NonNull
    public final /* synthetic */ ProvideError zzKM() {
        return new TaskSnapshot(StorageException.fromExceptionAndHttpCode(this.zzbMj, this.mResultCode), this.zzcoi + this.zzcok);
    }
}
