package com.google.firebase.storage;

import android.net.Uri;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.abv;
import com.google.android.gms.internal.ace;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.StreamDownloadTask.StreamProcessor;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

public class StorageReference {
    private final Uri zzcoM;
    private final FirebaseStorage zzcoN;

    StorageReference(@NonNull Uri uri, @NonNull FirebaseStorage firebaseStorage) {
        boolean z = false;
        zzbo.zzb(uri != null, (Object) "storageUri cannot be null");
        if (firebaseStorage != null) {
            z = true;
        }
        zzbo.zzb(z, (Object) "FirebaseApp cannot be null");
        this.zzcoM = uri;
        this.zzcoN = firebaseStorage;
    }

    @NonNull
    public StorageReference child(@NonNull String str) {
        zzbo.zzb(TextUtils.isEmpty(str) ^ 1, (Object) "childName cannot be null or empty");
        str = abv.zzhK(str);
        try {
            return new StorageReference(this.zzcoM.buildUpon().appendEncodedPath(abv.zzhI(str)).build(), this.zzcoN);
        } catch (UnsupportedEncodingException e) {
            String str2 = "StorageReference";
            String str3 = "Unable to create a valid default Uri. ";
            str = String.valueOf(str);
            Log.e(str2, str.length() != 0 ? str3.concat(str) : new String(str3), e);
            throw new IllegalArgumentException("childName");
        }
    }

