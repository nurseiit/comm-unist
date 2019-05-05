package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.internal.zzbaz;

final class zzce extends zzch {
    private /* synthetic */ Snapshot zzbbp;
    private /* synthetic */ SnapshotMetadataChange zzbbq;

    zzce(zzcb zzcb, GoogleApiClient googleApiClient, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange) {
        this.zzbbp = snapshot;
        this.zzbbq = snapshotMetadataChange;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbp, this.zzbbq);
    }
}
