package com.google.firebase.storage;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.abu;
import com.google.android.gms.internal.acf;
import com.google.android.gms.nearby.messages.Strategy;
import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.storage.StorageTask.ProvideError;
import com.google.firebase.storage.StorageTask.SnapshotBase;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import okhttp3.internal.http.StatusLine;

public class StreamDownloadTask extends StorageTask<TaskSnapshot> {
    private volatile int mResultCode = 0;
    private long zzaNq = -1;
    private volatile Exception zzbMj = null;
    private InputStream zzbSo;
    private StorageReference zzcoe;
    private abu zzcog;
    private long zzcoi;
    private String zzcoj;
    private StreamProcessor zzcpp;
    private long zzcpq;
    private acf zzcpr;

    public interface StreamProcessor {
        void doInBackground(TaskSnapshot taskSnapshot, InputStream inputStream) throws IOException;
    }

    static class zza extends InputStream {
        @Nullable
        private StreamDownloadTask zzcpt;
        @Nullable
        private InputStream zzcpu;
        private Callable<InputStream> zzcpv;
        private IOException zzcpw;
        private int zzcpx;
        private int zzcpy;
        private boolean zzcpz;

        zza(@NonNull Callable<InputStream> callable, @Nullable StreamDownloadTask streamDownloadTask) {
            this.zzcpt = streamDownloadTask;
            this.zzcpv = callable;
        }

        private final void zzKX() throws IOException {
            if (this.zzcpt != null && this.zzcpt.zzKR() == 32) {
                throw StorageException.zzcos;
            }
        }

        private final boolean zzKY() throws IOException {
            zzKX();
            if (this.zzcpw != null) {
                try {
                    if (this.zzcpu != null) {
                        this.zzcpu.close();
                    }
                } catch (IOException unused) {
                }
                this.zzcpu = null;
                if (this.zzcpy == this.zzcpx) {
                    Log.i("StreamDownloadTask", "Encountered exception during stream operation. Aborting.", this.zzcpw);
                    return false;
                }
                int i = this.zzcpx;
                StringBuilder stringBuilder = new StringBuilder(70);
                stringBuilder.append("Encountered exception during stream operation. Retrying at ");
                stringBuilder.append(i);
                Log.i("StreamDownloadTask", stringBuilder.toString(), this.zzcpw);
                this.zzcpy = this.zzcpx;
                this.zzcpw = null;
            }
            if (this.zzcpz) {
                throw new IOException("Can't perform operation on closed stream");
            }
            if (this.zzcpu == null) {
                try {
                    this.zzcpu = (InputStream) this.zzcpv.call();
                } catch (Exception e) {
                    if (e instanceof IOException) {
                        throw ((IOException) e);
                    }
                    throw new IOException("Unable to open stream", e);
                }
            }
            return true;
        }

        private final void zzaN(long j) {
            if (this.zzcpt != null) {
                this.zzcpt.zzaN(j);
            }
            this.zzcpx = (int) (((long) this.zzcpx) + j);
        }

        public final int available() throws IOException {
            while (zzKY()) {
                try {
                    return this.zzcpu.available();
                } catch (IOException e) {
                    this.zzcpw = e;
                }
            }
            throw this.zzcpw;
        }

        public final void close() throws IOException {
            if (this.zzcpu != null) {
                this.zzcpu.close();
            }
            this.zzcpz = true;
            if (!(this.zzcpt == null || this.zzcpt.zzcpr == null)) {
                this.zzcpt.zzcpr.zzLf();
                this.zzcpt.zzcpr = null;
            }
            zzKX();
        }

        public final void mark(int i) {
        }

        public final boolean markSupported() {
            return false;
        }

        public final int read() throws IOException {
            while (zzKY()) {
                try {
                    int read = this.zzcpu.read();
                    if (read != -1) {
                        zzaN(1);
                    }
                    return read;
                } catch (IOException e) {
                    this.zzcpw = e;
                }
            }
            throw this.zzcpw;
        }

        public final int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
            int i3 = 0;
            while (zzKY()) {
                int read;
                while (((long) i2) > 262144) {
                    try {
                        read = this.zzcpu.read(bArr, i, 262144);
                        if (read == -1) {
                            return i3 == 0 ? -1 : i3;
                        } else {
                            i3 += read;
                            i += read;
                            i2 -= read;
                            zzaN((long) read);
                            zzKX();
                        }
                    } catch (IOException e) {
                        this.zzcpw = e;
                    }
                }
                if (i2 > 0) {
                    read = this.zzcpu.read(bArr, i, i2);
                    if (read == -1) {
                        return i3 == 0 ? -1 : i3;
                    } else {
                        i += read;
                        i3 += read;
                        i2 -= read;
                        zzaN((long) read);
                    }
                }
                if (i2 == 0) {
                    return i3;
                }
            }
            throw this.zzcpw;
        }

