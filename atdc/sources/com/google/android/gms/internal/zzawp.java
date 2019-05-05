package com.google.android.gms.internal;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzawp extends UIController {
    private final View mView;
    private final int zzavW;
    private final OnClickListener zzavp = new zzawq(this);

    public zzawp(View view, int i) {
        this.mView = view;
        this.zzavW = i;
    }

    private final void zzoo() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            Object obj;
            MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
            if (mediaStatus.getQueueRepeatMode() == 0) {
                Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
                if (indexById == null || indexById.intValue() >= mediaStatus.getQueueItemCount() - 1) {
                    obj = null;
                    if (obj != null || remoteMediaClient.isPlayingAd()) {
                        this.mView.setVisibility(this.zzavW);
                        this.mView.setClickable(false);
                        this.mView.setEnabled(false);
                    }
                    this.mView.setVisibility(0);
                    this.mView.setClickable(true);
                    this.mView.setEnabled(true);
                    return;
                }
            }
            obj = 1;
            if (obj != null) {
            }
            this.mView.setVisibility(this.zzavW);
            this.mView.setClickable(false);
            this.mView.setEnabled(false);
        }
    }

    public final void onMediaStatusUpdated() {
        zzoo();
    }

    public final void onSendingRemoteMediaRequest() {
        this.mView.setEnabled(false);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzavp);
        zzoo();
    }

    public final void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
