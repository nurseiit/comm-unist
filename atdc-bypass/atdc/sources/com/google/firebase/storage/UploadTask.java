package com.google.firebase.storage;

import android.net.Uri;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.abt;
import com.google.android.gms.internal.abu;
import com.google.android.gms.internal.abz;
import com.google.android.gms.internal.acf;
import com.google.android.gms.nearby.messages.Strategy;
import com.google.firebase.storage.StorageTask.ProvideError;
import com.google.firebase.storage.StorageTask.SnapshotBase;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.internal.http.StatusLine;

public class UploadTask extends StorageTask<TaskSnapshot> {
    private volatile int mResultCode = 0;
    private final Uri mUri;
    private volatile Exception zzbMj = null;
    private volatile StorageMetadata zzcoK;
    private final StorageReference zzcoe;
    private abu zzcog;
    private final long zzcpK;
    private final abt zzcpL;
    private final AtomicLong zzcpM = new AtomicLong(0);
    private int zzcpN = 262144;
    private boolean zzcpO;
    private volatile Uri zzcpP = null;
    private volatile Exception zzcpQ = null;
    private volatile String zzcpR;

    public class TaskSnapshot extends SnapshotBase {
        private final StorageMetadata zzcoK;
        private final Uri zzcpP;
        private final long zzcpU;

        TaskSnapshot(Exception exception, long j, Uri uri, StorageMetadata storageMetadata) {
            super(exception);
            this.zzcpU = j;
            this.zzcpP = uri;
            this.zzcoK = storageMetadata;
        }

        public long getBytesTransferred() {
            return this.zzcpU;
        }

        @Nullable
        public Uri getDownloadUrl() {
            StorageMetadata metadata = getMetadata();
            return metadata != null ? metadata.getDownloadUrl() : null;
        }

        @Nullable
        public StorageMetadata getMetadata() {
            return this.zzcoK;
        }

        public long getTotalByteCount() {
            return UploadTask.this.getTotalByteCount();
        }

