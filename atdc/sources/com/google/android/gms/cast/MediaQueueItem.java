package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.util.zzo;
import com.google.android.gms.internal.zzaye;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaQueueItem extends zza {
    public static final Creator<MediaQueueItem> CREATOR = new zzaf();
    public static final double DEFAULT_PLAYBACK_DURATION = Double.POSITIVE_INFINITY;
    public static final int INVALID_ITEM_ID = 0;
    private String zzaoC;
    private JSONObject zzaoD;
    private MediaInfo zzaqo;
    private int zzaqp;
    private boolean zzaqq;
    private double zzaqr;
    private double zzaqs;
    private double zzaqt;
    private long[] zzaqu;

    public static class Builder {
        private final MediaQueueItem zzaqv;

        public Builder(MediaInfo mediaInfo) throws IllegalArgumentException {
            this.zzaqv = new MediaQueueItem(mediaInfo, null);
        }

        public Builder(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
            this.zzaqv = new MediaQueueItem(mediaQueueItem, null);
        }

        public Builder(JSONObject jSONObject) throws JSONException {
            this.zzaqv = new MediaQueueItem(jSONObject);
        }

        public MediaQueueItem build() {
            this.zzaqv.zznj();
            return this.zzaqv;
        }

        public Builder clearItemId() {
            this.zzaqv.zzV(0);
            return this;
        }

        public Builder setActiveTrackIds(long[] jArr) {
            this.zzaqv.zza(jArr);
            return this;
        }

        public Builder setAutoplay(boolean z) {
            this.zzaqv.zzU(z);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzaqv.setCustomData(jSONObject);
            return this;
        }

        public Builder setPlaybackDuration(double d) {
            this.zzaqv.zzd(d);
            return this;
        }

        public Builder setPreloadTime(double d) throws IllegalArgumentException {
            this.zzaqv.zze(d);
            return this;
        }

        public Builder setStartTime(double d) throws IllegalArgumentException {
            this.zzaqv.zzc(d);
            return this;
        }
    }

    private MediaQueueItem(MediaInfo mediaInfo) throws IllegalArgumentException {
        this(mediaInfo, 0, true, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, Double.POSITIVE_INFINITY, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, null, null);
        if (mediaInfo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
    }

    MediaQueueItem(MediaInfo mediaInfo, int i, boolean z, double d, double d2, double d3, long[] jArr, String str) {
        this.zzaqo = mediaInfo;
        this.zzaqp = i;
        this.zzaqq = z;
        this.zzaqr = d;
        this.zzaqs = d2;
        this.zzaqt = d3;
        this.zzaqu = jArr;
        this.zzaoC = str;
        if (this.zzaoC != null) {
            try {
                this.zzaoD = new JSONObject(this.zzaoC);
                return;
            } catch (JSONException unused) {
                this.zzaoD = null;
                this.zzaoC = null;
                return;
            }
        }
        this.zzaoD = null;
    }

    private MediaQueueItem(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
        this(mediaQueueItem.getMedia(), mediaQueueItem.getItemId(), mediaQueueItem.getAutoplay(), mediaQueueItem.getStartTime(), mediaQueueItem.getPlaybackDuration(), mediaQueueItem.getPreloadTime(), mediaQueueItem.getActiveTrackIds(), null);
        if (this.zzaqo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        this.zzaoD = mediaQueueItem.getCustomData();
    }

    MediaQueueItem(JSONObject jSONObject) throws JSONException {
        this(null, 0, true, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, Double.POSITIVE_INFINITY, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, null, null);
        zzm(jSONObject);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        return (this.zzaoD == null ? 1 : null) != (mediaQueueItem.zzaoD == null ? 1 : null) ? false : (this.zzaoD == null || mediaQueueItem.zzaoD == null || zzo.zzc(this.zzaoD, mediaQueueItem.zzaoD)) && zzaye.zza(this.zzaqo, mediaQueueItem.zzaqo) && this.zzaqp == mediaQueueItem.zzaqp && this.zzaqq == mediaQueueItem.zzaqq && this.zzaqr == mediaQueueItem.zzaqr && this.zzaqs == mediaQueueItem.zzaqs && this.zzaqt == mediaQueueItem.zzaqt && Arrays.equals(this.zzaqu, mediaQueueItem.zzaqu);
    }

    public long[] getActiveTrackIds() {
        return this.zzaqu;
    }

    public boolean getAutoplay() {
        return this.zzaqq;
    }

    public JSONObject getCustomData() {
        return this.zzaoD;
    }

    public int getItemId() {
        return this.zzaqp;
    }

    public MediaInfo getMedia() {
        return this.zzaqo;
    }

    public double getPlaybackDuration() {
        return this.zzaqs;
    }

    public double getPreloadTime() {
        return this.zzaqt;
    }

    public double getStartTime() {
        return this.zzaqr;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzaqo, Integer.valueOf(this.zzaqp), Boolean.valueOf(this.zzaqq), Double.valueOf(this.zzaqr), Double.valueOf(this.zzaqs), Double.valueOf(this.zzaqt), Integer.valueOf(Arrays.hashCode(this.zzaqu)), String.valueOf(this.zzaoD)});
    }

    /* Access modifiers changed, original: final */
    public final void setCustomData(JSONObject jSONObject) {
        this.zzaoD = jSONObject;
    }

    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("media", this.zzaqo.toJson());
            if (this.zzaqp != 0) {
                jSONObject.put("itemId", this.zzaqp);
            }
            jSONObject.put("autoplay", this.zzaqq);
            jSONObject.put("startTime", this.zzaqr);
            if (this.zzaqs != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", this.zzaqs);
            }
            jSONObject.put("preloadTime", this.zzaqt);
            if (this.zzaqu != null) {
                JSONArray jSONArray = new JSONArray();
                for (long put : this.zzaqu) {
                    jSONArray.put(put);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            if (this.zzaoD != null) {
                jSONObject.put("customData", this.zzaoD);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.zzaoC = this.zzaoD == null ? null : this.zzaoD.toString();
        int zze = zzd.zze(parcel);
        zzd.zza(parcel, 2, getMedia(), i, false);
        zzd.zzc(parcel, 3, getItemId());
        zzd.zza(parcel, 4, getAutoplay());
        zzd.zza(parcel, 5, getStartTime());
        zzd.zza(parcel, 6, getPlaybackDuration());
        zzd.zza(parcel, 7, getPreloadTime());
        zzd.zza(parcel, 8, getActiveTrackIds(), false);
        zzd.zza(parcel, 9, this.zzaoC, false);
        zzd.zzI(parcel, zze);
    }

    /* Access modifiers changed, original: final */
    public final void zzU(boolean z) {
        this.zzaqq = z;
    }

    /* Access modifiers changed, original: final */
    public final void zzV(int i) {
        this.zzaqp = 0;
    }

    /* Access modifiers changed, original: final */
    public final void zza(long[] jArr) {
        this.zzaqu = jArr;
    }

    /* Access modifiers changed, original: final */
    public final void zzc(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        this.zzaqr = d;
    }

    /* Access modifiers changed, original: final */
    public final void zzd(double d) throws IllegalArgumentException {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        this.zzaqs = d;
    }

    /* Access modifiers changed, original: final */
    public final void zze(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("preloadTime cannot be negative or NaN.");
        }
        this.zzaqt = d;
    }

    public final boolean zzm(JSONObject jSONObject) throws JSONException {
        boolean z;
        int i;
        double d;
        long[] jArr;
        Object obj = null;
        if (jSONObject.has("media")) {
            this.zzaqo = new MediaInfo(jSONObject.getJSONObject("media"));
            z = true;
        } else {
            z = false;
        }
        if (jSONObject.has("itemId")) {
            i = jSONObject.getInt("itemId");
            if (this.zzaqp != i) {
                this.zzaqp = i;
                z = true;
            }
        }
        if (jSONObject.has("autoplay")) {
            boolean z2 = jSONObject.getBoolean("autoplay");
            if (this.zzaqq != z2) {
                this.zzaqq = z2;
                z = true;
            }
        }
        if (jSONObject.has("startTime")) {
            d = jSONObject.getDouble("startTime");
            if (Math.abs(d - this.zzaqr) > 1.0E-7d) {
                this.zzaqr = d;
                z = true;
            }
        }
        if (jSONObject.has("playbackDuration")) {
            d = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d - this.zzaqs) > 1.0E-7d) {
                this.zzaqs = d;
                z = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            d = jSONObject.getDouble("preloadTime");
            if (Math.abs(d - this.zzaqt) > 1.0E-7d) {
                this.zzaqt = d;
                z = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i2 = 0; i2 < length; i2++) {
                jArr[i2] = jSONArray.getLong(i2);
            }
            if (this.zzaqu != null && this.zzaqu.length == length) {
                i = 0;
                while (i < length) {
                    if (this.zzaqu[i] == jArr[i]) {
                        i++;
                    }
                }
            }
            obj = 1;
            break;
        }
        jArr = null;
        if (obj != null) {
            this.zzaqu = jArr;
            z = true;
        }
        if (!jSONObject.has("customData")) {
            return z;
        }
        this.zzaoD = jSONObject.getJSONObject("customData");
        return true;
    }

    /* Access modifiers changed, original: final */
    public final void zznj() throws IllegalArgumentException {
        if (this.zzaqo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        } else if (Double.isNaN(this.zzaqr) || this.zzaqr < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        } else if (Double.isNaN(this.zzaqs)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        } else if (Double.isNaN(this.zzaqt) || this.zzaqt < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
        }
    }
}
