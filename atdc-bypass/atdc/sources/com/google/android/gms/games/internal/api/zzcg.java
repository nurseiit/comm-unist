package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.internal.zzbaz;

final class zzcg extends zzcn {
    private /* synthetic */ SnapshotMetadataChange zzbbq;
    private /* synthetic */ String zzbbs;
    private /* synthetic */ String zzbbt;
    private /* synthetic */ SnapshotContents zzbbu;

    zzcg(zzcb zzcb, GoogleApiClient googleApiClient, String str, String str2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents) {
        this.zzbbs = str;
        this.zzbbt = str2;
        this.zzbbq = snapshotMetadataChange;
        this.zzbbu = snapshotContents;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbs, this.zzbbt, this.zzbbq, this.zzbbu);
    }
}
