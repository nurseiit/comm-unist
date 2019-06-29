package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.internal.zzbaz;

final class zzcv extends zzdh {
    private /* synthetic */ TurnBasedMatchConfig zzbbv;

    zzcv(zzcu zzcu, GoogleApiClient googleApiClient, TurnBasedMatchConfig turnBasedMatchConfig) {
        this.zzbbv = turnBasedMatchConfig;
        super(googleApiClient, null);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((GamesClientImpl) zzb).zza((zzbaz) this, this.zzbbv);
    }
}
