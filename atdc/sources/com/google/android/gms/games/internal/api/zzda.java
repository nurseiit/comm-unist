package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.internal.zzbaz;

final class zzda extends zzdp {
    private /* synthetic */ ParticipantResult[] zzbbA;
    private /* synthetic */ String zzbbw;
    private /* synthetic */ byte[] zzbby;

    zzda(zzcu zzcu, GoogleApiClient googleApiClient, String str, byte[] bArr, ParticipantResult[] participantResultArr) {
        this.zzbbw = str;
        this.zzbby = bArr;
        this.zzbbA = participantResultArr;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbw, this.zzbby, this.zzbbA);
    }
}
