package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzaye;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AdBreakInfo extends zza {
    public static final Creator<AdBreakInfo> CREATOR = new zzb();
    private final String zzIi;
    private final long zzaoE;
    private final boolean zzaoF;
    private String[] zzaoG;
    private final long zzaoz;

    public static class Builder {
        private long zzaoE = 0;

        public Builder(long j) {
            this.zzaoE = j;
        }

        public AdBreakInfo build() {
            return new AdBreakInfo(this.zzaoE, null, 0, false, null);
        }
    }

    public AdBreakInfo(long j, String str, long j2, boolean z, String[] strArr) {
        this.zzaoE = j;
        this.zzIi = str;
        this.zzaoz = j2;
        this.zzaoF = z;
        this.zzaoG = strArr;
    }

    static AdBreakInfo zzi(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("id") || !jSONObject.has("position")) {
            return null;
        }
        try {
            String[] strArr;
            String string = jSONObject.getString("id");
            long j = (long) (((double) jSONObject.getLong("position")) * 1000.0d);
            boolean optBoolean = jSONObject.optBoolean("isWatched");
            long optLong = (long) (((double) jSONObject.optLong("duration")) * 1000.0d);
            JSONArray optJSONArray = jSONObject.optJSONArray("breakClipIds");
            if (optJSONArray != null) {
                strArr = new String[optJSONArray.length()];
                for (int i = 0; i < optJSONArray.length(); i++) {
                    strArr[i] = optJSONArray.getString(i);
                }
            } else {
                strArr = null;
            }
            return new AdBreakInfo(j, string, optLong, optBoolean, strArr);
        } catch (JSONException e) {
            Log.d("AdBreakInfo", String.format(Locale.ROOT, "Error while creating an AdBreakInfo from JSON: %s", new Object[]{e.getMessage()}));
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakInfo)) {
            return false;
        }
        AdBreakInfo adBreakInfo = (AdBreakInfo) obj;
        return zzaye.zza(this.zzIi, adBreakInfo.zzIi) && this.zzaoE == adBreakInfo.zzaoE && this.zzaoz == adBreakInfo.zzaoz && this.zzaoF == adBreakInfo.zzaoF && Arrays.equals(this.zzaoG, adBreakInfo.zzaoG);
    }

    public String[] getBreakClipIds() {
        return this.zzaoG;
    }

    public long getDurationInMs() {
        return this.zzaoz;
    }

    public String getId() {
        return this.zzIi;
    }

    public long getPlaybackPositionInMs() {
        return this.zzaoE;
    }

    public int hashCode() {
        return this.zzIi.hashCode();
    }

    public boolean isWatched() {
        return this.zzaoF;
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getPlaybackPositionInMs());
        zzd.zza(parcel, 3, getId(), false);
        zzd.zza(parcel, 4, getDurationInMs());
        zzd.zza(parcel, 5, isWatched());
        zzd.zza(parcel, 6, getBreakClipIds(), false);
        zzd.zzI(parcel, i);
    }
}
