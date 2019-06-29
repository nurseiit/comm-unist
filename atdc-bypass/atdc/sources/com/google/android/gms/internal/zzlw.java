package com.google.android.gms.internal;

import com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks;

public final class zzlw extends zzkw {
    private final VideoLifecycleCallbacks zzse;

    public zzlw(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zzse = videoLifecycleCallbacks;
    }

    public final void onVideoEnd() {
        this.zzse.onVideoEnd();
    }

    public final void onVideoMute(boolean z) {
        this.zzse.onVideoMute(z);
    }

    public final void onVideoPause() {
        this.zzse.onVideoPause();
    }

    public final void onVideoPlay() {
        this.zzse.onVideoPlay();
    }

    public final void onVideoStart() {
        this.zzse.onVideoStart();
    }
}
