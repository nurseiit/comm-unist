package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.common.util.zzi;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzayp extends zzaxt {
    public static final String NAMESPACE = zzaye.zzcj("com.google.cast.media");
    private final List<zzayu> zzawS = new ArrayList();
    private long zzayA;
    private MediaStatus zzayB;
    private zzayq zzayC;
    private final zzayu zzayD = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayE = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayF = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayG = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayH = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayI = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayJ = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayK = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayL = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayM = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayN = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayO = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayP = new zzayu(this.zzvw, 86400000);
    private final zzayu zzayQ = new zzayu(this.zzvw, 86400000);

    public zzayp(String str) {
        super(NAMESPACE, zzi.zzrY(), "MediaControlChannel", null, 1000);
        this.zzawS.add(this.zzayD);
        this.zzawS.add(this.zzayE);
        this.zzawS.add(this.zzayF);
        this.zzawS.add(this.zzayG);
        this.zzawS.add(this.zzayH);
        this.zzawS.add(this.zzayI);
        this.zzawS.add(this.zzayJ);
        this.zzawS.add(this.zzayK);
        this.zzawS.add(this.zzayL);
        this.zzawS.add(this.zzayM);
        this.zzawS.add(this.zzayN);
        this.zzawS.add(this.zzayO);
        this.zzawS.add(this.zzayP);
        this.zzawS.add(this.zzayQ);
        zzoM();
    }

    private final void onMetadataUpdated() {
        if (this.zzayC != null) {
            this.zzayC.onMetadataUpdated();
        }
    }

    private final void onPreloadStatusUpdated() {
        if (this.zzayC != null) {
            this.zzayC.onPreloadStatusUpdated();
        }
    }

    private final void onQueueStatusUpdated() {
        if (this.zzayC != null) {
            this.zzayC.onQueueStatusUpdated();
        }
    }

    private final void onStatusUpdated() {
        if (this.zzayC != null) {
            this.zzayC.onStatusUpdated();
        }
    }

    private final void zza(long j, JSONObject jSONObject) throws JSONException {
        int i;
        boolean test = this.zzayD.test(j);
        Object obj = 1;
        Object obj2 = (!this.zzayH.zzoO() || this.zzayH.test(j)) ? null : 1;
        if ((!this.zzayI.zzoO() || this.zzayI.test(j)) && (!this.zzayJ.zzoO() || this.zzayJ.test(j))) {
            obj = null;
        }
        int i2 = obj2 != null ? 2 : 0;
        if (obj != null) {
            i2 |= 1;
        }
        if (test || this.zzayB == null) {
            this.zzayB = new MediaStatus(jSONObject);
            this.zzayA = this.zzvw.elapsedRealtime();
            i = TransportMediator.KEYCODE_MEDIA_PAUSE;
        } else {
            i = this.zzayB.zza(jSONObject, i2);
        }
        if ((i & 1) != 0) {
            this.zzayA = this.zzvw.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 2) != 0) {
            this.zzayA = this.zzvw.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 4) != 0) {
            onMetadataUpdated();
        }
        if ((i & 8) != 0) {
            onQueueStatusUpdated();
        }
        if ((i & 16) != 0) {
            onPreloadStatusUpdated();
        }
        if ((i & 32) != 0) {
            this.zzayA = this.zzvw.elapsedRealtime();
            if (this.zzayC != null) {
                this.zzayC.onAdBreakStatusUpdated();
            }
        }
        if ((i & 64) != 0) {
            this.zzayA = this.zzvw.elapsedRealtime();
            onStatusUpdated();
        }
        for (zzayu zzc : this.zzawS) {
            zzc.zzc(j, 0, null);
        }
    }

    private final long zznk() throws zzayr {
        if (this.zzayB != null) {
            return this.zzayB.zznk();
        }
        throw new zzayr();
    }

    private final void zzoM() {
        this.zzayA = 0;
        this.zzayB = null;
        for (zzayu clear : this.zzawS) {
            clear.clear();
        }
    }

    public final long getApproximateStreamPosition() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null || this.zzayA == 0) {
            return 0;
        }
        double playbackRate = this.zzayB.getPlaybackRate();
        long streamPosition = this.zzayB.getStreamPosition();
        int playerState = this.zzayB.getPlayerState();
        if (playbackRate == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || playerState != 2) {
            return streamPosition;
        }
        long streamDuration = mediaInfo.getStreamDuration();
        long elapsedRealtime = this.zzvw.elapsedRealtime() - this.zzayA;
        if (elapsedRealtime < 0) {
            elapsedRealtime = 0;
        }
        if (elapsedRealtime == 0) {
            return streamPosition;
        }
        long j = streamPosition + ((long) (((double) elapsedRealtime) * playbackRate));
        return (streamDuration <= 0 || j <= streamDuration) ? j < 0 ? 0 : j : streamDuration;
    }

    public final MediaInfo getMediaInfo() {
        return this.zzayB == null ? null : this.zzayB.getMediaInfo();
    }

    public final MediaStatus getMediaStatus() {
        return this.zzayB;
    }

    public final long getStreamDuration() {
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null ? mediaInfo.getStreamDuration() : 0;
    }

    public final long zza(zzayt zzayt) throws IOException {
        JSONObject jSONObject = new JSONObject();
        long zzoA = zzoA();
        this.zzayK.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject.put("requestId", zzoA);
            jSONObject.put("type", "GET_STATUS");
            if (this.zzayB != null) {
                jSONObject.put("mediaSessionId", this.zzayB.zznk());
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, double d, JSONObject jSONObject) throws IOException, zzayr, IllegalArgumentException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder stringBuilder = new StringBuilder(41);
            stringBuilder.append("Volume cannot be ");
            stringBuilder.append(d);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayI.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zznk());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(Param.LEVEL, d);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, int i, long j, MediaQueueItem[] mediaQueueItemArr, int i2, Integer num, JSONObject jSONObject) throws IllegalArgumentException, IOException, zzayr {
        if (j == -1 || j >= 0) {
            JSONObject jSONObject2 = new JSONObject();
            long zzoA = zzoA();
            this.zzayO.zza(zzoA, zzayt);
            zzZ(true);
            try {
                jSONObject2.put("requestId", zzoA);
                jSONObject2.put("type", "QUEUE_UPDATE");
                jSONObject2.put("mediaSessionId", zznk());
                if (i != 0) {
                    jSONObject2.put("currentItemId", i);
                }
                if (i2 != 0) {
                    jSONObject2.put("jump", i2);
                }
                if (mediaQueueItemArr != null && mediaQueueItemArr.length > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (i = 0; i < mediaQueueItemArr.length; i++) {
                        jSONArray.put(i, mediaQueueItemArr[i].toJson());
                    }
                    jSONObject2.put("items", jSONArray);
                }
                if (num != null) {
                    String str;
                    Object obj;
                    switch (num.intValue()) {
                        case 0:
                            str = "repeatMode";
                            obj = "REPEAT_OFF";
                            break;
                        case 1:
                            str = "repeatMode";
                            obj = "REPEAT_ALL";
                            break;
                        case 2:
                            str = "repeatMode";
                            obj = "REPEAT_SINGLE";
                            break;
                        case 3:
                            str = "repeatMode";
                            obj = "REPEAT_ALL_AND_SHUFFLE";
                            break;
                        default:
                            break;
                    }
                    jSONObject2.put(str, obj);
                }
                if (j != -1) {
                    jSONObject2.put("currentTime", ((double) j) / 1000.0d);
                }
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
            } catch (JSONException unused) {
            }
            zza(jSONObject2.toString(), zzoA, null);
            return zzoA;
        }
        StringBuilder stringBuilder = new StringBuilder(53);
        stringBuilder.append("playPosition cannot be negative: ");
        stringBuilder.append(j);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0047 A:{Catch:{ JSONException -> 0x004c }} */
    public final long zza(com.google.android.gms.internal.zzayt r7, long r8, int r10, org.json.JSONObject r11) throws java.io.IOException, com.google.android.gms.internal.zzayr {
        /*
        r6 = this;
        r0 = new org.json.JSONObject;
        r0.<init>();
        r1 = r6.zzoA();
        r3 = r6.zzayH;
        r3.zza(r1, r7);
        r7 = 1;
        r6.zzZ(r7);
        r3 = "requestId";
        r0.put(r3, r1);	 Catch:{ JSONException -> 0x004c }
        r3 = "type";
        r4 = "SEEK";
        r0.put(r3, r4);	 Catch:{ JSONException -> 0x004c }
        r3 = "mediaSessionId";
        r4 = r6.zznk();	 Catch:{ JSONException -> 0x004c }
        r0.put(r3, r4);	 Catch:{ JSONException -> 0x004c }
        r3 = "currentTime";
        r8 = (double) r8;	 Catch:{ JSONException -> 0x004c }
        r4 = 4652007308841189376; // 0x408f400000000000 float:0.0 double:1000.0;
        r8 = r8 / r4;
        r0.put(r3, r8);	 Catch:{ JSONException -> 0x004c }
        if (r10 != r7) goto L_0x003d;
    L_0x0035:
        r7 = "resumeState";
        r8 = "PLAYBACK_START";
    L_0x0039:
        r0.put(r7, r8);	 Catch:{ JSONException -> 0x004c }
        goto L_0x0045;
    L_0x003d:
        r7 = 2;
        if (r10 != r7) goto L_0x0045;
    L_0x0040:
        r7 = "resumeState";
        r8 = "PLAYBACK_PAUSE";
        goto L_0x0039;
    L_0x0045:
        if (r11 == 0) goto L_0x004c;
    L_0x0047:
        r7 = "customData";
        r0.put(r7, r11);	 Catch:{ JSONException -> 0x004c }
    L_0x004c:
        r7 = r0.toString();
        r8 = 0;
        r6.zza(r7, r1, r8);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzayp.zza(com.google.android.gms.internal.zzayt, long, int, org.json.JSONObject):long");
    }

    public final long zza(zzayt zzayt, MediaInfo mediaInfo, boolean z, long j, long[] jArr, JSONObject jSONObject) throws IOException {
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayD.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "LOAD");
            jSONObject2.put("media", mediaInfo.toJson());
            jSONObject2.put("autoplay", z);
            jSONObject2.put("currentTime", ((double) j) / 1000.0d);
            if (jArr != null) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < jArr.length; i++) {
                    jSONArray.put(i, jArr[i]);
                }
                jSONObject2.put("activeTrackIds", jSONArray);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, TextTrackStyle textTrackStyle) throws IOException, zzayr {
        JSONObject jSONObject = new JSONObject();
        long zzoA = zzoA();
        this.zzayM.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject.put("requestId", zzoA);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.toJson());
            }
            jSONObject.put("mediaSessionId", zznk());
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, JSONObject jSONObject) throws IOException, zzayr {
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayE.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zznk());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, boolean z, JSONObject jSONObject) throws IOException, zzayr {
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayJ.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zznk());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("muted", z);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, int[] iArr, int i, JSONObject jSONObject) throws IOException, zzayr, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToReorder must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayQ.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "QUEUE_REORDER");
            jSONObject2.put("mediaSessionId", zznk());
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jSONArray.put(i2, iArr[i2]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, int[] iArr, JSONObject jSONObject) throws IOException, zzayr, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToRemove must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayP.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "QUEUE_REMOVE");
            jSONObject2.put("mediaSessionId", zznk());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < iArr.length; i++) {
                jSONArray.put(i, iArr[i]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, long[] jArr) throws IOException, zzayr {
        JSONObject jSONObject = new JSONObject();
        long zzoA = zzoA();
        this.zzayL.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject.put("requestId", zzoA);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zznk());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < jArr.length; i++) {
                jSONArray.put(i, jArr[i]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzoA, null);
        return zzoA;
    }

    public final long zza(zzayt zzayt, MediaQueueItem[] mediaQueueItemArr, int i, int i2, int i3, long j, JSONObject jSONObject) throws IOException, zzayr, IllegalArgumentException {
        MediaQueueItem[] mediaQueueItemArr2 = mediaQueueItemArr;
        int i4 = i;
        int i5 = i3;
        long j2 = j;
        JSONObject jSONObject2 = jSONObject;
        if (mediaQueueItemArr2 == null || mediaQueueItemArr2.length == 0) {
            throw new IllegalArgumentException("itemsToInsert must not be null or empty.");
        } else if (i5 != -1 && (i5 < 0 || i5 >= mediaQueueItemArr2.length)) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "currentItemIndexInItemsToInsert %d out of range [0, %d).", new Object[]{Integer.valueOf(i3), Integer.valueOf(mediaQueueItemArr2.length)}));
        } else if (j2 == -1 || j2 >= 0) {
            JSONObject jSONObject3 = new JSONObject();
            long zzoA = zzoA();
            this.zzayN.zza(zzoA, zzayt);
            zzZ(true);
            try {
                jSONObject3.put("requestId", zzoA);
                jSONObject3.put("type", "QUEUE_INSERT");
                jSONObject3.put("mediaSessionId", zznk());
                JSONArray jSONArray = new JSONArray();
                for (int i6 = 0; i6 < mediaQueueItemArr2.length; i6++) {
                    jSONArray.put(i6, mediaQueueItemArr2[i6].toJson());
                }
                jSONObject3.put("items", jSONArray);
                if (i4 != 0) {
                    jSONObject3.put("insertBefore", i4);
                }
                if (i5 != -1) {
                    jSONObject3.put("currentItemIndex", i5);
                }
                if (j2 != -1) {
                    jSONObject3.put("currentTime", ((double) j2) / 1000.0d);
                }
                if (jSONObject2 != null) {
                    jSONObject3.put("customData", jSONObject2);
                }
            } catch (JSONException unused) {
            }
            zza(jSONObject3.toString(), zzoA, null);
            return zzoA;
        } else {
            StringBuilder stringBuilder = new StringBuilder(54);
            stringBuilder.append("playPosition can not be negative: ");
            stringBuilder.append(j2);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public final long zza(zzayt zzayt, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) throws IOException, IllegalArgumentException {
        StringBuilder stringBuilder;
        if (mediaQueueItemArr == null || mediaQueueItemArr.length == 0) {
            throw new IllegalArgumentException("items must not be null or empty.");
        } else if (i < 0 || i >= mediaQueueItemArr.length) {
            StringBuilder stringBuilder2 = new StringBuilder(31);
            stringBuilder2.append("Invalid startIndex: ");
            stringBuilder2.append(i);
            throw new IllegalArgumentException(stringBuilder2.toString());
        } else if (j == -1 || j >= 0) {
            JSONObject jSONObject2 = new JSONObject();
            long zzoA = zzoA();
            this.zzayD.zza(zzoA, zzayt);
            zzZ(true);
            try {
                String str;
                Object obj;
                jSONObject2.put("requestId", zzoA);
                jSONObject2.put("type", "QUEUE_LOAD");
                JSONArray jSONArray = new JSONArray();
                for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                    jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                }
                jSONObject2.put("items", jSONArray);
                switch (i2) {
                    case 0:
                        str = "repeatMode";
                        obj = "REPEAT_OFF";
                        break;
                    case 1:
                        str = "repeatMode";
                        obj = "REPEAT_ALL";
                        break;
                    case 2:
                        str = "repeatMode";
                        obj = "REPEAT_SINGLE";
                        break;
                    case 3:
                        str = "repeatMode";
                        obj = "REPEAT_ALL_AND_SHUFFLE";
                        break;
                    default:
                        stringBuilder = new StringBuilder(32);
                        stringBuilder.append("Invalid repeat mode: ");
                        stringBuilder.append(i2);
                        throw new IllegalArgumentException(stringBuilder.toString());
                }
                jSONObject2.put(str, obj);
                jSONObject2.put("startIndex", i);
                if (j != -1) {
                    jSONObject2.put("currentTime", ((double) j) / 1000.0d);
                }
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
            } catch (JSONException unused) {
            }
            zza(jSONObject2.toString(), zzoA, null);
            return zzoA;
        } else {
            stringBuilder = new StringBuilder(54);
            stringBuilder.append("playPosition can not be negative: ");
            stringBuilder.append(j);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public final void zza(zzayq zzayq) {
        this.zzayC = zzayq;
    }

    public final long zzb(zzayt zzayt, JSONObject jSONObject) throws IOException, zzayr {
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayG.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "STOP");
            jSONObject2.put("mediaSessionId", zznk());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final long zzc(zzayt zzayt, JSONObject jSONObject) throws IOException, zzayr {
        JSONObject jSONObject2 = new JSONObject();
        long zzoA = zzoA();
        this.zzayF.zza(zzoA, zzayt);
        zzZ(true);
        try {
            jSONObject2.put("requestId", zzoA);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zznk());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzoA, null);
        return zzoA;
    }

    public final void zzc(long j, int i) {
        for (zzayu zzc : this.zzawS) {
            zzc.zzc(j, i, null);
        }
    }

    public final void zzch(java.lang.String r11) {
        /*
        r10 = this;
        r0 = r10.zzarK;
        r1 = "message received: %s";
        r2 = 1;
        r3 = new java.lang.Object[r2];
        r4 = 0;
        r3[r4] = r11;
        r0.zzb(r1, r3);
        r0 = 2;
        r1 = new org.json.JSONObject;	 Catch:{ JSONException -> 0x00f1 }
        r1.<init>(r11);	 Catch:{ JSONException -> 0x00f1 }
        r3 = "type";
        r3 = r1.getString(r3);	 Catch:{ JSONException -> 0x00f1 }
        r5 = "requestId";
        r6 = -1;
        r5 = r1.optLong(r5, r6);	 Catch:{ JSONException -> 0x00f1 }
        r7 = -1;
        r8 = r3.hashCode();	 Catch:{ JSONException -> 0x00f1 }
        switch(r8) {
            case -1830647528: goto L_0x0052;
            case -1125000185: goto L_0x0048;
            case -262628938: goto L_0x003e;
            case 431600379: goto L_0x0034;
            case 823510221: goto L_0x002a;
            default: goto L_0x0029;
        };	 Catch:{ JSONException -> 0x00f1 }
    L_0x0029:
        goto L_0x005c;
    L_0x002a:
        r8 = "MEDIA_STATUS";
        r3 = r3.equals(r8);	 Catch:{ JSONException -> 0x00f1 }
        if (r3 == 0) goto L_0x005c;
    L_0x0032:
        r3 = 0;
        goto L_0x005d;
    L_0x0034:
        r8 = "INVALID_PLAYER_STATE";
        r3 = r3.equals(r8);	 Catch:{ JSONException -> 0x00f1 }
        if (r3 == 0) goto L_0x005c;
    L_0x003c:
        r3 = 1;
        goto L_0x005d;
    L_0x003e:
        r8 = "LOAD_FAILED";
        r3 = r3.equals(r8);	 Catch:{ JSONException -> 0x00f1 }
        if (r3 == 0) goto L_0x005c;
    L_0x0046:
        r3 = 2;
        goto L_0x005d;
    L_0x0048:
        r8 = "INVALID_REQUEST";
        r3 = r3.equals(r8);	 Catch:{ JSONException -> 0x00f1 }
        if (r3 == 0) goto L_0x005c;
    L_0x0050:
        r3 = 4;
        goto L_0x005d;
    L_0x0052:
        r8 = "LOAD_CANCELLED";
        r3 = r3.equals(r8);	 Catch:{ JSONException -> 0x00f1 }
        if (r3 == 0) goto L_0x005c;
    L_0x005a:
        r3 = 3;
        goto L_0x005d;
    L_0x005c:
        r3 = -1;
    L_0x005d:
        r7 = 2100; // 0x834 float:2.943E-42 double:1.0375E-320;
        switch(r3) {
            case 0: goto L_0x00c8;
            case 1: goto L_0x00a2;
            case 2: goto L_0x0096;
            case 3: goto L_0x0088;
            case 4: goto L_0x0063;
            default: goto L_0x0062;
        };	 Catch:{ JSONException -> 0x00f1 }
    L_0x0062:
        return;
    L_0x0063:
        r3 = r10.zzarK;	 Catch:{ JSONException -> 0x00f1 }
        r8 = "received unexpected error: Invalid Request.";
        r9 = new java.lang.Object[r4];	 Catch:{ JSONException -> 0x00f1 }
        r3.zzf(r8, r9);	 Catch:{ JSONException -> 0x00f1 }
        r3 = "customData";
        r1 = r1.optJSONObject(r3);	 Catch:{ JSONException -> 0x00f1 }
        r3 = r10.zzawS;	 Catch:{ JSONException -> 0x00f1 }
        r3 = r3.iterator();	 Catch:{ JSONException -> 0x00f1 }
    L_0x0078:
        r8 = r3.hasNext();	 Catch:{ JSONException -> 0x00f1 }
        if (r8 == 0) goto L_0x00f0;
    L_0x007e:
        r8 = r3.next();	 Catch:{ JSONException -> 0x00f1 }
        r8 = (com.google.android.gms.internal.zzayu) r8;	 Catch:{ JSONException -> 0x00f1 }
        r8.zzc(r5, r7, r1);	 Catch:{ JSONException -> 0x00f1 }
        goto L_0x0078;
    L_0x0088:
        r3 = "customData";
        r1 = r1.optJSONObject(r3);	 Catch:{ JSONException -> 0x00f1 }
        r3 = r10.zzayD;	 Catch:{ JSONException -> 0x00f1 }
        r7 = 2101; // 0x835 float:2.944E-42 double:1.038E-320;
        r3.zzc(r5, r7, r1);	 Catch:{ JSONException -> 0x00f1 }
        return;
    L_0x0096:
        r3 = "customData";
        r1 = r1.optJSONObject(r3);	 Catch:{ JSONException -> 0x00f1 }
        r3 = r10.zzayD;	 Catch:{ JSONException -> 0x00f1 }
        r3.zzc(r5, r7, r1);	 Catch:{ JSONException -> 0x00f1 }
        return;
    L_0x00a2:
        r3 = r10.zzarK;	 Catch:{ JSONException -> 0x00f1 }
        r8 = "received unexpected error: Invalid Player State.";
        r9 = new java.lang.Object[r4];	 Catch:{ JSONException -> 0x00f1 }
        r3.zzf(r8, r9);	 Catch:{ JSONException -> 0x00f1 }
        r3 = "customData";
        r1 = r1.optJSONObject(r3);	 Catch:{ JSONException -> 0x00f1 }
        r3 = r10.zzawS;	 Catch:{ JSONException -> 0x00f1 }
        r3 = r3.iterator();	 Catch:{ JSONException -> 0x00f1 }
    L_0x00b7:
        r8 = r3.hasNext();	 Catch:{ JSONException -> 0x00f1 }
        if (r8 == 0) goto L_0x00c7;
    L_0x00bd:
        r8 = r3.next();	 Catch:{ JSONException -> 0x00f1 }
        r8 = (com.google.android.gms.internal.zzayu) r8;	 Catch:{ JSONException -> 0x00f1 }
        r8.zzc(r5, r7, r1);	 Catch:{ JSONException -> 0x00f1 }
        goto L_0x00b7;
    L_0x00c7:
        return;
    L_0x00c8:
        r3 = "status";
        r1 = r1.getJSONArray(r3);	 Catch:{ JSONException -> 0x00f1 }
        r3 = r1.length();	 Catch:{ JSONException -> 0x00f1 }
        if (r3 <= 0) goto L_0x00dc;
    L_0x00d4:
        r1 = r1.getJSONObject(r4);	 Catch:{ JSONException -> 0x00f1 }
        r10.zza(r5, r1);	 Catch:{ JSONException -> 0x00f1 }
        return;
    L_0x00dc:
        r1 = 0;
        r10.zzayB = r1;	 Catch:{ JSONException -> 0x00f1 }
        r10.onStatusUpdated();	 Catch:{ JSONException -> 0x00f1 }
        r10.onMetadataUpdated();	 Catch:{ JSONException -> 0x00f1 }
        r10.onQueueStatusUpdated();	 Catch:{ JSONException -> 0x00f1 }
        r10.onPreloadStatusUpdated();	 Catch:{ JSONException -> 0x00f1 }
        r3 = r10.zzayK;	 Catch:{ JSONException -> 0x00f1 }
        r3.zzc(r5, r4, r1);	 Catch:{ JSONException -> 0x00f1 }
    L_0x00f0:
        return;
    L_0x00f1:
        r1 = move-exception;
        r3 = r10.zzarK;
        r5 = "Message is malformed (%s); ignoring: %s";
        r0 = new java.lang.Object[r0];
        r1 = r1.getMessage();
        r0[r4] = r1;
        r0[r2] = r11;
        r3.zzf(r5, r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzayp.zzch(java.lang.String):void");
    }

    public final void zzoz() {
        super.zzoz();
        zzoM();
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzz(long j) {
        for (zzayu zzd : this.zzawS) {
            zzd.zzd(j, RemoteMediaPlayer.STATUS_TIMED_OUT);
        }
        boolean z = false;
        synchronized (zzayu.zzrl) {
            for (zzayu zzd2 : this.zzawS) {
                if (zzd2.zzoO()) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }
}
