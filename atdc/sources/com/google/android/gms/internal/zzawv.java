package com.google.android.gms.internal;

import android.text.format.DateUtils;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzawv extends UIController implements ProgressListener {
    private boolean mIsAttached = true;
    private final long zzavQ;
    private final TextView zzawa;
    private final String zzawd;

    public zzawv(TextView textView, long j, String str) {
        this.zzawa = textView;
        this.zzavQ = j;
        this.zzawd = str;
    }

    public final void onProgressUpdated(long j, long j2) {
        if (this.mIsAttached) {
            this.zzawa.setText(DateUtils.formatElapsedTime(j / 1000));
        }
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzavQ);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzawa.setText(DateUtils.formatElapsedTime(remoteMediaClient.getApproximateStreamPosition() / 1000));
                return;
            }
            this.zzawa.setText(this.zzawd);
        }
    }

    public final void onSessionEnded() {
        this.zzawa.setText(this.zzawd);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }

    public final void zzY(boolean z) {
        this.mIsAttached = z;
    }

    public final void zzy(long j) {
        this.zzawa.setText(DateUtils.formatElapsedTime(j / 1000));
    }
}
