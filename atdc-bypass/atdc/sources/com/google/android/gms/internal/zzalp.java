package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import java.util.HashMap;

public final class zzalp extends zzj<zzalp> {
    public int zzNY;
    public int zzNZ;
    private String zzaeT;
    public int zzaeU;
    public int zzaeV;
    public int zzaeW;

    public final String getLanguage() {
        return this.zzaeT;
    }

    public final void setLanguage(String str) {
        this.zzaeT = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("language", this.zzaeT);
        hashMap.put("screenColors", Integer.valueOf(this.zzaeU));
        hashMap.put("screenWidth", Integer.valueOf(this.zzNY));
        hashMap.put("screenHeight", Integer.valueOf(this.zzNZ));
        hashMap.put("viewportWidth", Integer.valueOf(this.zzaeV));
        hashMap.put("viewportHeight", Integer.valueOf(this.zzaeW));
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalp zzalp = (zzalp) zzj;
        if (this.zzaeU != 0) {
            zzalp.zzaeU = this.zzaeU;
        }
        if (this.zzNY != 0) {
            zzalp.zzNY = this.zzNY;
        }
        if (this.zzNZ != 0) {
            zzalp.zzNZ = this.zzNZ;
        }
        if (this.zzaeV != 0) {
            zzalp.zzaeV = this.zzaeV;
        }
        if (this.zzaeW != 0) {
            zzalp.zzaeW = this.zzaeW;
        }
        if (!TextUtils.isEmpty(this.zzaeT)) {
            zzalp.zzaeT = this.zzaeT;
        }
    }
}
