package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbe;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

@zzzn
public final class zzaee extends zza {
    public static final Creator<zzaee> CREATOR = new zzaef();
    public final String type;
    public final int zzWW;

    public zzaee(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public zzaee(String str, int i) {
        this.type = str;
        this.zzWW = i;
    }

    @Nullable
    public static zzaee zza(JSONArray jSONArray) throws JSONException {
        return (jSONArray == null || jSONArray.length() == 0) ? null : new zzaee(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    @Nullable
    public static zzaee zzaz(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return zza(new JSONArray(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzaee)) {
            return false;
        }
        zzaee zzaee = (zzaee) obj;
        if (zzbe.equal(this.type, zzaee.type) && zzbe.equal(Integer.valueOf(this.zzWW), Integer.valueOf(zzaee.zzWW))) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.type, Integer.valueOf(this.zzWW)});
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.type, false);
        zzd.zzc(parcel, 3, this.zzWW);
        zzd.zzI(parcel, i);
    }
}
