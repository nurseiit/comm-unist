package com.google.android.gms.internal;

import android.graphics.drawable.ColorDrawable;
import android.widget.SeekBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.util.zzq;

public final class zzawa extends UIController {
    private final SeekBar zzavA;
    private final SeekBar zzavB;

    public zzawa(SeekBar seekBar, SeekBar seekBar2) {
        this.zzavA = seekBar;
        this.zzavB = seekBar2;
        this.zzavA.setClickable(false);
        if (zzq.zzsc()) {
            this.zzavA.setThumb(null);
        } else {
            this.zzavA.setThumb(new ColorDrawable(0));
        }
        this.zzavA.setMax(1);
        this.zzavA.setProgress(1);
        this.zzavA.setOnTouchListener(new zzawb(this));
    }

    private final void zzom() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            boolean isLiveStream = remoteMediaClient.isLiveStream();
            int i = 4;
            this.zzavA.setVisibility(isLiveStream ? 0 : 4);
            SeekBar seekBar = this.zzavB;
            if (!isLiveStream) {
                i = 0;
            }
            seekBar.setVisibility(i);
        }
    }

    public final void onMediaStatusUpdated() {
        zzom();
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzom();
    }
}
