package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzaeq extends zza {
    public static final Creator<zzaeq> CREATOR = new zzaer();
    public final String zzXr;
    public final String zzXs;
    public final boolean zzXt;
    public final boolean zzXu;
    public final List<String> zzXv;
    public final boolean zzXw;
    public final boolean zzXx;

    public zzaeq(String str, String str2, boolean z, boolean z2, List<String> list, boolean z3, boolean z4) {
        this.zzXr = str;
        this.zzXs = str2;
        this.zzXt = z;
        this.zzXu = z2;
        this.zzXv = list;
        this.zzXw = z3;
        this.zzXx = z4;
    }

    @Nullable
    public static zzaeq zzf(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("click_string", "");
        String optString2 = jSONObject.optString("report_url", "");
        boolean optBoolean = jSONObject.optBoolean("rendered_ad_enabled", false);
        boolean optBoolean2 = jSONObject.optBoolean("non_malicious_reporting_enabled", false);
        JSONArray optJSONArray = jSONObject.optJSONArray("allowed_headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < optJSONArray.length(); i++) {
            String optString3 = optJSONArray.optString(i);
            if (!TextUtils.isEmpty(optString3)) {
                arrayList.add(optString3.toLowerCase(Locale.ENGLISH));
            }
        }
        return new zzaeq(optString, optString2, optBoolean, optBoolean2, arrayList, jSONObject.optBoolean("protection_enabled", false), jSONObject.optBoolean("malicious_reporting_enabled", false));
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzXr, false);
        zzd.zza(parcel, 3, this.zzXs, false);
        zzd.zza(parcel, 4, this.zzXt);
        zzd.zza(parcel, 5, this.zzXu);
        zzd.zzb(parcel, 6, this.zzXv, false);
        zzd.zza(parcel, 7, this.zzXw);
        zzd.zza(parcel, 8, this.zzXx);
        zzd.zzI(parcel, i);
    }
}
