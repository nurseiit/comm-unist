package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.google.android.gms.R;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzawi extends UIController {
    private final View zzavG;
    private final boolean zzavH;
    private final Drawable zzavI;
    private final String zzavJ;
    private final Drawable zzavK;
    private final String zzavL;
    private final Drawable zzavM;
    private final String zzavN;
    private final OnClickListener zzavp;
    private final ImageView zzavr;

    public zzawi(@NonNull ImageView imageView, Context context, @NonNull Drawable drawable, @NonNull Drawable drawable2, Drawable drawable3, View view, boolean z) {
        this.zzavr = imageView;
        this.zzavI = drawable;
        this.zzavK = drawable2;
        if (drawable3 != null) {
            drawable2 = drawable3;
        }
        this.zzavM = drawable2;
        this.zzavJ = context.getString(R.string.cast_play);
        this.zzavL = context.getString(R.string.cast_pause);
        this.zzavN = context.getString(R.string.cast_stop);
        this.zzavG = view;
        this.zzavH = z;
        this.zzavp = new zzawj(this);
    }

    private final void zzX(boolean z) {
        int i = 0;
        if (this.zzavG != null) {
            this.zzavG.setVisibility(0);
        }
        ImageView imageView = this.zzavr;
        if (this.zzavH) {
            i = 4;
        }
        imageView.setVisibility(i);
        this.zzavr.setEnabled(z ^ 1);
    }

    private final void zza(Drawable drawable, String str) {
        this.zzavr.setImageDrawable(drawable);
        this.zzavr.setContentDescription(str);
        this.zzavr.setVisibility(0);
        this.zzavr.setEnabled(true);
        if (this.zzavG != null) {
            this.zzavG.setVisibility(8);
        }
    }

    private final void zzok() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            if (remoteMediaClient.isPaused()) {
                zza(this.zzavI, this.zzavJ);
            } else if (remoteMediaClient.isPlaying()) {
                if (remoteMediaClient.isLiveStream()) {
                    zza(this.zzavM, this.zzavN);
                } else {
                    zza(this.zzavK, this.zzavL);
                }
            } else if (remoteMediaClient.isBuffering()) {
                zzX(false);
            } else {
                if (remoteMediaClient.isLoadingNextItem()) {
                    zzX(true);
                }
            }
        }
    }

    public final void onMediaStatusUpdated() {
        zzok();
    }

    public final void onSendingRemoteMediaRequest() {
        zzX(true);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzavr.setOnClickListener(this.zzavp);
        zzok();
    }

    public final void onSessionEnded() {
        this.zzavr.setOnClickListener(null);
        super.onSessionEnded();
    }
}
