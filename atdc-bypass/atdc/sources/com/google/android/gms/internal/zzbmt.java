package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzap;
import com.google.android.gms.drive.DriveFile.DownloadProgressListener;

final class zzbmt extends zzblx {
    private /* synthetic */ int zzaNL;
    private /* synthetic */ DownloadProgressListener zzaOm;
    private /* synthetic */ zzbms zzaOn;

    zzbmt(zzbms zzbms, GoogleApiClient googleApiClient, int i, DownloadProgressListener downloadProgressListener) {
        this.zzaOn = zzbms;
        this.zzaNL = i;
        this.zzaOm = downloadProgressListener;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        zza(zzap.zzH(((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbqb(this.zzaOn.getDriveId(), this.zzaNL, 0), new zzbqd(this, this.zzaOm)).zzaOG));
    }
}
