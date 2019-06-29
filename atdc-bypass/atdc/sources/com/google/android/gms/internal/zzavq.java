package com.google.android.gms.internal;

import android.content.Intent;
import android.support.v4.media.TransportMediator;
import android.support.v4.media.session.MediaSessionCompat.Callback;
import android.view.KeyEvent;

final class zzavq extends Callback {
    private /* synthetic */ zzavn zzave;

    zzavq(zzavn zzavn) {
        this.zzave = zzavn;
    }

    public final boolean onMediaButtonEvent(Intent intent) {
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent != null && (keyEvent.getKeyCode() == TransportMediator.KEYCODE_MEDIA_PAUSE || keyEvent.getKeyCode() == TransportMediator.KEYCODE_MEDIA_PLAY)) {
            this.zzave.zzase.togglePlayback();
        }
        return true;
    }

    public final void onPause() {
        this.zzave.zzase.togglePlayback();
    }

    public final void onPlay() {
        this.zzave.zzase.togglePlayback();
    }
}
