package com.google.android.gms.cast.framework.media;

import java.util.TimerTask;

final class zzai extends TimerTask {
    private /* synthetic */ RemoteMediaClient zzauF;
    private /* synthetic */ zzd zzauG;

    zzai(zzd zzd, RemoteMediaClient remoteMediaClient) {
        this.zzauG = zzd;
        this.zzauF = remoteMediaClient;
    }

    public final void run() {
        RemoteMediaClient.this.zza(this.zzauG.zzauB);
        RemoteMediaClient.this.mHandler.postDelayed(this, this.zzauG.zzauC);
    }
}
