package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzaye;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class AdBreakClipInfo extends zza {
    public static final Creator<AdBreakClipInfo> CREATOR = new zza();
    private final String zzAk;
    private final String zzIi;
    private final String zzaoA;
    private final String zzaoB;
    private String zzaoC;
    private JSONObject zzaoD;
    private final String zzaoy;
    private final long zzaoz;

    AdBreakClipInfo(String str, String str2, long j, String str3, String str4, String str5, String str6) {
        this.zzIi = str;
        this.zzaoy = str2;
        this.zzaoz = j;
        this.zzAk = str3;
        this.zzaoA = str4;
        this.zzaoB = str5;
        this.zzaoC = str6;
        JSONObject jSONObject;
        if (TextUtils.isEmpty(this.zzaoC)) {
            jSONObject = new JSONObject();
            this.zzaoD = jSONObject;
            return;
        }
        try {
            this.zzaoD = new JSONObject(str6);
        } catch (JSONException e) {
            Log.w("AdBreakClipInfo", String.format(Locale.ROOT, "Error creating AdBreakClipInfo: %s", new Object[]{e.getMessage()}));
            this.zzaoC = null;
            jSONObject = new JSONObject();
        }
    }

    static AdBreakClipInfo zzh(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("id")) {
            return null;
        }
        try {
            String string = jSONObject.getString("id");
            long optLong = (long) (((double) jSONObject.optLong("duration")) * 1000.0d);
            String optString = jSONObject.optString("clickThroughUrl", null);
            String optString2 = jSONObject.optString("contentUrl", null);
            String optString3 = jSONObject.optString("mimeType", null);
            String optString4 = jSONObject.optString("title", null);
            jSONObject = jSONObject.optJSONObject("customData");
            return new AdBreakClipInfo(string, optString4, optLong, optString2, optString3, optString, jSONObject == null ? null : jSONObject.toString());
        } catch (JSONException e) {
            Log.d("AdBreakClipInfo", String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", new Object[]{e.getMessage()}));
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        return zzaye.zza(this.zzIi, adBreakClipInfo.zzIi) && zzaye.zza(this.zzaoy, adBreakClipInfo.zzaoy) && this.zzaoz == adBreakClipInfo.zzaoz && zzaye.zza(this.zzAk, adBreakClipInfo.zzAk) && zzaye.zza(this.zzaoA, adBreakClipInfo.zzaoA) && zzaye.zza(this.zzaoB, adBreakClipInfo.zzaoB) && zzaye.zza(this.zzaoC, adBreakClipInfo.zzaoC);
    }

    public String getClickThroughUrl() {
        return this.zzaoB;
    }

    public String getContentUrl() {
        return this.zzAk;
    }

    public JSONObject getCustomData() {
        return this.zzaoD;
    }

    public long getDurationInMs() {
        return this.zzaoz;
    }

    public String getId() {
        return this.zzIi;
    }

    public String getMimeType() {
        return this.zzaoA;
    }

    public String getTitle() {
        return this.zzaoy;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzIi, this.zzaoy, Long.valueOf(this.zzaoz), this.zzAk, this.zzaoA, this.zzaoB, this.zzaoC});
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getId(), false);
        zzd.zza(parcel, 3, getTitle(), false);
        zzd.zza(parcel, 4, getDurationInMs());
        zzd.zza(parcel, 5, getContentUrl(), false);
        zzd.zza(parcel, 6, getMimeType(), false);
        zzd.zza(parcel, 7, getClickThroughUrl(), false);
        zzd.zza(parcel, 8, this.zzaoC, false);
        zzd.zzI(parcel, i);
    }
}
