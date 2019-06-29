package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.internal.zzbaz;

final class zzal extends zzar {
    private /* synthetic */ int zzbaZ;
    private /* synthetic */ LeaderboardScoreBuffer zzbba;
    private /* synthetic */ int zzbbb;

    zzal(zzaf zzaf, GoogleApiClient googleApiClient, LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2) {
        this.zzbba = leaderboardScoreBuffer;
        this.zzbaZ = i;
        this.zzbbb = i2;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbba, this.zzbaZ, this.zzbbb);
    }
}
