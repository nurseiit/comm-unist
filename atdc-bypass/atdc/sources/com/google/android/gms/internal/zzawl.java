package com.google.android.gms.internal;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzawl extends UIController implements ProgressListener {
    private boolean mIsAttached = true;
    private final SeekBar zzavB;
    private final long zzavQ;
    private final OnSeekBarChangeListener zzavR;

    public zzawl(SeekBar seekBar, long j, OnSeekBarChangeListener onSeekBarChangeListener) {
        this.zzavB = seekBar;
        this.zzavQ = j;
        this.zzavR = new zzawm(this, onSeekBarChangeListener);
    }

    public final void onProgressUpdated(long j, long j2) {
        if (this.mIsAttached) {
            this.zzavB.setMax((int) j2);
            this.zzavB.setProgress((int) j);
        }
    }

    public final void onSendingRemoteMediaRequest() {
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzavB.setOnSeekBarChangeListener(this.zzavR);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzavQ);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzavB.setMax((int) remoteMediaClient.getStreamDuration());
                this.zzavB.setProgress((int) remoteMediaClient.getApproximateStreamPosition());
                return;
            }
            this.zzavB.setMax(1);
            this.zzavB.setProgress(0);
        }
    }

    public final void onSessionEnded() {
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        this.zzavB.setOnSeekBarChangeListener(null);
        this.zzavB.setMax(1);
        this.zzavB.setProgress(0);
        super.onSessionEnded();
    }

    public final void zzY(boolean z) {
        this.mIsAttached = z;
    }
}
