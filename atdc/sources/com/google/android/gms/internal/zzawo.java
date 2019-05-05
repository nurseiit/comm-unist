package com.google.android.gms.internal;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

final class zzawo implements OnClickListener {
    private /* synthetic */ long zzavU;
    private /* synthetic */ zzawn zzavV;

    zzawo(zzawn zzawn, long j) {
        this.zzavV = zzawn;
        this.zzavU = j;
    }

    public final void onClick(View view) {
        RemoteMediaClient zza = this.zzavV.getRemoteMediaClient();
        if (zza != null && zza.hasMediaSession()) {
            zza.seek(zza.getApproximateStreamPosition() + this.zzavU);
        }
    }
}
