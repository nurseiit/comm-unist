package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.internal.zzayq;
import java.util.List;

final class zzi implements zzayq {
    private /* synthetic */ RemoteMediaClient zzauy;

    zzi(RemoteMediaClient remoteMediaClient) {
        this.zzauy = remoteMediaClient;
    }

    private final void zzoa() {
        if (this.zzauy.zzaux != null) {
            MediaStatus mediaStatus = this.zzauy.getMediaStatus();
            if (mediaStatus != null) {
                mediaStatus.zzV(this.zzauy.zzaux.parseIsPlayingAdFromMediaStatus(mediaStatus));
                List parseAdBreaksFromMediaStatus = this.zzauy.zzaux.parseAdBreaksFromMediaStatus(mediaStatus);
                MediaInfo mediaInfo = this.zzauy.getMediaInfo();
                if (mediaInfo != null) {
                    mediaInfo.zzz(parseAdBreaksFromMediaStatus);
                }
            }
        }
    }

    public final void onAdBreakStatusUpdated() {
        for (Listener onAdBreakStatusUpdated : this.zzauy.mListeners) {
            onAdBreakStatusUpdated.onAdBreakStatusUpdated();
        }
    }

    public final void onMetadataUpdated() {
        zzoa();
        for (Listener onMetadataUpdated : this.zzauy.mListeners) {
            onMetadataUpdated.onMetadataUpdated();
        }
    }

    public final void onPreloadStatusUpdated() {
        for (Listener onPreloadStatusUpdated : this.zzauy.mListeners) {
            onPreloadStatusUpdated.onPreloadStatusUpdated();
        }
    }

    public final void onQueueStatusUpdated() {
        for (Listener onQueueStatusUpdated : this.zzauy.mListeners) {
            onQueueStatusUpdated.onQueueStatusUpdated();
        }
    }

    public final void onStatusUpdated() {
        zzoa();
        this.zzauy.zznZ();
        for (Listener onStatusUpdated : this.zzauy.mListeners) {
            onStatusUpdated.onStatusUpdated();
        }
    }
}
