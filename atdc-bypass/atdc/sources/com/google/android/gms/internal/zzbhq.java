package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.GamesStatusCodes;

final class zzbhq extends zzbhn {
    private /* synthetic */ zzbhp zzaKw;

    zzbhq(zzbhp zzbhp) {
        this.zzaKw = zzbhp;
    }

    public final void zza(Status status, zzbia zzbia) {
        if (zzbia.getStatusCode() == GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_STATE || zzbia.getStatusCode() == GamesStatusCodes.STATUS_MATCH_ERROR_LOCALLY_MODIFIED) {
            this.zzaKw.setResult(new zzbhr(zzbhl.zzaH(zzbia.getStatusCode()), zzbhl.zza(zzbia), zzbia.getThrottleEndTimeMillis(), zzbhl.zzb(zzbia)));
        } else {
            this.zzaKw.setResult(new zzbhr(zzbhl.zzaH(zzbia.getStatusCode()), zzbhl.zza(zzbia), zzbhl.zzb(zzbia)));
        }
    }
}