        public final long skip(long j) throws IOException {
            IOException e;
            int i = 0;
            while (zzKY()) {
                long skip;
                long j2;
                while (j > 262144) {
                    try {
                        skip = this.zzcpu.skip(262144);
                        if (skip < 0) {
                            return i == 0 ? -1 : (long) i;
                        } else {
                            i = (int) (((long) i) + skip);
                            j2 = j - skip;
                            try {
                                zzaN(skip);
                                zzKX();
                                j = j2;
                            } catch (IOException e2) {
                                e = e2;
                                j = j2;
                                this.zzcpw = e;
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        this.zzcpw = e;
                    }
                }
                if (j > 0) {
                    skip = this.zzcpu.skip(j);
                    if (skip < 0) {
                        return i == 0 ? -1 : (long) i;
                    } else {
                        i = (int) (((long) i) + skip);
                        j2 = j - skip;
                        zzaN(skip);
                        j = j2;
                    }
                }
                if (j == 0) {
                    return (long) i;
                }
            }
            throw this.zzcpw;
        }
    }

    public class TaskSnapshot extends SnapshotBase {
        private final long zzcoi;

        TaskSnapshot(Exception exception, long j) {
            super(exception);
            this.zzcoi = j;
        }

        public long getBytesTransferred() {
            return this.zzcoi;
        }

        public InputStream getStream() {
            return StreamDownloadTask.this.zzbSo;
        }

        public long getTotalByteCount() {
            return StreamDownloadTask.this.getTotalBytes();
        }
    }

    StreamDownloadTask(@NonNull StorageReference storageReference) {
        this.zzcoe = storageReference;
        this.zzcog = new abu(this.zzcoe.getStorage().getApp(), this.zzcoe.getStorage().getMaxDownloadRetryTimeMillis());
    }

    private final InputStream zzKW() throws Exception {
        this.zzcog.reset();
        if (this.zzcpr != null) {
            this.zzcpr.zzLf();
        }
        try {
            this.zzcpr = this.zzcoe.zzKO().zza(this.zzcoe.zzKP(), this.zzcoi);
            boolean z = false;
            this.zzcog.zza(this.zzcpr, false);
            this.mResultCode = this.zzcpr.getResultCode();
            this.zzbMj = this.zzcpr.getException() != null ? this.zzcpr.getException() : this.zzbMj;
            int i = this.mResultCode;
            Object obj = (i == StatusLine.HTTP_PERM_REDIRECT || (i >= 200 && i < Strategy.TTL_SECONDS_DEFAULT)) ? 1 : null;
            if (obj != null && this.zzbMj == null && zzKR() == 4) {
                z = true;
            }
            if (z) {
                String zzhO = this.zzcpr.zzhO("ETag");
                if (TextUtils.isEmpty(zzhO) || this.zzcoj == null || this.zzcoj.equals(zzhO)) {
                    this.zzcoj = zzhO;
                    if (this.zzaNq == -1) {
                        this.zzaNq = (long) this.zzcpr.zzLl();
                    }
                    return this.zzcpr.getStream();
                }
                this.mResultCode = WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR;
                throw new IOException("The ETag on the server changed.");
            }
            throw new IOException("Could not open resulting stream.");
        } catch (RemoteException e) {
            Log.e("StreamDownloadTask", "Unable to create firebase storage network request.", e);
            throw e;
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

    /* Access modifiers changed, original: protected */
    public void onProgress() {
        this.zzcpq = this.zzcoi;
    }

    public boolean pause() {
        throw new UnsupportedOperationException("this operation is not supported on StreamDownloadTask.");
    }

    public boolean resume() {
        throw new UnsupportedOperationException("this operation is not supported on StreamDownloadTask.");
    }

    /* Access modifiers changed, original: final */
    public final void run() {
        int i = 64;
        if (this.zzbMj != null) {
            zzj(64, false);
        } else if (zzj(4, false)) {
            zza zza = new zza(new zzv(this), this);
            this.zzbSo = new BufferedInputStream(zza);
            try {
                zza.zzKY();
                if (this.zzcpp != null) {
                    try {
                        this.zzcpp.doInBackground((TaskSnapshot) zzKS(), this.zzbSo);
                    } catch (Exception e) {
                        Log.w("StreamDownloadTask", "Exception occurred calling doInBackground.", e);
                        this.zzbMj = e;
                    }
                }
            } catch (IOException e2) {
                Log.d("StreamDownloadTask", "Initial opening of Stream failed", e2);
                this.zzbMj = e2;
            }
            if (this.zzbSo == null) {
                this.zzcpr.zzLf();
                this.zzcpr = null;
            }
            Object obj = (this.zzbMj == null && zzKR() == 4) ? 1 : null;
            if (obj != null) {
                zzj(4, false);
                zzj(128, false);
                return;
            }
            if (zzKR() == 32) {
                i = 256;
            }
            if (!zzj(i, false)) {
                i = zzKR();
                StringBuilder stringBuilder = new StringBuilder(62);
                stringBuilder.append("Unable to change download task to final state from ");
                stringBuilder.append(i);
                Log.w("StreamDownloadTask", stringBuilder.toString());
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void schedule() {
        zzt.zzu(zzEf());
    }

    /* Access modifiers changed, original: final|synthetic */
    @NonNull
    public final /* synthetic */ ProvideError zzKM() {
        return new TaskSnapshot(StorageException.fromExceptionAndHttpCode(this.zzbMj, this.mResultCode), this.zzcpq);
    }

    /* Access modifiers changed, original: final */
    public final StreamDownloadTask zza(@NonNull StreamProcessor streamProcessor) {
        zzbo.zzu(streamProcessor);
        zzbo.zzae(this.zzcpp == null);
        this.zzcpp = streamProcessor;
        return this;
    }

    /* Access modifiers changed, original: final */
    public final void zzaN(long j) {
        this.zzcoi += j;
        if (this.zzcpq + 262144 <= this.zzcoi) {
            if (zzKR() == 4) {
                zzj(4, false);
                return;
            }
            this.zzcpq = this.zzcoi;
        }
    }
}
