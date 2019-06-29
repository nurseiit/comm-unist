package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import java.util.HashMap;

public final class zzalv extends zzj<zzalv> {
    public String zzaeX;
    public String zzafq;
    public String zzafr;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("network", this.zzafq);
        hashMap.put("action", this.zzaeX);
        hashMap.put("target", this.zzafr);
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalv zzalv = (zzalv) zzj;
        if (!TextUtils.isEmpty(this.zzafq)) {
            zzalv.zzafq = this.zzafq;
        }
        if (!TextUtils.isEmpty(this.zzaeX)) {
            zzalv.zzaeX = this.zzaeX;
        }
        if (!TextUtils.isEmpty(this.zzafr)) {
            zzalv.zzafr = this.zzafr;
        }
    }
}