        @Nullable
        public Uri getUploadSessionUri() {
            return this.zzcpP;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0086 A:{Catch:{ FileNotFoundException -> 0x00bc }} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0081 A:{Catch:{ FileNotFoundException -> 0x00bc }} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00d6  */
    UploadTask(com.google.firebase.storage.StorageReference r10, com.google.firebase.storage.StorageMetadata r11, android.net.Uri r12, android.net.Uri r13) {
        /*
        r9 = this;
        r9.<init>();
        r0 = new java.util.concurrent.atomic.AtomicLong;
        r1 = 0;
        r0.<init>(r1);
        r9.zzcpM = r0;
        r0 = 262144; // 0x40000 float:3.67342E-40 double:1.295163E-318;
        r9.zzcpN = r0;
        r1 = 0;
        r9.zzcpP = r1;
        r9.zzbMj = r1;
        r9.zzcpQ = r1;
        r2 = 0;
        r9.mResultCode = r2;
        com.google.android.gms.common.internal.zzbo.zzu(r10);
        com.google.android.gms.common.internal.zzbo.zzu(r12);
        r9.zzcoe = r10;
        r9.zzcoK = r11;
        r9.mUri = r12;
        r10 = new com.google.android.gms.internal.abu;
        r11 = r9.zzcoe;
        r11 = r11.getStorage();
        r11 = r11.getApp();
        r12 = r9.zzcoe;
        r12 = r12.getStorage();
        r2 = r12.getMaxUploadRetryTimeMillis();
        r10.<init>(r11, r2);
        r9.zzcog = r10;
        r10 = -1;
        r12 = r9.zzcoe;	 Catch:{ FileNotFoundException -> 0x00be }
        r12 = r12.getStorage();	 Catch:{ FileNotFoundException -> 0x00be }
        r12 = r12.getApp();	 Catch:{ FileNotFoundException -> 0x00be }
        r12 = r12.getApplicationContext();	 Catch:{ FileNotFoundException -> 0x00be }
        r12 = r12.getContentResolver();	 Catch:{ FileNotFoundException -> 0x00be }
        r2 = r9.mUri;	 Catch:{ NullPointerException -> 0x0090, IOException -> 0x006b }
        r3 = "r";
        r2 = r12.openFileDescriptor(r2, r3);	 Catch:{ NullPointerException -> 0x0090, IOException -> 0x006b }
        if (r2 == 0) goto L_0x0099;
    L_0x005f:
        r3 = r2.getStatSize();	 Catch:{ NullPointerException -> 0x0090, IOException -> 0x006b }
        r2.close();	 Catch:{ NullPointerException -> 0x0069, IOException -> 0x0067 }
        goto L_0x009a;
    L_0x0067:
        r2 = move-exception;
        goto L_0x006d;
    L_0x0069:
        r2 = move-exception;
        goto L_0x0092;
    L_0x006b:
        r2 = move-exception;
        r3 = r10;
    L_0x006d:
        r5 = "UploadTask";
        r6 = "could not retrieve file size for upload ";
        r7 = r9.mUri;	 Catch:{ FileNotFoundException -> 0x00bc }
        r7 = r7.toString();	 Catch:{ FileNotFoundException -> 0x00bc }
        r7 = java.lang.String.valueOf(r7);	 Catch:{ FileNotFoundException -> 0x00bc }
        r8 = r7.length();	 Catch:{ FileNotFoundException -> 0x00bc }
        if (r8 == 0) goto L_0x0086;
    L_0x0081:
        r6 = r6.concat(r7);	 Catch:{ FileNotFoundException -> 0x00bc }
        goto L_0x008c;
    L_0x0086:
        r7 = new java.lang.String;	 Catch:{ FileNotFoundException -> 0x00bc }
        r7.<init>(r6);	 Catch:{ FileNotFoundException -> 0x00bc }
        r6 = r7;
    L_0x008c:
        android.util.Log.w(r5, r6, r2);	 Catch:{ FileNotFoundException -> 0x00bc }
        goto L_0x009a;
    L_0x0090:
        r2 = move-exception;
        r3 = r10;
    L_0x0092:
        r5 = "UploadTask";
        r6 = "NullPointerException during file size calculation.";
        android.util.Log.w(r5, r6, r2);	 Catch:{ FileNotFoundException -> 0x00bc }
    L_0x0099:
        r3 = r10;
    L_0x009a:
        r2 = r9.mUri;	 Catch:{ FileNotFoundException -> 0x00bc }
        r12 = r12.openInputStream(r2);	 Catch:{ FileNotFoundException -> 0x00bc }
        if (r12 == 0) goto L_0x00e6;
    L_0x00a2:
        r1 = (r3 > r10 ? 1 : (r3 == r10 ? 0 : -1));
        if (r1 != 0) goto L_0x00b0;
    L_0x00a6:
        r10 = r12.available();	 Catch:{ IOException -> 0x00b0, FileNotFoundException -> 0x00ae }
        if (r10 < 0) goto L_0x00b0;
    L_0x00ac:
        r3 = (long) r10;
        goto L_0x00b0;
    L_0x00ae:
        r10 = move-exception;
        goto L_0x00c2;
    L_0x00b0:
        r10 = r3;
        r1 = new java.io.BufferedInputStream;	 Catch:{ FileNotFoundException -> 0x00b8 }
        r1.<init>(r12);	 Catch:{ FileNotFoundException -> 0x00b8 }
        r12 = r1;
        goto L_0x00e7;
    L_0x00b8:
        r1 = move-exception;
        r3 = r10;
        r10 = r1;
        goto L_0x00c2;
    L_0x00bc:
        r10 = move-exception;
        goto L_0x00c1;
    L_0x00be:
        r12 = move-exception;
        r3 = r10;
        r10 = r12;
    L_0x00c1:
        r12 = r1;
    L_0x00c2:
        r11 = "UploadTask";
        r1 = "could not locate file for uploading:";
        r2 = r9.mUri;
        r2 = r2.toString();
        r2 = java.lang.String.valueOf(r2);
        r5 = r2.length();
        if (r5 == 0) goto L_0x00db;
    L_0x00d6:
        r1 = r1.concat(r2);
        goto L_0x00e1;
    L_0x00db:
        r2 = new java.lang.String;
        r2.<init>(r1);
        r1 = r2;
    L_0x00e1:
        android.util.Log.e(r11, r1);
        r9.zzbMj = r10;
    L_0x00e6:
        r10 = r3;
    L_0x00e7:
        r9.zzcpK = r10;
        r10 = new com.google.android.gms.internal.abt;
        r10.<init>(r12, r0);
        r9.zzcpL = r10;
        r10 = 1;
        r9.zzcpO = r10;
        r9.zzcpP = r13;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.storage.UploadTask.<init>(com.google.firebase.storage.StorageReference, com.google.firebase.storage.StorageMetadata, android.net.Uri, android.net.Uri):void");
    }

    UploadTask(StorageReference storageReference, StorageMetadata storageMetadata, InputStream inputStream) {
        zzbo.zzu(storageReference);
        zzbo.zzu(inputStream);
        this.zzcpK = -1;
        this.zzcoe = storageReference;
        this.zzcoK = storageMetadata;
        this.zzcpL = new abt(inputStream, 262144);
        this.zzcpO = false;
        this.mUri = null;
        this.zzcog = new abu(this.zzcoe.getStorage().getApp(), this.zzcoe.getStorage().getMaxUploadRetryTimeMillis());
    }

    UploadTask(StorageReference storageReference, StorageMetadata storageMetadata, byte[] bArr) {
        zzbo.zzu(storageReference);
        zzbo.zzu(bArr);
        this.zzcpK = (long) bArr.length;
        this.zzcoe = storageReference;
        this.zzcoK = storageMetadata;
        this.mUri = null;
        this.zzcpL = new abt(new ByteArrayInputStream(bArr), 262144);
        this.zzcpO = true;
        this.zzcog = new abu(this.zzcoe.getStorage().getApp(), this.zzcoe.getStorage().getMaxUploadRetryTimeMillis());
    }

    private final boolean zzLa() {
        if (zzKR() == 128) {
            return false;
        }
        if (Thread.interrupted()) {
            this.zzbMj = new InterruptedException();
            zzj(64, false);
            return false;
        } else if (zzKR() == 32) {
            zzj(256, false);
            return false;
        } else if (zzKR() == 8) {
            zzj(16, false);
            return false;
        } else if (!zzLb()) {
            return false;
        } else {
            if (this.zzcpP == null) {
                if (this.zzbMj == null) {
                    this.zzbMj = new IllegalStateException("Unable to obtain an upload URL.");
                }
                zzj(64, false);
                return false;
            } else if (this.zzbMj != null) {
                zzj(64, false);
                return false;
            } else {
                Object obj = (this.zzcpQ != null || this.mResultCode < 200 || this.mResultCode >= Strategy.TTL_SECONDS_DEFAULT) ? 1 : null;
                if (obj == null || zzaK(true)) {
                    return true;
                }
                if (zzLb()) {
                    zzj(64, false);
                }
                return false;
            }
        }
    }

    private final boolean zzLb() {
        if (!"final".equals(this.zzcpR)) {
            return true;
        }
        if (this.zzbMj == null) {
            this.zzbMj = new IOException("The server has terminated the upload session");
        }
        zzj(64, false);
        return false;
    }

    private final boolean zzaK(boolean z) {
        Exception e;
        String str;
        String str2;
        try {
            acf zzb = this.zzcoe.zzKO().zzb(this.zzcoe.zzKP(), this.zzcpP.toString());
            if ("final".equals(this.zzcpR)) {
                return false;
            }
            if (z) {
                if (!zzc(zzb)) {
                    return false;
                }
            } else if (!zzb(zzb)) {
                return false;
            }
            if ("final".equals(zzb.zzhO("X-Goog-Upload-Status"))) {
                e = new IOException("The server has terminated the upload session");
            } else {
                String zzhO = zzb.zzhO("X-Goog-Upload-Size-Received");
                long parseLong = !TextUtils.isEmpty(zzhO) ? Long.parseLong(zzhO) : 0;
                long j = this.zzcpM.get();
                if (j > parseLong) {
                    e = new IOException("Unexpected error. The server lost a chunk update.");
                } else {
                    if (j < parseLong) {
                        try {
                            long j2 = parseLong - j;
                            if (((long) this.zzcpL.zzcg((int) j2)) != j2) {
                                this.zzbMj = new IOException("Unexpected end of stream encountered.");
                                return false;
                            } else if (!this.zzcpM.compareAndSet(j, parseLong)) {
                                Log.e("UploadTask", "Somehow, the uploaded bytes changed during an uploaded.  This should nothappen");
                                this.zzbMj = new IllegalStateException("uploaded bytes changed unexpectedly.");
                                return false;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            str = "UploadTask";
                            str2 = "Unable to recover position in Stream during resumable upload";
                            Log.e(str, str2, e);
                            this.zzbMj = e;
                            return false;
                        }
                    }
                    return true;
                }
            }
            this.zzbMj = e;
            return false;
        } catch (RemoteException e3) {
            e = e3;
            str = "UploadTask";
            str2 = "Unable to recover status during resumable upload";
            Log.e(str, str2, e);
            this.zzbMj = e;
            return false;
        }
    }

    private final boolean zzb(acf acf) {
        acf.zze(abz.zzf(this.zzcoe.getStorage().getApp()), this.zzcoe.getStorage().getApp().getApplicationContext());
        return zzd(acf);
    }

    private final boolean zzc(acf acf) {
        this.zzcog.zza(acf, true);
        return zzd(acf);
    }

    private final boolean zzd(acf acf) {
        int resultCode = acf.getResultCode();
        if (abu.zzcj(resultCode)) {
            resultCode = -2;
        }
        this.mResultCode = resultCode;
        this.zzcpQ = acf.getException();
        this.zzcpR = acf.zzhO("X-Goog-Upload-Status");
        int i = this.mResultCode;
        Object obj = (i == StatusLine.HTTP_PERM_REDIRECT || (i >= 200 && i < Strategy.TTL_SECONDS_DEFAULT)) ? 1 : null;
        return obj != null && this.zzcpQ == null;
    }

    /* Access modifiers changed, original: final */
    public final StorageReference getStorage() {
        return this.zzcoe;
    }

    /* Access modifiers changed, original: final */
    public final long getTotalByteCount() {
        return this.zzcpK;
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002b  */
    public void onCanceled() {
        /*
        r3 = this;
        r0 = r3.zzcog;
        r0.cancel();
        r0 = r3.zzcpP;
        if (r0 == 0) goto L_0x0028;
    L_0x0009:
        r0 = r3.zzcoe;	 Catch:{ RemoteException -> 0x0020 }
        r0 = r0.zzKO();	 Catch:{ RemoteException -> 0x0020 }
        r1 = r3.zzcoe;	 Catch:{ RemoteException -> 0x0020 }
        r1 = r1.zzKP();	 Catch:{ RemoteException -> 0x0020 }
        r2 = r3.zzcpP;	 Catch:{ RemoteException -> 0x0020 }
        r2 = r2.toString();	 Catch:{ RemoteException -> 0x0020 }
        r0 = r0.zza(r1, r2);	 Catch:{ RemoteException -> 0x0020 }
        goto L_0x0029;
    L_0x0020:
        r0 = move-exception;
        r1 = "UploadTask";
        r2 = "Unable to create chunk upload request";
        android.util.Log.e(r1, r2, r0);
    L_0x0028:
        r0 = 0;
    L_0x0029:
        if (r0 == 0) goto L_0x0033;
    L_0x002b:
        r1 = new com.google.firebase.storage.zzac;
        r1.<init>(r3, r0);
        com.google.firebase.storage.zzt.zzs(r1);
    L_0x0033:
        r0 = com.google.android.gms.common.api.Status.zzaBq;
        r0 = com.google.firebase.storage.StorageException.fromErrorStatus(r0);
        r3.zzbMj = r0;
        super.onCanceled();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.storage.UploadTask.onCanceled():void");
    }

    /* Access modifiers changed, original: protected */
    public void resetState() {
        this.zzbMj = null;
        this.zzcpQ = null;
        this.mResultCode = 0;
        this.zzcpR = null;
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x00ab A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x019c  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x019c  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x00ab A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x00ab A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x019c  */
    public final void run() {
        /*
        r12 = this;
        r0 = r12.zzcog;
        r0.reset();
        r0 = 4;
        r1 = 0;
        r2 = r12.zzj(r0, r1);
        if (r2 != 0) goto L_0x0015;
    L_0x000d:
        r0 = "UploadTask";
        r1 = "The upload cannot continue as it is not in a valid state.";
        android.util.Log.d(r0, r1);
        return;
    L_0x0015:
        r2 = r12.zzcoe;
        r2 = r2.getParent();
        if (r2 != 0) goto L_0x0026;
    L_0x001d:
        r2 = new java.lang.IllegalArgumentException;
        r3 = "Cannot upload to getRoot. You should upload to a storage location such as .getReference('image.png').putFile...";
        r2.<init>(r3);
        r12.zzbMj = r2;
    L_0x0026:
        r2 = r12.zzbMj;
        if (r2 == 0) goto L_0x002b;
    L_0x002a:
        return;
    L_0x002b:
        r2 = r12.zzcpP;
        if (r2 != 0) goto L_0x00a4;
    L_0x002f:
        r2 = r12.zzcoK;
        r3 = 0;
        if (r2 == 0) goto L_0x003b;
    L_0x0034:
        r2 = r12.zzcoK;
        r2 = r2.getContentType();
        goto L_0x003c;
    L_0x003b:
        r2 = r3;
    L_0x003c:
        r4 = r12.mUri;
        if (r4 == 0) goto L_0x005e;
    L_0x0040:
        r4 = android.text.TextUtils.isEmpty(r2);
        if (r4 == 0) goto L_0x005e;
    L_0x0046:
        r2 = r12.zzcoe;
        r2 = r2.getStorage();
        r2 = r2.getApp();
        r2 = r2.getApplicationContext();
        r2 = r2.getContentResolver();
        r4 = r12.mUri;
        r2 = r2.getType(r4);
    L_0x005e:
        r4 = android.text.TextUtils.isEmpty(r2);
        if (r4 == 0) goto L_0x0066;
    L_0x0064:
        r2 = "application/octet-stream";
    L_0x0066:
        r4 = r12.zzcoe;	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
        r4 = r4.zzKO();	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
        r5 = r12.zzcoe;	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
        r5 = r5.zzKP();	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
        r6 = r12.zzcoK;	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
        if (r6 == 0) goto L_0x007c;
    L_0x0076:
        r3 = r12.zzcoK;	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
        r3 = r3.zzKN();	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
    L_0x007c:
        r2 = r4.zza(r5, r3, r2);	 Catch:{ RemoteException | JSONException -> 0x0099, RemoteException | JSONException -> 0x0099 }
        r3 = r12.zzc(r2);
        if (r3 == 0) goto L_0x00a7;
    L_0x0086:
        r3 = "X-Goog-Upload-URL";
        r2 = r2.zzhO(r3);
        r3 = android.text.TextUtils.isEmpty(r2);
        if (r3 != 0) goto L_0x00a7;
    L_0x0092:
        r2 = android.net.Uri.parse(r2);
        r12.zzcpP = r2;
        goto L_0x00a7;
    L_0x0099:
        r2 = move-exception;
        r3 = "UploadTask";
        r4 = "Unable to create a network request from metadata";
        android.util.Log.e(r3, r4, r2);
        r12.zzbMj = r2;
        goto L_0x00a7;
    L_0x00a4:
        r12.zzaK(r1);
    L_0x00a7:
        r2 = r12.zzLa();
    L_0x00ab:
        if (r2 == 0) goto L_0x01a1;
    L_0x00ad:
        r2 = r12.zzcpL;	 Catch:{ IOException -> 0x018c }
        r3 = r12.zzcpN;	 Catch:{ IOException -> 0x018c }
        r2.zzch(r3);	 Catch:{ IOException -> 0x018c }
        r2 = r12.zzcpN;	 Catch:{ IOException -> 0x018c }
        r3 = r12.zzcpL;	 Catch:{ IOException -> 0x018c }
        r3 = r3.available();	 Catch:{ IOException -> 0x018c }
        r2 = java.lang.Math.min(r2, r3);	 Catch:{ IOException -> 0x018c }
        r3 = r12.zzcoe;	 Catch:{ RemoteException -> 0x0183 }
        r4 = r3.zzKO();	 Catch:{ RemoteException -> 0x0183 }
        r3 = r12.zzcoe;	 Catch:{ RemoteException -> 0x0183 }
        r5 = r3.zzKP();	 Catch:{ RemoteException -> 0x0183 }
        r3 = r12.zzcpP;	 Catch:{ RemoteException -> 0x0183 }
        r6 = r3.toString();	 Catch:{ RemoteException -> 0x0183 }
        r3 = r12.zzcpL;	 Catch:{ RemoteException -> 0x0183 }
        r7 = r3.zzLe();	 Catch:{ RemoteException -> 0x0183 }
        r3 = r12.zzcpM;	 Catch:{ RemoteException -> 0x0183 }
        r8 = r3.get();	 Catch:{ RemoteException -> 0x0183 }
        r3 = r12.zzcpL;	 Catch:{ RemoteException -> 0x0183 }
        r11 = r3.isFinished();	 Catch:{ RemoteException -> 0x0183 }
        r10 = r2;
        r3 = r4.zza(r5, r6, r7, r8, r10, r11);	 Catch:{ RemoteException -> 0x0183 }
        r4 = r12.zzb(r3);	 Catch:{ IOException -> 0x018c }
        if (r4 != 0) goto L_0x010f;
    L_0x00ef:
        r2 = 262144; // 0x40000 float:3.67342E-40 double:1.295163E-318;
        r12.zzcpN = r2;	 Catch:{ IOException -> 0x018c }
        r2 = "UploadTask";
        r3 = r12.zzcpN;	 Catch:{ IOException -> 0x018c }
        r4 = 35;
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x018c }
        r5.<init>(r4);	 Catch:{ IOException -> 0x018c }
        r4 = "Resetting chunk size to ";
        r5.append(r4);	 Catch:{ IOException -> 0x018c }
        r5.append(r3);	 Catch:{ IOException -> 0x018c }
        r3 = r5.toString();	 Catch:{ IOException -> 0x018c }
    L_0x010a:
        android.util.Log.d(r2, r3);	 Catch:{ IOException -> 0x018c }
        goto L_0x0196;
    L_0x010f:
        r4 = r12.zzcpM;	 Catch:{ IOException -> 0x018c }
        r5 = (long) r2;	 Catch:{ IOException -> 0x018c }
        r4.getAndAdd(r5);	 Catch:{ IOException -> 0x018c }
        r4 = r12.zzcpL;	 Catch:{ IOException -> 0x018c }
        r4 = r4.isFinished();	 Catch:{ IOException -> 0x018c }
        if (r4 != 0) goto L_0x0146;
    L_0x011d:
        r3 = r12.zzcpL;	 Catch:{ IOException -> 0x018c }
        r3.zzcg(r2);	 Catch:{ IOException -> 0x018c }
        r2 = r12.zzcpN;	 Catch:{ IOException -> 0x018c }
        r3 = 33554432; // 0x2000000 float:9.403955E-38 double:1.6578092E-316;
        if (r2 >= r3) goto L_0x0196;
    L_0x0128:
        r2 = r12.zzcpN;	 Catch:{ IOException -> 0x018c }
        r2 = r2 << 1;
        r12.zzcpN = r2;	 Catch:{ IOException -> 0x018c }
        r2 = "UploadTask";
        r3 = r12.zzcpN;	 Catch:{ IOException -> 0x018c }
        r4 = 36;
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x018c }
        r5.<init>(r4);	 Catch:{ IOException -> 0x018c }
        r4 = "Increasing chunk size to ";
        r5.append(r4);	 Catch:{ IOException -> 0x018c }
        r5.append(r3);	 Catch:{ IOException -> 0x018c }
        r3 = r5.toString();	 Catch:{ IOException -> 0x018c }
        goto L_0x010a;
    L_0x0146:
        r2 = new com.google.firebase.storage.StorageMetadata$Builder;	 Catch:{ RemoteException | JSONException -> 0x0160, RemoteException | JSONException -> 0x0160 }
        r4 = r3.zzLn();	 Catch:{ RemoteException | JSONException -> 0x0160, RemoteException | JSONException -> 0x0160 }
        r5 = r12.zzcoe;	 Catch:{ RemoteException | JSONException -> 0x0160, RemoteException | JSONException -> 0x0160 }
        r2.<init>(r4, r5);	 Catch:{ RemoteException | JSONException -> 0x0160, RemoteException | JSONException -> 0x0160 }
        r2 = r2.build();	 Catch:{ RemoteException | JSONException -> 0x0160, RemoteException | JSONException -> 0x0160 }
        r12.zzcoK = r2;	 Catch:{ RemoteException | JSONException -> 0x0160, RemoteException | JSONException -> 0x0160 }
        r12.zzj(r0, r1);	 Catch:{ IOException -> 0x018c }
        r2 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r12.zzj(r2, r1);	 Catch:{ IOException -> 0x018c }
        goto L_0x0196;
    L_0x0160:
        r2 = move-exception;
        r4 = "UploadTask";
        r5 = "Unable to parse resulting metadata from upload:";
        r3 = r3.zzLi();	 Catch:{ IOException -> 0x018c }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x018c }
        r6 = r3.length();	 Catch:{ IOException -> 0x018c }
        if (r6 == 0) goto L_0x0178;
    L_0x0173:
        r3 = r5.concat(r3);	 Catch:{ IOException -> 0x018c }
        goto L_0x017d;
    L_0x0178:
        r3 = new java.lang.String;	 Catch:{ IOException -> 0x018c }
        r3.<init>(r5);	 Catch:{ IOException -> 0x018c }
    L_0x017d:
        android.util.Log.e(r4, r3, r2);	 Catch:{ IOException -> 0x018c }
    L_0x0180:
        r12.zzbMj = r2;	 Catch:{ IOException -> 0x018c }
        goto L_0x0196;
    L_0x0183:
        r2 = move-exception;
        r3 = "UploadTask";
        r4 = "Unable to create chunk upload request";
        android.util.Log.e(r3, r4, r2);	 Catch:{ IOException -> 0x018c }
        goto L_0x0180;
    L_0x018c:
        r2 = move-exception;
        r3 = "UploadTask";
        r4 = "Unable to read bytes for uploading";
        android.util.Log.e(r3, r4, r2);
        r12.zzbMj = r2;
    L_0x0196:
        r2 = r12.zzLa();
        if (r2 == 0) goto L_0x00ab;
    L_0x019c:
        r12.zzj(r0, r1);
        goto L_0x00ab;
    L_0x01a1:
        r0 = r12.zzcpO;
        if (r0 == 0) goto L_0x01bb;
    L_0x01a5:
        r0 = r12.zzKR();
        r1 = 16;
        if (r0 == r1) goto L_0x01bb;
    L_0x01ad:
        r0 = r12.zzcpL;	 Catch:{ IOException -> 0x01b3 }
        r0.close();	 Catch:{ IOException -> 0x01b3 }
        return;
    L_0x01b3:
        r0 = move-exception;
        r1 = "UploadTask";
        r2 = "Unable to close stream.";
        android.util.Log.e(r1, r2, r0);
    L_0x01bb:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.storage.UploadTask.run():void");
    }

    /* Access modifiers changed, original: protected */
    public void schedule() {
        zzt.zzt(zzEf());
    }

    /* Access modifiers changed, original: final|synthetic */
    @NonNull
    public final /* synthetic */ ProvideError zzKM() {
        return new TaskSnapshot(StorageException.fromExceptionAndHttpCode(this.zzbMj != null ? this.zzbMj : this.zzcpQ, this.mResultCode), this.zzcpM.get(), this.zzcpP, this.zzcoK);
    }
}
