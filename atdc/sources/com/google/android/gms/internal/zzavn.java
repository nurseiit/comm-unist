package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.media.AudioManager;
import android.net.Uri;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.MediaSessionCompat.Callback;
import android.support.v4.media.session.PlaybackStateCompat.Builder;
import android.text.TextUtils;
import com.google.android.gms.R;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.media.MediaNotificationService;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.zzq;

public final class zzavn implements Listener {
    private boolean mIsAttached;
    private CastDevice zzaoX;
    private final Context zzarM;
    private final zzavb zzasB;
    private RemoteMediaClient zzase;
    private final CastOptions zzauY;
    private final ComponentName zzauZ;
    private final zzavc zzava;
    private final zzavc zzavb;
    private MediaSessionCompat zzavc;
    private Callback zzavd;

    public zzavn(Context context, CastOptions castOptions, zzavb zzavb) {
        this.zzarM = context;
        this.zzauY = castOptions;
        this.zzasB = zzavb;
        ComponentName componentName = (this.zzauY.getCastMediaOptions() == null || TextUtils.isEmpty(this.zzauY.getCastMediaOptions().getExpandedControllerActivityClassName())) ? null : new ComponentName(this.zzarM, this.zzauY.getCastMediaOptions().getExpandedControllerActivityClassName());
        this.zzauZ = componentName;
        this.zzava = new zzavc(this.zzarM);
        this.zzava.zza(new zzavo(this));
        this.zzavb = new zzavc(this.zzarM);
        this.zzavb.zza(new zzavp(this));
    }

    private final Uri zza(MediaMetadata mediaMetadata, int i) {
        WebImage onPickImage = this.zzauY.getCastMediaOptions().getImagePicker() != null ? this.zzauY.getCastMediaOptions().getImagePicker().onPickImage(mediaMetadata, i) : mediaMetadata.hasImages() ? (WebImage) mediaMetadata.getImages().get(0) : null;
        return onPickImage == null ? null : onPickImage.getUrl();
    }