    public Task<Void> delete() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zzt.zzs(new zza(this, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    public boolean equals(Object obj) {
        return !(obj instanceof StorageReference) ? false : ((StorageReference) obj).toString().equals(toString());
    }

    @NonNull
    public List<FileDownloadTask> getActiveDownloadTasks() {
        return zzs.zzKV().zzb(this);
    }

    @NonNull
    public List<UploadTask> getActiveUploadTasks() {
        return zzs.zzKV().zza(this);
    }

    @NonNull
    public String getBucket() {
        return this.zzcoM.getAuthority();
    }

    @NonNull
    public Task<byte[]> getBytes(long j) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        StreamDownloadTask streamDownloadTask = new StreamDownloadTask(this);
        ((StorageTask) streamDownloadTask.zza(new zzh(this, j, taskCompletionSource)).addOnSuccessListener(new zzg(this, taskCompletionSource))).addOnFailureListener(new zzf(this, taskCompletionSource));
        streamDownloadTask.zzKQ();
        return taskCompletionSource.getTask();
    }

    @NonNull
    public Task<Uri> getDownloadUrl() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Task metadata = getMetadata();
        metadata.addOnSuccessListener(new zzd(this, taskCompletionSource));
        metadata.addOnFailureListener(new zze(this, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    @NonNull
    public FileDownloadTask getFile(@NonNull Uri uri) {
        FileDownloadTask fileDownloadTask = new FileDownloadTask(this, uri);
        fileDownloadTask.zzKQ();
        return fileDownloadTask;
    }

    @NonNull
    public FileDownloadTask getFile(@NonNull File file) {
        return getFile(Uri.fromFile(file));
    }

    @NonNull
    public Task<StorageMetadata> getMetadata() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zzt.zzs(new zzb(this, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    @NonNull
    public String getName() {
        String path = this.zzcoM.getPath();
        int lastIndexOf = path.lastIndexOf(47);
        return lastIndexOf != -1 ? path.substring(lastIndexOf + 1) : path;
    }

    @Nullable
    public StorageReference getParent() {
        String path = this.zzcoM.getPath();
        if (path == null || path.equals("/")) {
            return null;
        }
        int lastIndexOf = path.lastIndexOf(47);
        return new StorageReference(this.zzcoM.buildUpon().path(lastIndexOf == -1 ? "/" : path.substring(0, lastIndexOf)).build(), this.zzcoN);
    }

    @NonNull
    public String getPath() {
        return this.zzcoM.getPath();
    }

    @NonNull
    public StorageReference getRoot() {
        return new StorageReference(this.zzcoM.buildUpon().path("").build(), this.zzcoN);
    }

    @NonNull
    public FirebaseStorage getStorage() {
        return this.zzcoN;
    }

    @NonNull
    public StreamDownloadTask getStream() {
        StreamDownloadTask streamDownloadTask = new StreamDownloadTask(this);
        streamDownloadTask.zzKQ();
        return streamDownloadTask;
    }

    @NonNull
    public StreamDownloadTask getStream(@NonNull StreamProcessor streamProcessor) {
        StreamDownloadTask streamDownloadTask = new StreamDownloadTask(this);
        streamDownloadTask.zza(streamProcessor);
        streamDownloadTask.zzKQ();
        return streamDownloadTask;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @NonNull
    public UploadTask putBytes(@NonNull byte[] bArr) {
        zzbo.zzb(bArr != null, (Object) "bytes cannot be null");
        UploadTask uploadTask = new UploadTask(this, null, bArr);
        uploadTask.zzKQ();
        return uploadTask;
    }

    @NonNull
    public UploadTask putBytes(@NonNull byte[] bArr, @NonNull StorageMetadata storageMetadata) {
        boolean z = false;
        zzbo.zzb(bArr != null, (Object) "bytes cannot be null");
        if (storageMetadata != null) {
            z = true;
        }
        zzbo.zzb(z, (Object) "metadata cannot be null");
        UploadTask uploadTask = new UploadTask(this, storageMetadata, bArr);
        uploadTask.zzKQ();
        return uploadTask;
    }

    @NonNull
    public UploadTask putFile(@NonNull Uri uri) {
        zzbo.zzb(uri != null, (Object) "uri cannot be null");
        UploadTask uploadTask = new UploadTask(this, null, uri, null);
        uploadTask.zzKQ();
        return uploadTask;
    }

    @NonNull
    public UploadTask putFile(@NonNull Uri uri, @NonNull StorageMetadata storageMetadata) {
        boolean z = false;
        zzbo.zzb(uri != null, (Object) "uri cannot be null");
        if (storageMetadata != null) {
            z = true;
        }
        zzbo.zzb(z, (Object) "metadata cannot be null");
        UploadTask uploadTask = new UploadTask(this, storageMetadata, uri, null);
        uploadTask.zzKQ();
        return uploadTask;
    }

    @NonNull
    public UploadTask putFile(@NonNull Uri uri, @Nullable StorageMetadata storageMetadata, @Nullable Uri uri2) {
        boolean z = false;
        zzbo.zzb(uri != null, (Object) "uri cannot be null");
        if (storageMetadata != null) {
            z = true;
        }
        zzbo.zzb(z, (Object) "metadata cannot be null");
        UploadTask uploadTask = new UploadTask(this, storageMetadata, uri, uri2);
        uploadTask.zzKQ();
        return uploadTask;
    }

    @NonNull
    public UploadTask putStream(@NonNull InputStream inputStream) {
        zzbo.zzb(inputStream != null, (Object) "stream cannot be null");
        UploadTask uploadTask = new UploadTask(this, null, inputStream);
        uploadTask.zzKQ();
        return uploadTask;
    }

    @NonNull
    public UploadTask putStream(@NonNull InputStream inputStream, @NonNull StorageMetadata storageMetadata) {
        boolean z = false;
        zzbo.zzb(inputStream != null, (Object) "stream cannot be null");
        if (storageMetadata != null) {
            z = true;
        }
        zzbo.zzb(z, (Object) "metadata cannot be null");
        UploadTask uploadTask = new UploadTask(this, storageMetadata, inputStream);
        uploadTask.zzKQ();
        return uploadTask;
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzcoM.getAuthority());
        String valueOf2 = String.valueOf(this.zzcoM.getEncodedPath());
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 5) + String.valueOf(valueOf2).length());
        stringBuilder.append("gs://");
        stringBuilder.append(valueOf);
        stringBuilder.append(valueOf2);
        return stringBuilder.toString();
    }

    @NonNull
    public Task<StorageMetadata> updateMetadata(@NonNull StorageMetadata storageMetadata) {
        zzbo.zzu(storageMetadata);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zzt.zzs(new zzab(this, taskCompletionSource, storageMetadata));
        return taskCompletionSource.getTask();
    }

    /* Access modifiers changed, original: final */
    @NonNull
    public final ace zzKO() throws RemoteException {
        return ace.zzg(getStorage().getApp());
    }

    /* Access modifiers changed, original: final */
    @NonNull
    public final Uri zzKP() {
        return this.zzcoM;
    }
}
