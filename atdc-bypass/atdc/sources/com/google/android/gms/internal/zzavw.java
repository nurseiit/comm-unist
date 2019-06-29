package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaUtils;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;

public final class zzavw extends UIController {
    private final ImagePicker zzatH;
    private final ImageHints zzauP;
    private final ImageView zzavr;
    private final zzavc zzavt;
    private final Bitmap zzavv;
    private final View zzavw;

    public zzavw(ImageView imageView, Context context, @NonNull ImageHints imageHints, int i, View view) {
        this.zzavr = imageView;
        this.zzauP = imageHints;
        ImagePicker imagePicker = null;
        this.zzavv = i != 0 ? BitmapFactory.decodeResource(context.getResources(), i) : null;
        this.zzavw = view;
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(context).getCastOptions().getCastMediaOptions();
        if (castMediaOptions != null) {
            imagePicker = castMediaOptions.getImagePicker();
        }
        this.zzatH = imagePicker;
        this.zzavt = new zzavc(context.getApplicationContext());
    }

    private final void zzok() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            zzol();
            return;
        }
        Uri uri;
        MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
        if (mediaInfo == null) {
            uri = null;
        } else {
            if (this.zzatH != null) {
                WebImage onPickImage = this.zzatH.onPickImage(mediaInfo.getMetadata(), this.zzauP);
                if (!(onPickImage == null || onPickImage.getUrl() == null)) {
                    uri = onPickImage.getUrl();
                }
            }
            uri = MediaUtils.getImageUri(mediaInfo, 0);
        }
        if (uri == null) {
            zzol();
        } else {
            this.zzavt.zzm(uri);
        }
    }

    private final void zzol() {
        if (this.zzavw != null) {
            this.zzavw.setVisibility(0);
            this.zzavr.setVisibility(4);
        }
        if (this.zzavv != null) {
            this.zzavr.setImageBitmap(this.zzavv);
        }
    }

    public final void onMediaStatusUpdated() {
        zzok();
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzavt.zza(new zzavx(this));
        zzol();
        zzok();
    }

    public final void onSessionEnded() {
        this.zzavt.clear();
        zzol();
        super.onSessionEnded();
    }
}
