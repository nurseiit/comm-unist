package com.google.android.gms.internal;

import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzawu extends UIController implements ProgressListener {
    private final TextView zzawa;
    private final String zzawb;
    private final View zzawc;

    public zzawu(TextView textView, String str, View view) {
        this.zzawa = textView;
        this.zzawb = str;
        this.zzawc = view;
    }

    private final void zza(long j, boolean z) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzawa.setVisibility(0);
            this.zzawa.setText(this.zzawb);
            if (this.zzawc != null) {
                this.zzawc.setVisibility(4);
            }
        } else if (remoteMediaClient.isLiveStream()) {
            this.zzawa.setText(this.zzawb);
            if (this.zzawc != null) {
                this.zzawa.setVisibility(4);
                this.zzawc.setVisibility(0);
            }
        } else {
            if (z) {
                j = remoteMediaClient.getStreamDuration();
            }
            this.zzawa.setVisibility(0);
            this.zzawa.setText(DateUtils.formatElapsedTime(j / 1000));
            if (this.zzawc != null) {
                this.zzawc.setVisibility(4);
            }
        }
    }

    public final void onMediaStatusUpdated() {
        zza(-1, true);
    }

    public final void onProgressUpdated(long j, long j2) {
        zza(j2, false);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().addProgressListener(this, 1000);
        }
        zza(-1, true);
    }

    public final void onSessionEnded() {
        this.zzawa.setText(this.zzawb);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }
}
