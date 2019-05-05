package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.internal.zzbaz;

final class zzcz extends zzdp {
    private /* synthetic */ ParticipantResult[] zzbbA;
    private /* synthetic */ String zzbbw;
    private /* synthetic */ byte[] zzbby;
    private /* synthetic */ String zzbbz;

    zzcz(zzcu zzcu, GoogleApiClient googleApiClient, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) {
        this.zzbbw = str;
        this.zzbby = bArr;
        this.zzbbz = str2;
        this.zzbbA = participantResultArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbw, this.zzbby, this.zzbbz, this.zzbbA);
    }
}
