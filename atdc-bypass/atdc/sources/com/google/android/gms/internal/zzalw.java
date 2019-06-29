package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import com.google.android.gms.plus.PlusShare;
import java.util.HashMap;

public final class zzalw extends zzj<zzalw> {
    public String mCategory;
    public String zzaeY;
    public String zzafs;
    public long zzaft;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("variableName", this.zzafs);
        hashMap.put("timeInMillis", Long.valueOf(this.zzaft));
        hashMap.put("category", this.mCategory);
        hashMap.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, this.zzaeY);
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalw zzalw = (zzalw) zzj;
        if (!TextUtils.isEmpty(this.zzafs)) {
            zzalw.zzafs = this.zzafs;
        }
        if (this.zzaft != 0) {
            zzalw.zzaft = this.zzaft;
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzalw.mCategory = this.mCategory;
        }
        if (!TextUtils.isEmpty(this.zzaeY)) {
            zzalw.zzaeY = this.zzaeY;
        }
    }
}
