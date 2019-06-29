package com.google.android.gms.cast.framework.media;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.Cast.CastApi;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzaxs;
import com.google.android.gms.internal.zzaxx;
import com.google.android.gms.internal.zzayp;
import com.google.android.gms.internal.zzays;
import com.google.android.gms.internal.zzayt;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class RemoteMediaClient implements MessageReceivedCallback {
    public static final String NAMESPACE = zzayp.NAMESPACE;
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_FAILED = 2100;
    public static final int STATUS_REPLACED = 2103;
    public static final int STATUS_SUCCEEDED = 0;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final List<Listener> mListeners = new CopyOnWriteArrayList();
    private final Object mLock = new Object();
    private GoogleApiClient zzXj;
    private final zzayp zzaqP;
    private final CastApi zzasb;
    private final zza zzauu = new zza();
    private final Map<ProgressListener, zzd> zzauv = new ConcurrentHashMap();
    private final Map<Long, zzd> zzauw = new ConcurrentHashMap();
    private ParseAdsInfoCallback zzaux;

    public interface Listener {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onSendingRemoteMediaRequest();

        void onStatusUpdated();
    }

    public interface ParseAdsInfoCallback {
        List<AdBreakInfo> parseAdBreaksFromMediaStatus(MediaStatus mediaStatus);

        boolean parseIsPlayingAdFromMediaStatus(MediaStatus mediaStatus);
    }

    public interface ProgressListener {
        void onProgressUpdated(long j, long j2);
    }

    class zzd {
        private final Set<ProgressListener> zzauB = new HashSet();
        private final long zzauC;
        private final Runnable zzauD;
        private boolean zzauE;

        public zzd(long j) {
            this.zzauC = j;
            this.zzauD = new zzai(this, RemoteMediaClient.this);
        }

        public final boolean isStarted() {
            return this.zzauE;
        }

        public final void start() {
            RemoteMediaClient.this.mHandler.removeCallbacks(this.zzauD);
            this.zzauE = true;
            RemoteMediaClient.this.mHandler.postDelayed(this.zzauD, this.zzauC);
        }

        public final void stop() {
            RemoteMediaClient.this.mHandler.removeCallbacks(this.zzauD);
            this.zzauE = false;
        }

        public final void zza(ProgressListener progressListener) {
            this.zzauB.add(progressListener);
        }

        public final void zzb(ProgressListener progressListener) {
            this.zzauB.remove(progressListener);
        }

        public final long zzob() {
            return this.zzauC;
        }

        public final boolean zzoc() {
            return !this.zzauB.isEmpty();
        }
    }

    public interface MediaChannelResult extends Result {
        JSONObject getCustomData();
    }

    class zza implements zzays {
        private GoogleApiClient zzars;
        private long zzart = 0;

        public final void zza(String str, String str2, long j, String str3) throws IOException {
            if (this.zzars == null) {
                throw new IOException("No GoogleApiClient available");
            }
            for (Listener onSendingRemoteMediaRequest : RemoteMediaClient.this.mListeners) {
                onSendingRemoteMediaRequest.onSendingRemoteMediaRequest();
            }
            RemoteMediaClient.this.zzasb.sendMessage(this.zzars, str, str2).setResultCallback(new zzaf(this, j));
        }

        public final void zzb(GoogleApiClient googleApiClient) {
            this.zzars = googleApiClient;
        }

        public final long zznl() {
            long j = this.zzart + 1;
            this.zzart = j;
            return j;
        }
    }

    static final class zzc implements MediaChannelResult {
        private final Status mStatus;
        private final JSONObject zzaoD;

        zzc(Status status, JSONObject jSONObject) {
            this.mStatus = status;
            this.zzaoD = jSONObject;
        }

        public final JSONObject getCustomData() {
            return this.zzaoD;
        }

        public final Status getStatus() {
            return this.mStatus;
        }
    }

    static abstract class zzb extends zzaxs<MediaChannelResult> {
        zzayt zzarw = new zzag(this);

        zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        public final /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.setResult((MediaChannelResult) obj);
        }

        /* Access modifiers changed, original: protected */
        public void zza(zzaxx zzaxx) {
        }

        public final /* synthetic */ Result zzb(Status status) {
            return new zzah(this, status);
        }
    }

    public RemoteMediaClient(@NonNull zzayp zzayp, @NonNull CastApi castApi) {
        this.zzasb = castApi;
        this.zzaqP = (zzayp) zzbo.zzu(zzayp);
        this.zzaqP.zza(new zzi(this));
        this.zzaqP.zza(this.zzauu);
    }

    private final int zzX(int i) {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        for (int i2 = 0; i2 < mediaStatus.getQueueItemCount(); i2++) {
            if (mediaStatus.getQueueItem(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0006 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:4:?, code skipped:
            r3.setResult((com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r3.zzb(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Missing block: B:5:0x0016, code skipped:
            return r3;
     */
    private final com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb zza(com.google.android.gms.cast.framework.media.RemoteMediaClient.zzb r3) {
        /*
        r2 = this;
        r0 = r2.zzXj;	 Catch:{ IllegalStateException -> 0x0006 }
        r0.zze(r3);	 Catch:{ IllegalStateException -> 0x0006 }
        return r3;
    L_0x0006:
        r0 = new com.google.android.gms.common.api.Status;	 Catch:{ all -> 0x0016 }
        r1 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        r0.<init>(r1);	 Catch:{ all -> 0x0016 }
        r0 = r3.zzb(r0);	 Catch:{ all -> 0x0016 }
        r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0;	 Catch:{ all -> 0x0016 }
        r3.setResult(r0);	 Catch:{ all -> 0x0016 }
    L_0x0016:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.RemoteMediaClient.zza(com.google.android.gms.cast.framework.media.RemoteMediaClient$zzb):com.google.android.gms.cast.framework.media.RemoteMediaClient$zzb");
    }

    private final void zza(Set<ProgressListener> set) {
        if (!isBuffering() && !isPaused()) {
            HashSet<ProgressListener> hashSet = new HashSet(set);
            if (isPlaying()) {
                for (ProgressListener onProgressUpdated : hashSet) {
                    onProgressUpdated.onProgressUpdated(getApproximateStreamPosition(), getStreamDuration());
                }
            } else if (isLoadingNextItem()) {
                MediaQueueItem loadingItem = getLoadingItem();
                if (!(loadingItem == null || loadingItem.getMedia() == null)) {
                    for (ProgressListener onProgressUpdated2 : hashSet) {
                        onProgressUpdated2.onProgressUpdated(0, loadingItem.getMedia().getStreamDuration());
                    }
                }
            } else {
                for (ProgressListener onProgressUpdated3 : hashSet) {
                    onProgressUpdated3.onProgressUpdated(0, 0);
                }
            }
        }
    }

    private final void zznY() throws IllegalStateException {
        if (this.zzXj == null) {
            throw new IllegalStateException("No connection");
        }
    }

    private final void zznZ() {
        for (zzd zzd : this.zzauw.values()) {
            if (hasMediaSession() && !zzd.isStarted()) {
                zzd.start();
            } else if (!hasMediaSession() && zzd.isStarted()) {
                zzd.stop();
            }
            if (zzd.isStarted() && (isBuffering() || isPaused() || isLoadingNextItem())) {
                zza(zzd.zzauB);
            }
        }
    }

    public void addListener(Listener listener) {
        zzbo.zzcz("Must be called from the main thread.");
        if (listener != null) {
            this.mListeners.add(listener);
        }
    }

    public boolean addProgressListener(ProgressListener progressListener, long j) {
        zzbo.zzcz("Must be called from the main thread.");
        if (progressListener == null || this.zzauv.containsKey(progressListener)) {
            return false;
        }
        zzd zzd = (zzd) this.zzauw.get(Long.valueOf(j));
        if (zzd == null) {
            zzd = new zzd(j);
            this.zzauw.put(Long.valueOf(j), zzd);
        }
        zzd.zza(progressListener);
        this.zzauv.put(progressListener, zzd);
        if (hasMediaSession()) {
            zzd.start();
        }
        return true;
    }

    public long getApproximateStreamPosition() {
        long approximateStreamPosition;
        synchronized (this.mLock) {
            zzbo.zzcz("Must be called from the main thread.");
            approximateStreamPosition = this.zzaqP.getApproximateStreamPosition();
        }
        return approximateStreamPosition;
    }

    public MediaQueueItem getCurrentItem() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus == null ? null : mediaStatus.getQueueItemById(mediaStatus.getCurrentItemId());
    }

    public int getIdleReason() {
        int idleReason;
        synchronized (this.mLock) {
            zzbo.zzcz("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            idleReason = mediaStatus != null ? mediaStatus.getIdleReason() : 0;
        }
        return idleReason;
    }

    public MediaQueueItem getLoadingItem() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus == null ? null : mediaStatus.getQueueItemById(mediaStatus.getLoadingItemId());
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo;
        synchronized (this.mLock) {
            zzbo.zzcz("Must be called from the main thread.");
            mediaInfo = this.zzaqP.getMediaInfo();
        }
        return mediaInfo;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatus;
        synchronized (this.mLock) {
            zzbo.zzcz("Must be called from the main thread.");
            mediaStatus = this.zzaqP.getMediaStatus();
        }
        return mediaStatus;
    }

    public String getNamespace() {
        zzbo.zzcz("Must be called from the main thread.");
        return this.zzaqP.getNamespace();
    }

    public int getPlayerState() {
        int playerState;
        synchronized (this.mLock) {
            zzbo.zzcz("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            playerState = mediaStatus != null ? mediaStatus.getPlayerState() : 1;
        }
        return playerState;
    }

    public MediaQueueItem getPreloadedItem() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus == null ? null : mediaStatus.getQueueItemById(mediaStatus.getPreloadedItemId());
    }

    public long getStreamDuration() {
        long streamDuration;
        synchronized (this.mLock) {
            zzbo.zzcz("Must be called from the main thread.");
            streamDuration = this.zzaqP.getStreamDuration();
        }
        return streamDuration;
    }

    public boolean hasMediaSession() {
        zzbo.zzcz("Must be called from the main thread.");
        return isBuffering() || isPlaying() || isPaused() || isLoadingNextItem();
    }

    public boolean isBuffering() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 4;
    }

    public boolean isLiveStream() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null && mediaInfo.getStreamType() == 2;
    }

    public boolean isLoadingNextItem() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || mediaStatus.getLoadingItemId() == 0) ? false : true;
    }

    public boolean isPaused() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && (mediaStatus.getPlayerState() == 3 || (isLiveStream() && getIdleReason() == 2));
    }

    public boolean isPlaying() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 2;
    }

    public boolean isPlayingAd() {
        zzbo.zzcz("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.isPlayingAd();
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo) {
        return load(mediaInfo, true, 0, null, null);
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z) {
        return load(mediaInfo, z, 0, null, null);
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j) {
        return load(mediaInfo, z, j, null, null);
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        return load(mediaInfo, z, j, null, jSONObject);
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j, long[] jArr, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzt(this, this.zzXj, mediaInfo, z, j, jArr, jSONObject));
    }

    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzaqP.zzch(str2);
    }

    public PendingResult<MediaChannelResult> pause() {
        return pause(null);
    }

    public PendingResult<MediaChannelResult> pause(JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzy(this, this.zzXj, jSONObject));
    }

    public PendingResult<MediaChannelResult> play() {
        return play(null);
    }

    public PendingResult<MediaChannelResult> play(JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzaa(this, this.zzXj, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueAppendItem(MediaQueueItem mediaQueueItem, JSONObject jSONObject) throws IllegalArgumentException {
        return queueInsertItems(new MediaQueueItem[]{mediaQueueItem}, 0, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzn(this, this.zzXj, mediaQueueItem, i, j, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(MediaQueueItem mediaQueueItem, int i, JSONObject jSONObject) {
        return queueInsertAndPlayItem(mediaQueueItem, i, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertItems(MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) throws IllegalArgumentException {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzm(this, this.zzXj, mediaQueueItemArr, i, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(int i, long j, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzw(this, this.zzXj, i, j, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(int i, JSONObject jSONObject) {
        return queueJumpToItem(i, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueLoad(MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) throws IllegalArgumentException {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzl(this, this.zzXj, mediaQueueItemArr, i, i2, j, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueLoad(MediaQueueItem[] mediaQueueItemArr, int i, int i2, JSONObject jSONObject) throws IllegalArgumentException {
        return queueLoad(mediaQueueItemArr, i, i2, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueMoveItemToNewIndex(int i, int i2, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzx(this, this.zzXj, i, i2, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueNext(JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzs(this, this.zzXj, jSONObject));
    }

    public PendingResult<MediaChannelResult> queuePrev(JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzr(this, this.zzXj, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueRemoveItem(int i, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzv(this, this.zzXj, i, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueRemoveItems(int[] iArr, JSONObject jSONObject) throws IllegalArgumentException {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzp(this, this.zzXj, iArr, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueReorderItems(int[] iArr, int i, JSONObject jSONObject) throws IllegalArgumentException {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzq(this, this.zzXj, iArr, i, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueSetRepeatMode(int i, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzu(this, this.zzXj, i, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueUpdateItems(MediaQueueItem[] mediaQueueItemArr, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzo(this, this.zzXj, mediaQueueItemArr, jSONObject));
    }

    public void removeListener(Listener listener) {
        zzbo.zzcz("Must be called from the main thread.");
        if (listener != null) {
            this.mListeners.remove(listener);
        }
    }

    public void removeProgressListener(ProgressListener progressListener) {
        zzbo.zzcz("Must be called from the main thread.");
        zzd zzd = (zzd) this.zzauv.remove(progressListener);
        if (zzd != null) {
            zzd.zzb(progressListener);
            if (!zzd.zzoc()) {
                this.zzauw.remove(Long.valueOf(zzd.zzob()));
                zzd.stop();
            }
        }
    }

    public PendingResult<MediaChannelResult> requestStatus() {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzae(this, this.zzXj));
    }

    public PendingResult<MediaChannelResult> seek(long j) {
        return seek(j, 0, null);
    }

    public PendingResult<MediaChannelResult> seek(long j, int i) {
        return seek(j, i, null);
    }

    public PendingResult<MediaChannelResult> seek(long j, int i, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzab(this, this.zzXj, j, i, jSONObject));
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(long[] jArr) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        if (jArr != null) {
            return zza(new zzj(this, this.zzXj, jArr));
        }
        throw new IllegalArgumentException("trackIds cannot be null");
    }

    public void setParseAdsInfoCallback(ParseAdsInfoCallback parseAdsInfoCallback) {
        zzbo.zzcz("Must be called from the main thread.");
        this.zzaux = parseAdsInfoCallback;
    }

    public PendingResult<MediaChannelResult> setStreamMute(boolean z) {
        return setStreamMute(z, null);
    }

    public PendingResult<MediaChannelResult> setStreamMute(boolean z, JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzad(this, this.zzXj, z, jSONObject));
    }

    public PendingResult<MediaChannelResult> setStreamVolume(double d) throws IllegalArgumentException {
        return setStreamVolume(d, null);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(double d, JSONObject jSONObject) throws IllegalArgumentException {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder stringBuilder = new StringBuilder(41);
            stringBuilder.append("Volume cannot be ");
            stringBuilder.append(d);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        return zza(new zzac(this, this.zzXj, d, jSONObject));
    }

    public PendingResult<MediaChannelResult> setTextTrackStyle(TextTrackStyle textTrackStyle) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        if (textTrackStyle != null) {
            return zza(new zzk(this, this.zzXj, textTrackStyle));
        }
        throw new IllegalArgumentException("trackStyle cannot be null");
    }

    public PendingResult<MediaChannelResult> stop() {
        return stop(null);
    }

    public PendingResult<MediaChannelResult> stop(JSONObject jSONObject) {
        zzbo.zzcz("Must be called from the main thread.");
        zznY();
        return zza(new zzz(this, this.zzXj, jSONObject));
    }

    public void togglePlayback() {
        zzbo.zzcz("Must be called from the main thread.");
        int playerState = getPlayerState();
        if (playerState == 4 || playerState == 2) {
            pause();
        } else {
            play();
        }
    }

    public final void zzc(GoogleApiClient googleApiClient) throws IOException {
        if (this.zzXj != googleApiClient) {
            if (this.zzXj != null) {
                this.zzaqP.zzoz();
                this.zzasb.removeMessageReceivedCallbacks(this.zzXj, getNamespace());
                this.zzauu.zzb(null);
                this.mHandler.removeCallbacksAndMessages(null);
            }
            this.zzXj = googleApiClient;
            if (this.zzXj != null) {
                this.zzauu.zzb(this.zzXj);
            }
        }
    }

    public final void zznX() throws IOException {
        if (this.zzXj != null) {
            this.zzasb.setMessageReceivedCallbacks(this.zzXj, getNamespace(), this);
        }
    }
}
