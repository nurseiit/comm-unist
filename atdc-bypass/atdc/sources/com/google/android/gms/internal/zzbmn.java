package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zzn;
import com.google.android.gms.drive.DriveApi.DriveContentsResult;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.zzc;
import com.google.android.gms.drive.zzp;
import com.google.android.gms.drive.zzr;
import java.io.InputStream;
import java.io.OutputStream;

public final class zzbmn implements DriveContents {
    private boolean mClosed = false;
    private final zzc zzaOg;
    private boolean zzaOh = false;
    private boolean zzaOi = false;

    public zzbmn(zzc zzc) {
        this.zzaOg = (zzc) zzbo.zzu(zzc);
    }

    private final PendingResult<Status> zza(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, zzp zzp) {
        if (zzp == null) {
            zzp = (zzp) new zzr().build();
        }
        if (this.zzaOg.getMode() == DriveFile.MODE_READ_ONLY) {
            throw new IllegalStateException("Cannot commit contents opened with MODE_READ_ONLY");
        }
        Object obj = 1;
        if (zzp.zzsR() != 1) {
            obj = null;
        }
        if (obj == null || this.zzaOg.zzsK()) {
            zzp.zze(googleApiClient);
            if (this.mClosed) {
                throw new IllegalStateException("DriveContents already closed.");
            } else if (getDriveId() == null) {
                throw new IllegalStateException("Only DriveContents obtained through DriveFile.open can be committed.");
            } else {
                if (metadataChangeSet == null) {
                    metadataChangeSet = MetadataChangeSet.zzaMz;
                }
                zzsN();
                return googleApiClient.zze(new zzbmp(this, googleApiClient, metadataChangeSet, zzp));
            }
        }
        throw new IllegalStateException("DriveContents must be valid for conflict detection.");
    }

    public final PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        return zza(googleApiClient, metadataChangeSet, null);
    }

    public final PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, ExecutionOptions executionOptions) {
        zzp zzp;
        if (executionOptions == null) {
            zzp = null;
        } else {
            zzr zzr = new zzr();
            if (executionOptions != null) {
                zzr.setConflictStrategy(executionOptions.zzsR());
                zzr.setNotifyOnCompletion(executionOptions.zzsQ());
                String zzsP = executionOptions.zzsP();
                if (zzsP != null) {
                    zzr.setTrackingTag(zzsP);
                }
            }
            zzp = (zzp) zzr.build();
        }
        return zza(googleApiClient, metadataChangeSet, zzp);
    }

    public final void discard(GoogleApiClient googleApiClient) {
        if (this.mClosed) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        zzsN();
        ((zzbmr) googleApiClient.zze(new zzbmr(this, googleApiClient))).setResultCallback(new zzbmq(this));
    }

    public final DriveId getDriveId() {
        return this.zzaOg.getDriveId();
    }

    public final InputStream getInputStream() {
        if (this.mClosed) {
            throw new IllegalStateException("Contents have been closed, cannot access the input stream.");
        } else if (this.zzaOg.getMode() != DriveFile.MODE_READ_ONLY) {
            throw new IllegalStateException("getInputStream() can only be used with contents opened with MODE_READ_ONLY.");
        } else if (this.zzaOh) {
            throw new IllegalStateException("getInputStream() can only be called once per Contents instance.");
        } else {
            this.zzaOh = true;
            return this.zzaOg.getInputStream();
        }
    }

    public final int getMode() {
        return this.zzaOg.getMode();
    }

    public final OutputStream getOutputStream() {
        if (this.mClosed) {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        } else if (this.zzaOg.getMode() != DriveFile.MODE_WRITE_ONLY) {
            throw new IllegalStateException("getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY.");
        } else if (this.zzaOi) {
            throw new IllegalStateException("getOutputStream() can only be called once per Contents instance.");
        } else {
            this.zzaOi = true;
            return this.zzaOg.getOutputStream();
        }
    }

    public final ParcelFileDescriptor getParcelFileDescriptor() {
        if (!this.mClosed) {
            return this.zzaOg.getParcelFileDescriptor();
        }
        throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
    }

    public final PendingResult<DriveContentsResult> reopenForWrite(GoogleApiClient googleApiClient) {
        if (this.mClosed) {
            throw new IllegalStateException("DriveContents already closed.");
        } else if (this.zzaOg.getMode() != DriveFile.MODE_READ_ONLY) {
            throw new IllegalStateException("reopenForWrite can only be used with DriveContents opened with MODE_READ_ONLY.");
        } else {
            zzsN();
            return googleApiClient.zzd(new zzbmo(this, googleApiClient));
        }
    }

    public final zzc zzsM() {
        return this.zzaOg;
    }

    public final void zzsN() {
        zzn.zza(this.zzaOg.getParcelFileDescriptor());
        this.mClosed = true;
    }

    public final boolean zzsO() {
        return this.mClosed;
    }
}
