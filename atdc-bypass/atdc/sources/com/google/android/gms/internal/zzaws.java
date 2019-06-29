package com.google.android.gms.internal;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

final class zzaws implements OnClickListener {
    private /* synthetic */ zzawr zzavY;

    zzaws(zzawr zzawr) {
        this.zzavY = zzawr;
    }

    public final void onClick(View view) {
        RemoteMediaClient zza = this.zzavY.getRemoteMediaClient();
        if (zza != null && zza.hasMediaSession()) {
            zza.queuePrev(null);
        }
    }
}
