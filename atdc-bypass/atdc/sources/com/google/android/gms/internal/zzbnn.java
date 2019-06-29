package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.DriveResource.MetadataResult;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.zzj;
import java.util.ArrayList;
import java.util.Set;

public class zzbnn implements DriveResource {
    protected final DriveId zzaLV;

    public zzbnn(DriveId driveId) {
        this.zzaLV = driveId;
    }

    public PendingResult<Status> addChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener) {
        return ((zzbmh) googleApiClient.zza(Drive.zzajR)).zza(googleApiClient, this.zzaLV, changeListener);
    }

    public PendingResult<Status> addChangeSubscription(GoogleApiClient googleApiClient) {
        return ((zzbmh) googleApiClient.zza(Drive.zzajR)).zza(googleApiClient, this.zzaLV);
    }

    public PendingResult<Status> delete(GoogleApiClient googleApiClient) {
        return googleApiClient.zze(new zzbns(this, googleApiClient));
    }

    public DriveId getDriveId() {
        return this.zzaLV;
    }

    public PendingResult<MetadataResult> getMetadata(GoogleApiClient googleApiClient) {
        return googleApiClient.zzd(new zzbno(this, googleApiClient, false));
    }

    public PendingResult<MetadataBufferResult> listParents(GoogleApiClient googleApiClient) {
        return googleApiClient.zzd(new zzbnp(this, googleApiClient));
    }

    public PendingResult<Status> removeChangeListener(GoogleApiClient googleApiClient, ChangeListener changeListener) {
        return ((zzbmh) googleApiClient.zza(Drive.zzajR)).zzb(googleApiClient, this.zzaLV, changeListener);
    }

    public PendingResult<Status> removeChangeSubscription(GoogleApiClient googleApiClient) {
        zzbmh zzbmh = (zzbmh) googleApiClient.zza(Drive.zzajR);
        DriveId driveId = this.zzaLV;
        zzbo.zzaf(zzj.zza(1, driveId));
        zzbo.zza(zzbmh.isConnected(), (Object) "Client must be connected");
        return googleApiClient.zze(new zzbml(zzbmh, googleApiClient, driveId, 1));
    }

    public PendingResult<Status> setParents(GoogleApiClient googleApiClient, Set<DriveId> set) {
        if (set != null) {
            return googleApiClient.zze(new zzbnq(this, googleApiClient, new ArrayList(set)));
        }
        throw new IllegalArgumentException("ParentIds must be provided.");
    }

    public PendingResult<Status> trash(GoogleApiClient googleApiClient) {
        return googleApiClient.zze(new zzbnt(this, googleApiClient));
    }

    public PendingResult<Status> untrash(GoogleApiClient googleApiClient) {
        return googleApiClient.zze(new zzbnu(this, googleApiClient));
    }

    public PendingResult<MetadataResult> updateMetadata(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet != null) {
            return googleApiClient.zze(new zzbnr(this, googleApiClient, metadataChangeSet));
        }
        throw new IllegalArgumentException("ChangeSet must be provided.");
    }
}
