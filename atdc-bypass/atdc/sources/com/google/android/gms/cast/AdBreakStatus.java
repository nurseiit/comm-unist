package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzaye;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class AdBreakStatus extends zza {
    public static final int AD_BREAK_CLIP_NOT_SKIPPABLE = -1;
    public static final Creator<AdBreakStatus> CREATOR = new zzc();
    private final long zzaoH;
    private final long zzaoI;
    private final String zzaoJ;
    private final String zzaoK;
    private final long zzaoL;

    AdBreakStatus(long j, long j2, String str, String str2, long j3) {
        this.zzaoH = j;
        this.zzaoI = j2;
        this.zzaoJ = str;
        this.zzaoK = str2;
        this.zzaoL = j3;
    }

    static AdBreakStatus zzj(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("currentBreakTime") || !jSONObject.has("currentBreakClipTime")) {
            return null;
        }
        try {
            long j = (long) (((double) jSONObject.getLong("currentBreakTime")) * 1000.0d);
            long j2 = (long) (((double) jSONObject.getLong("currentBreakClipTime")) * 1000.0d);
            String optString = jSONObject.optString("breakId", null);
            String optString2 = jSONObject.optString("breakClipId", null);
            long optLong = jSONObject.optLong("whenSkippable", -1);
            if (optLong != -1) {
                optLong = (long) (((double) optLong) * 1000.0d);
            }
            return new AdBreakStatus(j, j2, optString, optString2, optLong);
        } catch (JSONException e) {
            Log.d("AdBreakInfo", String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", new Object[]{e.getMessage()}));
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakStatus)) {
            return false;
        }
        AdBreakStatus adBreakStatus = (AdBreakStatus) obj;
        return this.zzaoH == adBreakStatus.zzaoH && this.zzaoI == adBreakStatus.zzaoI && zzaye.zza(this.zzaoJ, adBreakStatus.zzaoJ) && zzaye.zza(this.zzaoK, adBreakStatus.zzaoK) && this.zzaoL == adBreakStatus.zzaoL;
    }

    public String getBreakClipId() {
        return this.zzaoK;
    }

    public String getBreakId() {
        return this.zzaoJ;
    }

    public long getCurrentBreakClipTimeInMs() {
        return this.zzaoI;
    }

    public long getCurrentBreakTimeInMs() {
        return this.zzaoH;
    }

    public long getWhenSkippableInMs() {
        return this.zzaoL;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzaoH), Long.valueOf(this.zzaoI), this.zzaoJ, this.zzaoK, Long.valueOf(this.zzaoL)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, getCurrentBreakTimeInMs());
        zzd.zza(parcel, 3, getCurrentBreakClipTimeInMs());
        zzd.zza(parcel, 4, getBreakId(), false);
        zzd.zza(parcel, 5, getBreakClipId(), false);
        zzd.zza(parcel, 6, getWhenSkippableInMs());
        zzd.zzI(parcel, i);
    }
}
