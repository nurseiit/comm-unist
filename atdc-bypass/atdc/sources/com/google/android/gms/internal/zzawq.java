package com.google.android.gms.internal;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

final class zzawq implements OnClickListener {
    private /* synthetic */ zzawp zzavX;

    zzawq(zzawp zzawp) {
        this.zzavX = zzawp;
    }

    public final void onClick(View view) {
        RemoteMediaClient zza = this.zzavX.getRemoteMediaClient();
        if (zza != null && zza.hasMediaSession()) {
            zza.queueNext(null);
        }
    }
}
