package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.GamesActivityResultCodes;
import java.util.ArrayList;

final class zzatz extends zzbjx {
    private /* synthetic */ int zzaon = GamesActivityResultCodes.RESULT_LICENSE_FAILED;
    private /* synthetic */ ArrayList zzaoo;

    zzatz(GoogleApiClient googleApiClient, int i, ArrayList arrayList) {
        this.zzaoo = arrayList;
        super(googleApiClient);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ void zza(zzb zzb) throws RemoteException {
        ((zzbka) zzb).zza((zzbaz) this, new zzaub(this.zzaon, this.zzaoo));
    }
}
