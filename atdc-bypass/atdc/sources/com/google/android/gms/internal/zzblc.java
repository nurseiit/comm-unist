package com.google.android.gms.internal;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;

public final class zzblc {
    private DriveId zzaME;
    private MetadataChangeSet zzaNA;
    private Integer zzaNB;
    private final int zzaNC = 0;
    private String zzaoy;

    public zzblc(int i) {
    }

    public final IntentSender build(GoogleApiClient googleApiClient) {
        zzbo.zzb(this.zzaNA, (Object) "Must provide initial metadata to CreateFileActivityBuilder.");
        zzbo.zza(googleApiClient.isConnected(), (Object) "Client must be connected");
        zzbmh zzbmh = (zzbmh) googleApiClient.zza(Drive.zzajR);
        this.zzaNA.zzsW().setContext(zzbmh.getContext());
        try {
            return ((zzbom) zzbmh.zzrf()).zza(new zzbld(this.zzaNA.zzsW(), this.zzaNB == null ? 0 : this.zzaNB.intValue(), this.zzaoy, this.zzaME, Integer.valueOf(0)));
        } catch (RemoteException e) {
            throw new RuntimeException("Unable to connect Drive Play Service", e);
        }
    }

    public final void zza(DriveId driveId) {
        this.zzaME = (DriveId) zzbo.zzu(driveId);
    }

    public final void zza(MetadataChangeSet metadataChangeSet) {
        this.zzaNA = (MetadataChangeSet) zzbo.zzu(metadataChangeSet);
    }

    public final void zzaM(int i) {
        this.zzaNB = Integer.valueOf(i);
    }

    public final void zzcQ(String str) {
        this.zzaoy = (String) zzbo.zzu(str);
    }
}
