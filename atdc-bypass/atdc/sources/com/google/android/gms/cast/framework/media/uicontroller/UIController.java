package com.google.android.gms.cast.framework.media.uicontroller;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

public class UIController {
    private RemoteMediaClient zzase;

    /* Access modifiers changed, original: protected */
    public RemoteMediaClient getRemoteMediaClient() {
        return this.zzase;
    }

    public void onMediaStatusUpdated() {
    }

    public void onSendingRemoteMediaRequest() {
    }

    public void onSessionConnected(CastSession castSession) {
        this.zzase = castSession != null ? castSession.getRemoteMediaClient() : null;
    }

    public void onSessionEnded() {
        this.zzase = null;
    }
}
