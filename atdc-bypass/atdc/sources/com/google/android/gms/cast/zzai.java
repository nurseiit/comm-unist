package com.google.android.gms.cast;

import com.google.android.gms.internal.zzayq;

final class zzai implements zzayq {
    private /* synthetic */ RemoteMediaPlayer zzaqV;

    zzai(RemoteMediaPlayer remoteMediaPlayer) {
        this.zzaqV = remoteMediaPlayer;
    }

    public final void onAdBreakStatusUpdated() {
    }

    public final void onMetadataUpdated() {
        this.zzaqV.onMetadataUpdated();
    }

    public final void onPreloadStatusUpdated() {
        this.zzaqV.onPreloadStatusUpdated();
    }

    public final void onQueueStatusUpdated() {
        this.zzaqV.onQueueStatusUpdated();
    }

    public final void onStatusUpdated() {
        this.zzaqV.onStatusUpdated();
    }
}
