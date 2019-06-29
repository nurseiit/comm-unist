package com.google.android.gms.internal;

import android.widget.ProgressBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzawk extends UIController implements ProgressListener {
    private final ProgressBar zzavP;
    private final long zzavQ;

    public zzawk(ProgressBar progressBar, long j) {
        this.zzavP = progressBar;
        this.zzavQ = j;
    }

    public final void onMediaStatusUpdated() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzavP.setMax(1);
            this.zzavP.setProgress(0);
        }
    }

    public final void onProgressUpdated(long j, long j2) {
        this.zzavP.setMax((int) j2);
        this.zzavP.setProgress((int) j);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzavQ);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzavP.setMax((int) remoteMediaClient.getStreamDuration());
                this.zzavP.setProgress((int) remoteMediaClient.getApproximateStreamPosition());
                return;
            }
            this.zzavP.setMax(1);
            this.zzavP.setProgress(0);
        }
    }

    public final void onSessionEnded() {
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        this.zzavP.setMax(1);
        this.zzavP.setProgress(0);
        super.onSessionEnded();
    }
}
