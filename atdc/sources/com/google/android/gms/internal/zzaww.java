package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzaww extends UIController {
    private final View mView;
    private final int zzavW;

    public zzaww(View view, int i) {
        this.mView = view;
        this.zzavW = i;
    }

    private final void zzok() {
        View view;
        int i;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || remoteMediaClient.getMediaStatus().getPreloadedItemId() == 0) {
            view = this.mView;
            i = this.zzavW;
        } else {
            view = this.mView;
            i = 0;
        }
        view.setVisibility(i);
    }

    public final void onMediaStatusUpdated() {
        zzok();
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzok();
    }

    public final void onSessionEnded() {
        this.mView.setVisibility(this.zzavW);
        super.onSessionEnded();
    }
}
