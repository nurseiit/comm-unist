package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaUtils;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;

public final class zzavu extends UIController {
    private final ImagePicker zzatH;
    private final ImageHints zzauP;
    private final ImageView zzavr;
    private final Bitmap zzavs;
    private final zzavc zzavt;

    public zzavu(ImageView imageView, Context context, @NonNull ImageHints imageHints, int i) {
        this.zzavr = imageView;
        this.zzauP = imageHints;
        this.zzavs = BitmapFactory.decodeResource(context.getResources(), i);
        CastMediaOptions castMediaOptions = CastContext.getSharedInstance(context).getCastOptions().getCastMediaOptions();
        this.zzatH = castMediaOptions != null ? castMediaOptions.getImagePicker() : null;
        this.zzavt = new zzavc(context.getApplicationContext());
    }

    private final void zzok() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzavr.setImageBitmap(this.zzavs);
            return;
        }
        MediaQueueItem preloadedItem = remoteMediaClient.getPreloadedItem();
        Uri uri = null;
        if (preloadedItem != null) {
            MediaInfo media = preloadedItem.getMedia();
            if (media != null) {
                if (this.zzatH != null) {
                    WebImage onPickImage = this.zzatH.onPickImage(media.getMetadata(), this.zzauP);
                    if (!(onPickImage == null || onPickImage.getUrl() == null)) {
                        uri = onPickImage.getUrl();
                    }
                }
                uri = MediaUtils.getImageUri(media, 0);
            }
        }
        if (uri == null) {
            this.zzavr.setImageBitmap(this.zzavs);
        } else {
            this.zzavt.zzm(uri);
        }
    }

    public final void onMediaStatusUpdated() {
        zzok();
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zzavt.zza(new zzavv(this));
        this.zzavr.setImageBitmap(this.zzavs);
        zzok();
    }

    public final void onSessionEnded() {
        this.zzavt.clear();
        this.zzavr.setImageBitmap(this.zzavs);
        super.onSessionEnded();
    }
}
