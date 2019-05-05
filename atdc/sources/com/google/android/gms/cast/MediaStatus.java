package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.util.zzo;
import com.google.android.gms.internal.zzaye;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaStatus extends zza {
    public static final long COMMAND_PAUSE = 1;
    public static final long COMMAND_SEEK = 2;
    public static final long COMMAND_SET_VOLUME = 4;
    public static final long COMMAND_SKIP_BACKWARD = 32;
    public static final long COMMAND_SKIP_FORWARD = 16;
    public static final long COMMAND_TOGGLE_MUTE = 8;
    public static final Creator<MediaStatus> CREATOR = new zzag();
    public static final int IDLE_REASON_CANCELED = 2;
    public static final int IDLE_REASON_ERROR = 4;
    public static final int IDLE_REASON_FINISHED = 1;
    public static final int IDLE_REASON_INTERRUPTED = 3;
    public static final int IDLE_REASON_NONE = 0;
    public static final int PLAYER_STATE_BUFFERING = 4;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    public static final int REPEAT_MODE_REPEAT_ALL = 1;
    public static final int REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE = 3;
    public static final int REPEAT_MODE_REPEAT_OFF = 0;
    public static final int REPEAT_MODE_REPEAT_SINGLE = 2;
    private String zzaoC;
    private JSONObject zzaoD;
    private int zzaqA;
    private long zzaqB;
    private long zzaqC;
    private double zzaqD;
    private boolean zzaqE;
    private int zzaqF;
    private int zzaqG;
    private int zzaqH;
    private ArrayList<MediaQueueItem> zzaqI;
    private boolean zzaqJ;
    private AdBreakStatus zzaqK;
    private VideoInfo zzaqL;
    private final SparseArray<Integer> zzaqM;
    private MediaInfo zzaqg;
    private long[] zzaqu;
    private long zzaqw;
    private int zzaqx;
    private double zzaqy;
    private int zzaqz;

    MediaStatus(MediaInfo mediaInfo, long j, int i, double d, int i2, int i3, long j2, long j3, double d2, boolean z, long[] jArr, int i4, int i5, String str, int i6, List<MediaQueueItem> list, boolean z2, AdBreakStatus adBreakStatus, VideoInfo videoInfo) {
        List<MediaQueueItem> list2 = list;
        this.zzaqI = new ArrayList();
        this.zzaqM = new SparseArray();
        this.zzaqg = mediaInfo;
        this.zzaqw = j;
        this.zzaqx = i;
        this.zzaqy = d;
        this.zzaqz = i2;
        this.zzaqA = i3;
        this.zzaqB = j2;
        this.zzaqC = j3;
        this.zzaqD = d2;
        this.zzaqE = z;
        this.zzaqu = jArr;
        this.zzaqF = i4;
        this.zzaqG = i5;
        this.zzaoC = str;
        if (this.zzaoC != null) {
            try {
                this.zzaoD = new JSONObject(this.zzaoC);
            } catch (JSONException unused) {
                this.zzaoD = null;
                this.zzaoC = null;
            }
        } else {
            this.zzaoD = null;
        }
        this.zzaqH = i6;
        if (!(list2 == null || list.isEmpty())) {
            zza((MediaQueueItem[]) list2.toArray(new MediaQueueItem[list.size()]));
        }
        this.zzaqJ = z2;
        this.zzaqK = adBreakStatus;
        this.zzaqL = videoInfo;
    }

    public MediaStatus(JSONObject jSONObject) throws JSONException {
        this(null, 0, 0, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, 0, 0, 0, 0, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, false, null, 0, 0, null, 0, null, false, null, null);
        zza(jSONObject, 0);
    }

    private final void zza(MediaQueueItem[] mediaQueueItemArr) {
        this.zzaqI.clear();
        this.zzaqM.clear();
        for (int i = 0; i < mediaQueueItemArr.length; i++) {
            Object obj = mediaQueueItemArr[i];
            this.zzaqI.add(obj);
            this.zzaqM.put(obj.getItemId(), Integer.valueOf(i));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStatus)) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) obj;
        if ((this.zzaoD == null ? 1 : null) == (mediaStatus.zzaoD == null ? 1 : null) && this.zzaqw == mediaStatus.zzaqw && this.zzaqx == mediaStatus.zzaqx && this.zzaqy == mediaStatus.zzaqy && this.zzaqz == mediaStatus.zzaqz && this.zzaqA == mediaStatus.zzaqA && this.zzaqB == mediaStatus.zzaqB && this.zzaqD == mediaStatus.zzaqD && this.zzaqE == mediaStatus.zzaqE && this.zzaqF == mediaStatus.zzaqF && this.zzaqG == mediaStatus.zzaqG && this.zzaqH == mediaStatus.zzaqH && Arrays.equals(this.zzaqu, mediaStatus.zzaqu) && zzaye.zza(Long.valueOf(this.zzaqC), Long.valueOf(mediaStatus.zzaqC)) && zzaye.zza(this.zzaqI, mediaStatus.zzaqI) && zzaye.zza(this.zzaqg, mediaStatus.zzaqg)) {
            Object obj2 = (this.zzaoD == null || mediaStatus.zzaoD == null || zzo.zzc(this.zzaoD, mediaStatus.zzaoD)) ? 1 : null;
            return obj2 != null && this.zzaqJ == mediaStatus.isPlayingAd();
        }
    }

    public long[] getActiveTrackIds() {
        return this.zzaqu;
    }

    public AdBreakStatus getAdBreakStatus() {
        return this.zzaqK;
    }

    public AdBreakInfo getCurrentAdBreak() {
        if (this.zzaqK == null || this.zzaqg == null) {
            return null;
        }
        String breakId = this.zzaqK.getBreakId();
        if (TextUtils.isEmpty(breakId)) {
            return null;
        }
        List<AdBreakInfo> adBreaks = this.zzaqg.getAdBreaks();
        if (adBreaks == null || adBreaks.isEmpty()) {
            return null;
        }
        for (AdBreakInfo adBreakInfo : adBreaks) {
            if (breakId.equals(adBreakInfo.getId())) {
                return adBreakInfo;
            }
        }
        return null;
    }

    public AdBreakClipInfo getCurrentAdBreakClip() {
        if (this.zzaqK == null || this.zzaqg == null) {
            return null;
        }
        String breakClipId = this.zzaqK.getBreakClipId();
        if (TextUtils.isEmpty(breakClipId)) {
            return null;
        }
        List<AdBreakClipInfo> adBreakClips = this.zzaqg.getAdBreakClips();
        if (adBreakClips == null || adBreakClips.isEmpty()) {
            return null;
        }
        for (AdBreakClipInfo adBreakClipInfo : adBreakClips) {
            if (breakClipId.equals(adBreakClipInfo.getId())) {
                return adBreakClipInfo;
            }
        }
        return null;
    }

    public int getCurrentItemId() {
        return this.zzaqx;
    }

    public JSONObject getCustomData() {
        return this.zzaoD;
    }

    public int getIdleReason() {
        return this.zzaqA;
    }

    public Integer getIndexById(int i) {
        return (Integer) this.zzaqM.get(i);
    }

    public MediaQueueItem getItemById(int i) {
        Integer num = (Integer) this.zzaqM.get(i);
        return num == null ? null : (MediaQueueItem) this.zzaqI.get(num.intValue());
    }

    public MediaQueueItem getItemByIndex(int i) {
        return (i < 0 || i >= this.zzaqI.size()) ? null : (MediaQueueItem) this.zzaqI.get(i);
    }

    public int getLoadingItemId() {
        return this.zzaqF;
    }

    public MediaInfo getMediaInfo() {
        return this.zzaqg;
    }

    public double getPlaybackRate() {
        return this.zzaqy;
    }

    public int getPlayerState() {
        return this.zzaqz;
    }

    public int getPreloadedItemId() {
        return this.zzaqG;
    }

    public MediaQueueItem getQueueItem(int i) {
        return getItemByIndex(i);
    }

    public MediaQueueItem getQueueItemById(int i) {
        return getItemById(i);
    }

    public int getQueueItemCount() {
        return this.zzaqI.size();
    }

    public List<MediaQueueItem> getQueueItems() {
        return this.zzaqI;
    }

    public int getQueueRepeatMode() {
        return this.zzaqH;
    }

    public long getStreamPosition() {
        return this.zzaqB;
    }

    public double getStreamVolume() {
        return this.zzaqD;
    }

    public VideoInfo getVideoInfo() {
        return this.zzaqL;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaqg, Long.valueOf(this.zzaqw), Integer.valueOf(this.zzaqx), Double.valueOf(this.zzaqy), Integer.valueOf(this.zzaqz), Integer.valueOf(this.zzaqA), Long.valueOf(this.zzaqB), Long.valueOf(this.zzaqC), Double.valueOf(this.zzaqD), Boolean.valueOf(this.zzaqE), Integer.valueOf(Arrays.hashCode(this.zzaqu)), Integer.valueOf(this.zzaqF), Integer.valueOf(this.zzaqG), String.valueOf(this.zzaoD), Integer.valueOf(this.zzaqH), this.zzaqI, Boolean.valueOf(this.zzaqJ)});
    }

    public boolean isMediaCommandSupported(long j) {
        return (this.zzaqC & j) != 0;
    }

    public boolean isMute() {
        return this.zzaqE;
    }

    public boolean isPlayingAd() {
        return this.zzaqJ;
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.zzaoC = this.zzaoD == null ? null : this.zzaoD.toString();
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, getMediaInfo(), i, false);
        zzd.zza(parcel, 3, this.zzaqw);
        zzd.zzc(parcel, 4, getCurrentItemId());
        zzd.zza(parcel, 5, getPlaybackRate());
        zzd.zzc(parcel, 6, getPlayerState());
        zzd.zzc(parcel, 7, getIdleReason());
        zzd.zza(parcel, 8, getStreamPosition());
        zzd.zza(parcel, 9, this.zzaqC);
        zzd.zza(parcel, 10, getStreamVolume());
        zzd.zza(parcel, 11, isMute());
        zzd.zza(parcel, 12, getActiveTrackIds(), false);
        zzd.zzc(parcel, 13, getLoadingItemId());
        zzd.zzc(parcel, 14, getPreloadedItemId());
        zzd.zza(parcel, 15, this.zzaoC, false);
        zzd.zzc(parcel, 16, this.zzaqH);
        zzd.zzc(parcel, 17, this.zzaqI, false);
        zzd.zza(parcel, 18, isPlayingAd());
        zzd.zza(parcel, 19, getAdBreakStatus(), i, false);
        zzd.zza(parcel, 20, getVideoInfo(), i, false);
        zzd.zzI(parcel, zze);
    }

    public final void zzV(boolean z) {
        this.zzaqJ = z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:84:0x0159  */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x0272  */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x033a  */
    /* JADX WARNING: Missing block: B:125:0x01fd, code skipped:
            if (r15 == 2) goto L_0x01f7;
     */
    /* JADX WARNING: Missing block: B:126:0x0200, code skipped:
            if (r8 != 0) goto L_0x01f7;
     */
    /* JADX WARNING: Missing block: B:127:0x0203, code skipped:
            r15 = 1;
     */
    /* JADX WARNING: Missing block: B:182:0x02fd, code skipped:
            if (r15 == 0) goto L_0x031c;
     */
    public final int zza(org.json.JSONObject r14, int r15) throws org.json.JSONException {
        /*
        r13 = this;
        r0 = "mediaSessionId";
        r0 = r14.getLong(r0);
        r2 = r13.zzaqw;
        r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        r2 = 0;
        r3 = 1;
        if (r4 == 0) goto L_0x0012;
    L_0x000e:
        r13.zzaqw = r0;
        r0 = 1;
        goto L_0x0013;
    L_0x0012:
        r0 = 0;
    L_0x0013:
        r1 = "playerState";
        r1 = r14.has(r1);
        r4 = 3;
        r5 = 2;
        if (r1 == 0) goto L_0x0095;
    L_0x001d:
        r1 = "playerState";
        r1 = r14.getString(r1);
        r6 = "IDLE";
        r6 = r1.equals(r6);
        r7 = 4;
        if (r6 == 0) goto L_0x002e;
    L_0x002c:
        r1 = 1;
        goto L_0x004d;
    L_0x002e:
        r6 = "PLAYING";
        r6 = r1.equals(r6);
        if (r6 == 0) goto L_0x0038;
    L_0x0036:
        r1 = 2;
        goto L_0x004d;
    L_0x0038:
        r6 = "PAUSED";
        r6 = r1.equals(r6);
        if (r6 == 0) goto L_0x0042;
    L_0x0040:
        r1 = 3;
        goto L_0x004d;
    L_0x0042:
        r6 = "BUFFERING";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x004c;
    L_0x004a:
        r1 = 4;
        goto L_0x004d;
    L_0x004c:
        r1 = 0;
    L_0x004d:
        r6 = r13.zzaqz;
        if (r1 == r6) goto L_0x0055;
    L_0x0051:
        r13.zzaqz = r1;
        r0 = r0 | 2;
    L_0x0055:
        if (r1 != r3) goto L_0x0095;
    L_0x0057:
        r1 = "idleReason";
        r1 = r14.has(r1);
        if (r1 == 0) goto L_0x0095;
    L_0x005f:
        r1 = "idleReason";
        r1 = r14.getString(r1);
        r6 = "CANCELLED";
        r6 = r1.equals(r6);
        if (r6 == 0) goto L_0x006f;
    L_0x006d:
        r7 = 2;
        goto L_0x008d;
    L_0x006f:
        r6 = "INTERRUPTED";
        r6 = r1.equals(r6);
        if (r6 == 0) goto L_0x0079;
    L_0x0077:
        r7 = 3;
        goto L_0x008d;
    L_0x0079:
        r6 = "FINISHED";
        r6 = r1.equals(r6);
        if (r6 == 0) goto L_0x0083;
    L_0x0081:
        r7 = 1;
        goto L_0x008d;
    L_0x0083:
        r6 = "ERROR";
        r1 = r1.equals(r6);
        if (r1 == 0) goto L_0x008c;
    L_0x008b:
        goto L_0x008d;
    L_0x008c:
        r7 = 0;
    L_0x008d:
        r1 = r13.zzaqA;
        if (r7 == r1) goto L_0x0095;
    L_0x0091:
        r13.zzaqA = r7;
        r0 = r0 | 2;
    L_0x0095:
        r1 = "playbackRate";
        r1 = r14.has(r1);
        if (r1 == 0) goto L_0x00ad;
    L_0x009d:
        r1 = "playbackRate";
        r6 = r14.getDouble(r1);
        r8 = r13.zzaqy;
        r1 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1));
        if (r1 == 0) goto L_0x00ad;
    L_0x00a9:
        r13.zzaqy = r6;
        r0 = r0 | 2;
    L_0x00ad:
        r1 = "currentTime";
        r1 = r14.has(r1);
        if (r1 == 0) goto L_0x00d1;
    L_0x00b5:
        r1 = r15 & 2;
        if (r1 != 0) goto L_0x00d1;
    L_0x00b9:
        r1 = "currentTime";
        r6 = r14.getDouble(r1);
        r8 = 4652007308841189376; // 0x408f400000000000 float:0.0 double:1000.0;
        r6 = r6 * r8;
        r6 = (long) r6;
        r8 = r13.zzaqB;
        r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r1 == 0) goto L_0x00d1;
    L_0x00cd:
        r13.zzaqB = r6;
        r0 = r0 | 2;
    L_0x00d1:
        r1 = "supportedMediaCommands";
        r1 = r14.has(r1);
        if (r1 == 0) goto L_0x00e9;
    L_0x00d9:
        r1 = "supportedMediaCommands";
        r6 = r14.getLong(r1);
        r8 = r13.zzaqC;
        r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r1 == 0) goto L_0x00e9;
    L_0x00e5:
        r13.zzaqC = r6;
        r0 = r0 | 2;
    L_0x00e9:
        r1 = "volume";
        r1 = r14.has(r1);
        if (r1 == 0) goto L_0x0118;
    L_0x00f1:
        r15 = r15 & r3;
        if (r15 != 0) goto L_0x0118;
    L_0x00f4:
        r15 = "volume";
        r15 = r14.getJSONObject(r15);
        r1 = "level";
        r6 = r15.getDouble(r1);
        r8 = r13.zzaqD;
        r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r1 == 0) goto L_0x010a;
    L_0x0106:
        r13.zzaqD = r6;
        r0 = r0 | 2;
    L_0x010a:
        r1 = "muted";
        r15 = r15.getBoolean(r1);
        r1 = r13.zzaqE;
        if (r15 == r1) goto L_0x0118;
    L_0x0114:
        r13.zzaqE = r15;
        r0 = r0 | 2;
    L_0x0118:
        r15 = "activeTrackIds";
        r15 = r14.has(r15);
        r1 = 0;
        if (r15 == 0) goto L_0x015c;
    L_0x0121:
        r15 = "activeTrackIds";
        r15 = r14.getJSONArray(r15);
        r6 = r15.length();
        r7 = new long[r6];
        r8 = 0;
    L_0x012e:
        if (r8 >= r6) goto L_0x0139;
    L_0x0130:
        r9 = r15.getLong(r8);
        r7[r8] = r9;
        r8 = r8 + 1;
        goto L_0x012e;
    L_0x0139:
        r15 = r13.zzaqu;
        if (r15 != 0) goto L_0x013f;
    L_0x013d:
        r15 = 1;
        goto L_0x0157;
    L_0x013f:
        r15 = r13.zzaqu;
        r15 = r15.length;
        if (r15 == r6) goto L_0x0145;
    L_0x0144:
        goto L_0x013d;
    L_0x0145:
        r15 = 0;
    L_0x0146:
        if (r15 >= r6) goto L_0x0156;
    L_0x0148:
        r8 = r13.zzaqu;
        r9 = r8[r15];
        r11 = r7[r15];
        r8 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1));
        if (r8 == 0) goto L_0x0153;
    L_0x0152:
        goto L_0x013d;
    L_0x0153:
        r15 = r15 + 1;
        goto L_0x0146;
    L_0x0156:
        r15 = 0;
    L_0x0157:
        if (r15 == 0) goto L_0x0165;
    L_0x0159:
        r13.zzaqu = r7;
        goto L_0x0165;
    L_0x015c:
        r15 = r13.zzaqu;
        if (r15 == 0) goto L_0x0163;
    L_0x0160:
        r7 = r1;
        r15 = 1;
        goto L_0x0165;
    L_0x0163:
        r7 = r1;
        r15 = 0;
    L_0x0165:
        if (r15 == 0) goto L_0x016b;
    L_0x0167:
        r13.zzaqu = r7;
        r0 = r0 | 2;
    L_0x016b:
        r15 = "customData";
        r15 = r14.has(r15);
        if (r15 == 0) goto L_0x017f;
    L_0x0173:
        r15 = "customData";
        r15 = r14.getJSONObject(r15);
        r13.zzaoD = r15;
        r13.zzaoC = r1;
        r0 = r0 | 2;
    L_0x017f:
        r15 = "media";
        r15 = r14.has(r15);
        if (r15 == 0) goto L_0x01b0;
    L_0x0187:
        r15 = "media";
        r15 = r14.getJSONObject(r15);
        r1 = new com.google.android.gms.cast.MediaInfo;
        r1.<init>(r15);
        r6 = r13.zzaqg;
        if (r6 == 0) goto L_0x01a2;
    L_0x0196:
        r6 = r13.zzaqg;
        if (r6 == 0) goto L_0x01a6;
    L_0x019a:
        r6 = r13.zzaqg;
        r6 = r6.equals(r1);
        if (r6 != 0) goto L_0x01a6;
    L_0x01a2:
        r13.zzaqg = r1;
        r0 = r0 | 2;
    L_0x01a6:
        r1 = "metadata";
        r15 = r15.has(r1);
        if (r15 == 0) goto L_0x01b0;
    L_0x01ae:
        r0 = r0 | 4;
    L_0x01b0:
        r15 = "currentItemId";
        r15 = r14.has(r15);
        if (r15 == 0) goto L_0x01c6;
    L_0x01b8:
        r15 = "currentItemId";
        r15 = r14.getInt(r15);
        r1 = r13.zzaqx;
        if (r1 == r15) goto L_0x01c6;
    L_0x01c2:
        r13.zzaqx = r15;
        r0 = r0 | 2;
    L_0x01c6:
        r15 = "preloadedItemId";
        r15 = r14.optInt(r15, r2);
        r1 = r13.zzaqG;
        if (r1 == r15) goto L_0x01d4;
    L_0x01d0:
        r13.zzaqG = r15;
        r0 = r0 | 16;
    L_0x01d4:
        r15 = "loadingItemId";
        r15 = r14.optInt(r15, r2);
        r1 = r13.zzaqF;
        if (r1 == r15) goto L_0x01e2;
    L_0x01de:
        r13.zzaqF = r15;
        r0 = r0 | 2;
    L_0x01e2:
        r15 = r13.zzaqg;
        r1 = -1;
        if (r15 != 0) goto L_0x01e9;
    L_0x01e7:
        r15 = -1;
        goto L_0x01ef;
    L_0x01e9:
        r15 = r13.zzaqg;
        r15 = r15.getStreamType();
    L_0x01ef:
        r6 = r13.zzaqz;
        r7 = r13.zzaqA;
        r8 = r13.zzaqF;
        if (r6 == r3) goto L_0x01f9;
    L_0x01f7:
        r15 = 0;
        goto L_0x0204;
    L_0x01f9:
        switch(r7) {
            case 1: goto L_0x0200;
            case 2: goto L_0x01fd;
            case 3: goto L_0x0200;
            default: goto L_0x01fc;
        };
    L_0x01fc:
        goto L_0x0203;
    L_0x01fd:
        if (r15 != r5) goto L_0x0203;
    L_0x01ff:
        goto L_0x01f7;
    L_0x0200:
        if (r8 == 0) goto L_0x0203;
    L_0x0202:
        goto L_0x01f7;
    L_0x0203:
        r15 = 1;
    L_0x0204:
        if (r15 != 0) goto L_0x0300;
    L_0x0206:
        r15 = "repeatMode";
        r15 = r14.has(r15);
        if (r15 == 0) goto L_0x0269;
    L_0x020e:
        r15 = r13.zzaqH;
        r6 = "repeatMode";
        r6 = r14.getString(r6);
        r7 = r6.hashCode();
        r8 = -1118317585; // 0xffffffffbd57d3ef float:-0.05269235 double:NaN;
        if (r7 == r8) goto L_0x024d;
    L_0x021f:
        r8 = -962896020; // 0xffffffffc69b5f6c float:-19887.71 double:NaN;
        if (r7 == r8) goto L_0x0243;
    L_0x0224:
        r8 = 1645938909; // 0x621b08dd float:7.14971E20 double:8.1320187E-315;
        if (r7 == r8) goto L_0x0239;
    L_0x0229:
        r8 = 1645952171; // 0x621b3cab float:7.159042E20 double:8.132084224E-315;
        if (r7 == r8) goto L_0x022f;
    L_0x022e:
        goto L_0x0256;
    L_0x022f:
        r7 = "REPEAT_OFF";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x0256;
    L_0x0237:
        r1 = 0;
        goto L_0x0256;
    L_0x0239:
        r7 = "REPEAT_ALL";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x0256;
    L_0x0241:
        r1 = 1;
        goto L_0x0256;
    L_0x0243:
        r7 = "REPEAT_SINGLE";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x0256;
    L_0x024b:
        r1 = 2;
        goto L_0x0256;
    L_0x024d:
        r7 = "REPEAT_ALL_AND_SHUFFLE";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x0256;
    L_0x0255:
        r1 = 3;
    L_0x0256:
        switch(r1) {
            case 0: goto L_0x0260;
            case 1: goto L_0x025e;
            case 2: goto L_0x025c;
            case 3: goto L_0x025a;
            default: goto L_0x0259;
        };
    L_0x0259:
        goto L_0x0261;
    L_0x025a:
        r15 = 3;
        goto L_0x0261;
    L_0x025c:
        r15 = 2;
        goto L_0x0261;
    L_0x025e:
        r15 = 1;
        goto L_0x0261;
    L_0x0260:
        r15 = 0;
    L_0x0261:
        r1 = r13.zzaqH;
        if (r1 == r15) goto L_0x0269;
    L_0x0265:
        r13.zzaqH = r15;
        r15 = 1;
        goto L_0x026a;
    L_0x0269:
        r15 = 0;
    L_0x026a:
        r1 = "items";
        r1 = r14.has(r1);
        if (r1 == 0) goto L_0x02fd;
    L_0x0272:
        r1 = "items";
        r1 = r14.getJSONArray(r1);
        r4 = r1.length();
        r5 = new android.util.SparseArray;
        r5.<init>();
        r6 = 0;
    L_0x0282:
        if (r6 >= r4) goto L_0x0298;
    L_0x0284:
        r7 = r1.getJSONObject(r6);
        r8 = "itemId";
        r7 = r7.getInt(r8);
        r7 = java.lang.Integer.valueOf(r7);
        r5.put(r6, r7);
        r6 = r6 + 1;
        goto L_0x0282;
    L_0x0298:
        r6 = new com.google.android.gms.cast.MediaQueueItem[r4];
        r7 = r15;
        r15 = 0;
    L_0x029c:
        if (r15 >= r4) goto L_0x02ef;
    L_0x029e:
        r8 = r5.get(r15);
        r8 = (java.lang.Integer) r8;
        r9 = r1.getJSONObject(r15);
        r10 = r8.intValue();
        r10 = r13.getItemById(r10);
        if (r10 == 0) goto L_0x02c9;
    L_0x02b2:
        r9 = r10.zzm(r9);
        r7 = r7 | r9;
        r6[r15] = r10;
        r8 = r8.intValue();
        r8 = r13.getIndexById(r8);
        r8 = r8.intValue();
        if (r15 == r8) goto L_0x02ec;
    L_0x02c7:
        r7 = 1;
        goto L_0x02ec;
    L_0x02c9:
        r7 = r8.intValue();
        r8 = r13.zzaqx;
        if (r7 != r8) goto L_0x02e4;
    L_0x02d1:
        r7 = new com.google.android.gms.cast.MediaQueueItem$Builder;
        r8 = r13.zzaqg;
        r7.<init>(r8);
        r7 = r7.build();
        r6[r15] = r7;
        r7 = r6[r15];
        r7.zzm(r9);
        goto L_0x02c7;
    L_0x02e4:
        r7 = new com.google.android.gms.cast.MediaQueueItem;
        r7.<init>(r9);
        r6[r15] = r7;
        goto L_0x02c7;
    L_0x02ec:
        r15 = r15 + 1;
        goto L_0x029c;
    L_0x02ef:
        r15 = r13.zzaqI;
        r15 = r15.size();
        if (r15 == r4) goto L_0x02f9;
    L_0x02f7:
        r15 = 1;
        goto L_0x02fa;
    L_0x02f9:
        r15 = r7;
    L_0x02fa:
        r13.zza(r6);
    L_0x02fd:
        if (r15 == 0) goto L_0x031c;
    L_0x02ff:
        goto L_0x031a;
    L_0x0300:
        r13.zzaqx = r2;
        r13.zzaqF = r2;
        r13.zzaqG = r2;
        r15 = r13.zzaqI;
        r15 = r15.isEmpty();
        if (r15 != 0) goto L_0x031c;
    L_0x030e:
        r13.zzaqH = r2;
        r15 = r13.zzaqI;
        r15.clear();
        r15 = r13.zzaqM;
        r15.clear();
    L_0x031a:
        r0 = r0 | 8;
    L_0x031c:
        r15 = "breakStatus";
        r15 = r14.optJSONObject(r15);
        r15 = com.google.android.gms.cast.AdBreakStatus.zzj(r15);
        r1 = r13.zzaqK;
        if (r1 != 0) goto L_0x032c;
    L_0x032a:
        if (r15 != 0) goto L_0x0338;
    L_0x032c:
        r1 = r13.zzaqK;
        if (r1 == 0) goto L_0x0341;
    L_0x0330:
        r1 = r13.zzaqK;
        r1 = r1.equals(r15);
        if (r1 != 0) goto L_0x0341;
    L_0x0338:
        if (r15 == 0) goto L_0x033b;
    L_0x033a:
        r2 = 1;
    L_0x033b:
        r13.zzaqJ = r2;
        r13.zzaqK = r15;
        r0 = r0 | 32;
    L_0x0341:
        r15 = "videoInfo";
        r15 = r14.optJSONObject(r15);
        r15 = com.google.android.gms.cast.VideoInfo.zzn(r15);
        r1 = r13.zzaqL;
        if (r1 != 0) goto L_0x0351;
    L_0x034f:
        if (r15 != 0) goto L_0x035d;
    L_0x0351:
        r1 = r13.zzaqL;
        if (r1 == 0) goto L_0x0361;
    L_0x0355:
        r1 = r13.zzaqL;
        r1 = r1.equals(r15);
        if (r1 != 0) goto L_0x0361;
    L_0x035d:
        r13.zzaqL = r15;
        r0 = r0 | 64;
    L_0x0361:
        r15 = "breakInfo";
        r15 = r14.has(r15);
        if (r15 == 0) goto L_0x037a;
    L_0x0369:
        r15 = r13.zzaqg;
        if (r15 == 0) goto L_0x037a;
    L_0x036d:
        r15 = r13.zzaqg;
        r1 = "breakInfo";
        r14 = r14.getJSONObject(r1);
        r15.zzk(r14);
        r0 = r0 | 2;
    L_0x037a:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zza(org.json.JSONObject, int):int");
    }

    public final long zznk() {
        return this.zzaqw;
    }
}