    private final void zza(int i, MediaInfo mediaInfo) {
        if (i == 0) {
            this.zzavc.setPlaybackState(new Builder().setState(0, 0, 1.0f).build());
            this.zzavc.setMetadata(new MediaMetadataCompat.Builder().build());
            return;
        }
        PendingIntent pendingIntent;
        this.zzavc.setPlaybackState(new Builder().setState(i, 0, 1.0f).setActions(512).build());
        MediaSessionCompat mediaSessionCompat = this.zzavc;
        if (this.zzauZ == null) {
            pendingIntent = null;
        } else {
            Intent intent = new Intent();
            intent.setComponent(this.zzauZ);
            pendingIntent = PendingIntent.getActivity(this.zzarM, 0, intent, 134217728);
        }
        mediaSessionCompat.setSessionActivity(pendingIntent);
        MediaMetadata metadata = mediaInfo.getMetadata();
        this.zzavc.setMetadata(zzof().putString("android.media.metadata.TITLE", metadata.getString(MediaMetadata.KEY_TITLE)).putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, metadata.getString(MediaMetadata.KEY_TITLE)).putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, metadata.getString(MediaMetadata.KEY_SUBTITLE)).putLong("android.media.metadata.DURATION", mediaInfo.getStreamDuration()).build());
        Uri zza = zza(metadata, 0);
        if (zza != null) {
            this.zzava.zzm(zza);
        } else {
            zza(null, 0);
        }
        Uri zza2 = zza(metadata, 3);
        if (zza2 != null) {
            this.zzavb.zzm(zza2);
        } else {
            zza(null, 3);
        }
    }

    private final void zza(Bitmap bitmap, int i) {
        if (i == 0) {
            if (bitmap == null) {
                bitmap = Bitmap.createBitmap(1, 1, Config.ARGB_8888);
                bitmap.eraseColor(0);
            }
            this.zzavc.setMetadata(zzof().putBitmap(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON, bitmap).build());
            return;
        }
        if (i == 3) {
            this.zzavc.setMetadata(zzof().putBitmap(MediaMetadataCompat.METADATA_KEY_ALBUM_ART, bitmap).build());
        }
    }

    /* JADX WARNING: Missing block: B:15:0x0030, code skipped:
            r5 = 2;
     */
    /* JADX WARNING: Missing block: B:57:0x00f0, code skipped:
            if (r2.intValue() < (r1.getQueueItemCount() - 1)) goto L_0x00f5;
     */
    private final void zzoe() {
        /*
        r11 = this;
        r0 = r11.zzase;
        r0 = r0.getMediaStatus();
        r1 = 0;
        if (r0 != 0) goto L_0x000b;
    L_0x0009:
        r2 = r1;
        goto L_0x000f;
    L_0x000b:
        r2 = r0.getMediaInfo();
    L_0x000f:
        if (r2 != 0) goto L_0x0013;
    L_0x0011:
        r3 = r1;
        goto L_0x0017;
    L_0x0013:
        r3 = r2.getMetadata();
    L_0x0017:
        r4 = 3;
        r5 = 6;
        r6 = 2;
        r7 = 1;
        r8 = 0;
        if (r0 == 0) goto L_0x0061;
    L_0x001e:
        if (r2 == 0) goto L_0x0061;
    L_0x0020:
        if (r3 != 0) goto L_0x0023;
    L_0x0022:
        goto L_0x0061;
    L_0x0023:
        r3 = r11.zzase;
        r3 = r3.getPlayerState();
        switch(r3) {
            case 1: goto L_0x0035;
            case 2: goto L_0x0032;
            case 3: goto L_0x002f;
            case 4: goto L_0x002d;
            default: goto L_0x002c;
        };
    L_0x002c:
        goto L_0x0061;
    L_0x002d:
        r3 = 0;
        goto L_0x0063;
    L_0x002f:
        r3 = 0;
    L_0x0030:
        r5 = 2;
        goto L_0x0063;
    L_0x0032:
        r3 = 0;
        r5 = 3;
        goto L_0x0063;
    L_0x0035:
        r3 = r0.getIdleReason();
        r9 = r11.zzase;
        r9 = r9.isLiveStream();
        if (r9 == 0) goto L_0x0045;
    L_0x0041:
        if (r3 != r6) goto L_0x0045;
    L_0x0043:
        r9 = 1;
        goto L_0x0046;
    L_0x0045:
        r9 = 0;
    L_0x0046:
        r10 = r0.getLoadingItemId();
        if (r10 == 0) goto L_0x0052;
    L_0x004c:
        if (r3 == r7) goto L_0x0050;
    L_0x004e:
        if (r3 != r4) goto L_0x0052;
    L_0x0050:
        r3 = 1;
        goto L_0x0053;
    L_0x0052:
        r3 = 0;
    L_0x0053:
        if (r9 == 0) goto L_0x0056;
    L_0x0055:
        goto L_0x0030;
    L_0x0056:
        r0 = r0.getQueueItemById(r10);
        if (r0 == 0) goto L_0x0062;
    L_0x005c:
        r2 = r0.getMedia();
        goto L_0x0063;
    L_0x0061:
        r3 = 0;
    L_0x0062:
        r5 = 0;
    L_0x0063:
        r11.zza(r5, r2);
        if (r5 != 0) goto L_0x006f;
    L_0x0068:
        r11.zzog();
        r11.zzoh();
        return;
    L_0x006f:
        r0 = r11.zzauY;
        r0 = r0.getCastMediaOptions();
        r0 = r0.getNotificationOptions();
        if (r0 == 0) goto L_0x0104;
    L_0x007b:
        r0 = r11.zzase;
        if (r0 == 0) goto L_0x0104;
    L_0x007f:
        r0 = new android.content.Intent;
        r2 = r11.zzarM;
        r4 = com.google.android.gms.cast.framework.media.MediaNotificationService.class;
        r0.<init>(r2, r4);
        r2 = r11.zzarM;
        r2 = r2.getPackageName();
        r0.setPackage(r2);
        r2 = "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION";
        r0.setAction(r2);
        r2 = "extra_media_info";
        r4 = r11.zzase;
        r4 = r4.getMediaInfo();
        r0.putExtra(r2, r4);
        r2 = "extra_remote_media_client_player_state";
        r4 = r11.zzase;
        r4 = r4.getPlayerState();
        r0.putExtra(r2, r4);
        r2 = "extra_cast_device";
        r4 = r11.zzaoX;
        r0.putExtra(r2, r4);
        r2 = "extra_media_session_token";
        r4 = r11.zzavc;
        if (r4 != 0) goto L_0x00ba;
    L_0x00b9:
        goto L_0x00c0;
    L_0x00ba:
        r1 = r11.zzavc;
        r1 = r1.getSessionToken();
    L_0x00c0:
        r0.putExtra(r2, r1);
        r1 = r11.zzase;
        r1 = r1.getMediaStatus();
        if (r1 == 0) goto L_0x00ff;
    L_0x00cb:
        r2 = r1.getQueueRepeatMode();
        switch(r2) {
            case 1: goto L_0x00e4;
            case 2: goto L_0x00e4;
            case 3: goto L_0x00e4;
            default: goto L_0x00d2;
        };
    L_0x00d2:
        r2 = r1.getCurrentItemId();
        r2 = r1.getIndexById(r2);
        if (r2 == 0) goto L_0x00f3;
    L_0x00dc:
        r4 = r2.intValue();
        if (r4 <= 0) goto L_0x00e6;
    L_0x00e2:
        r4 = 1;
        goto L_0x00e7;
    L_0x00e4:
        r4 = 1;
        goto L_0x00f5;
    L_0x00e6:
        r4 = 0;
    L_0x00e7:
        r2 = r2.intValue();
        r1 = r1.getQueueItemCount();
        r1 = r1 - r7;
        if (r2 >= r1) goto L_0x00f4;
    L_0x00f2:
        goto L_0x00f5;
    L_0x00f3:
        r4 = 0;
    L_0x00f4:
        r7 = 0;
    L_0x00f5:
        r1 = "extra_can_skip_next";
        r0.putExtra(r1, r7);
        r1 = "extra_can_skip_prev";
        r0.putExtra(r1, r4);
    L_0x00ff:
        r1 = r11.zzarM;
        r1.startService(r0);
    L_0x0104:
        if (r3 != 0) goto L_0x0125;
    L_0x0106:
        r0 = r11.zzauY;
        r0 = r0.getEnableReconnectionService();
        if (r0 == 0) goto L_0x0125;
    L_0x010e:
        r0 = new android.content.Intent;
        r1 = r11.zzarM;
        r2 = com.google.android.gms.cast.framework.ReconnectionService.class;
        r0.<init>(r1, r2);
        r1 = r11.zzarM;
        r1 = r1.getPackageName();
        r0.setPackage(r1);
        r1 = r11.zzarM;
        r1.startService(r0);
    L_0x0125:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzavn.zzoe():void");
    }

    private final MediaMetadataCompat.Builder zzof() {
        MediaMetadataCompat metadata = this.zzavc.getController().getMetadata();
        return metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata);
    }

    private final void zzog() {
        if (this.zzauY.getCastMediaOptions().getNotificationOptions() != null) {
            Intent intent = new Intent(this.zzarM, MediaNotificationService.class);
            intent.setPackage(this.zzarM.getPackageName());
            intent.setAction(MediaNotificationService.ACTION_UPDATE_NOTIFICATION);
            this.zzarM.stopService(intent);
        }
    }

    private final void zzoh() {
        if (this.zzauY.getEnableReconnectionService()) {
            Intent intent = new Intent(this.zzarM, ReconnectionService.class);
            intent.setPackage(this.zzarM.getPackageName());
            this.zzarM.stopService(intent);
        }
    }

    public final void onAdBreakStatusUpdated() {
        zzoe();
    }

    public final void onMetadataUpdated() {
        zzoe();
    }

    public final void onPreloadStatusUpdated() {
        zzoe();
    }

    public final void onQueueStatusUpdated() {
        zzoe();
    }

    public final void onSendingRemoteMediaRequest() {
    }

    public final void onStatusUpdated() {
        zzoe();
    }

    public final void zza(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        if (!this.mIsAttached && this.zzauY != null && this.zzauY.getCastMediaOptions() != null && remoteMediaClient != null && castDevice != null) {
            this.zzase = remoteMediaClient;
            this.zzase.addListener(this);
            this.zzaoX = castDevice;
            if (!zzq.zzse()) {
                ((AudioManager) this.zzarM.getSystemService("audio")).requestAudioFocus(null, 3, 3);
            }
            ComponentName componentName = new ComponentName(this.zzarM, this.zzauY.getCastMediaOptions().getMediaIntentReceiverClassName());
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setComponent(componentName);
            this.zzavc = new MediaSessionCompat(this.zzarM, "CastMediaSession", componentName, PendingIntent.getBroadcast(this.zzarM, 0, intent, 0));
            this.zzavc.setFlags(3);
            zza(0, null);
            if (!(this.zzaoX == null || TextUtils.isEmpty(this.zzaoX.getFriendlyName()))) {
                this.zzavc.setMetadata(new MediaMetadataCompat.Builder().putString("android.media.metadata.ALBUM_ARTIST", this.zzarM.getResources().getString(R.string.cast_casting_to_device, new Object[]{this.zzaoX.getFriendlyName()})).build());
            }
            this.zzavd = new zzavq(this);
            this.zzavc.setCallback(this.zzavd);
            this.zzavc.setActive(true);
            this.zzasB.setMediaSessionCompat(this.zzavc);
            this.mIsAttached = true;
            zzoe();
        }
    }

    public final void zzab(int i) {
        if (this.mIsAttached) {
            this.mIsAttached = false;
            if (this.zzase != null) {
                this.zzase.removeListener(this);
            }
            if (!zzq.zzse()) {
                ((AudioManager) this.zzarM.getSystemService("audio")).abandonAudioFocus(null);
            }
            this.zzasB.setMediaSessionCompat(null);
            if (this.zzava != null) {
                this.zzava.clear();
            }
            if (this.zzavb != null) {
                this.zzavb.clear();
            }
            if (this.zzavc != null) {
                this.zzavc.setSessionActivity(null);
                this.zzavc.setCallback(null);
                this.zzavc.setMetadata(new MediaMetadataCompat.Builder().build());
                zza(0, null);
                this.zzavc.setActive(false);
                this.zzavc.release();
                this.zzavc = null;
            }
            this.zzase = null;
            this.zzaoX = null;
            this.zzavd = null;
            zzog();
            if (i == 0) {
                zzoh();
            }
        }
    }
}
