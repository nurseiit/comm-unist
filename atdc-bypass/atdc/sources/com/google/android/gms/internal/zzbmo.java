package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.DriveFile;

final class zzbmo extends zzblx {
    private /* synthetic */ zzbmn zzaOj;

    zzbmo(zzbmn zzbmn, GoogleApiClient googleApiClient) {
        this.zzaOj = zzbmn;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbom) ((zzbmh) zzb).zzrf()).zza(new zzbqb(this.zzaOj.getDriveId(), DriveFile.MODE_WRITE_ONLY, this.zzaOj.zzaOg.getRequestId()), new zzbqd(this, null));
    }
}
