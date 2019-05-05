package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.lang.ref.WeakReference;
import java.util.List;

public final class zzavs extends UIController {
    private final View mView;
    private final WeakReference<Activity> zzavm;
    private final String zzavn;
    private final String zzavo;
    private final OnClickListener zzavp = new zzavt(this);

    public zzavs(View view, Activity activity) {
        this.mView = view;
        this.zzavn = activity.getString(R.string.cast_closed_captions);
        this.zzavo = activity.getString(R.string.cast_closed_captions_unavailable);
        this.zzavm = new WeakReference(activity);
    }

    private final void zzok() {
        View view;
        CharSequence charSequence;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            Object obj;
            MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
            if (mediaInfo != null) {
                List<MediaTrack> mediaTracks = mediaInfo.getMediaTracks();
                if (!(mediaTracks == null || mediaTracks.isEmpty())) {
                    int i = 0;
                    for (MediaTrack mediaTrack : mediaTracks) {
                        if (mediaTrack.getType() == 2) {
                            i++;
                            if (i > 1) {
                            }
                        } else if (mediaTrack.getType() == 1) {
                        }
                        obj = 1;
                    }
                }
            }
            obj = null;
            if (!(obj == null || remoteMediaClient.isPlayingAd())) {
                this.mView.setEnabled(true);
                view = this.mView;
                charSequence = this.zzavn;
                view.setContentDescription(charSequence);
            }
        }
        this.mView.setEnabled(false);
        view = this.mView;
        charSequence = this.zzavo;
        view.setContentDescription(charSequence);
    }

    public final void onMediaStatusUpdated() {
        zzok();
    }

    public final void onSendingRemoteMediaRequest() {
        this.mView.setEnabled(false);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.mView.setOnClickListener(this.zzavp);
        zzok();
    }

    public final void onSessionEnded() {
        this.mView.setOnClickListener(null);
        super.onSessionEnded();
    }
}
