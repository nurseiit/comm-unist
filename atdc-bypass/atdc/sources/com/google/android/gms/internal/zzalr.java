package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import com.google.android.gms.plus.PlusShare;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.HashMap;

public final class zzalr extends zzj<zzalr> {
    private String mCategory;
    private String zzaeX;
    private String zzaeY;
    private long zzaeZ;

    public final String getAction() {
        return this.zzaeX;
    }

    public final String getCategory() {
        return this.mCategory;
    }

    public final String getLabel() {
        return this.zzaeY;
    }

    public final long getValue() {
        return this.zzaeZ;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("category", this.mCategory);
        hashMap.put("action", this.zzaeX);
        hashMap.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, this.zzaeY);
        hashMap.put(Param.VALUE, Long.valueOf(this.zzaeZ));
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalr zzalr = (zzalr) zzj;
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzalr.mCategory = this.mCategory;
        }
        if (!TextUtils.isEmpty(this.zzaeX)) {
            zzalr.zzaeX = this.zzaeX;
        }
        if (!TextUtils.isEmpty(this.zzaeY)) {
            zzalr.zzaeY = this.zzaeY;
        }
        if (this.zzaeZ != 0) {
            zzalr.zzaeZ = this.zzaeZ;
        }
    }
}
