package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import com.google.android.gms.measurement.AppMeasurement.Param;
import com.google.android.gms.plus.PlusShare;
import java.util.HashMap;

public final class zzals extends zzj<zzals> {
    public String zzafa;
    public boolean zzafb;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, this.zzafa);
        hashMap.put(Param.FATAL, Boolean.valueOf(this.zzafb));
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzals zzals = (zzals) zzj;
        if (!TextUtils.isEmpty(this.zzafa)) {
            zzals.zzafa = this.zzafa;
        }
        if (this.zzafb) {
            zzals.zzafb = this.zzafb;
        }
    }
}
