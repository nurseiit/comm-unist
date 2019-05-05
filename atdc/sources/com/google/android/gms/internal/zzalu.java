package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.analytics.zzj;
import java.util.HashMap;
import java.util.UUID;

public final class zzalu extends zzj<zzalu> {
    private int zzafk;
    private int zzafl;
    private String zzafm;
    private String zzafn;
    private boolean zzafo;
    private boolean zzafp;
    private String zzul;

    public zzalu() {
        this(false);
    }

    private zzalu(boolean z) {
        UUID randomUUID = UUID.randomUUID();
        int leastSignificantBits = (int) (randomUUID.getLeastSignificantBits() & 2147483647L);
        if (leastSignificantBits == 0) {
            leastSignificantBits = (int) (randomUUID.getMostSignificantBits() & 2147483647L);
            if (leastSignificantBits == 0) {
                Log.e("GAv4", "UUID.randomUUID() returned 0.");
                leastSignificantBits = Integer.MAX_VALUE;
            }
        }
        this(false, leastSignificantBits);
    }

    private zzalu(boolean z, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Given Integer is zero");
        }
        this.zzafk = i;
        this.zzafp = false;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", this.zzul);
        hashMap.put("interstitial", Boolean.valueOf(this.zzafo));
        hashMap.put("automatic", Boolean.valueOf(this.zzafp));
        hashMap.put("screenId", Integer.valueOf(this.zzafk));
        hashMap.put("referrerScreenId", Integer.valueOf(this.zzafl));
        hashMap.put("referrerScreenName", this.zzafm);
        hashMap.put("referrerUri", this.zzafn);
        return zzj.zzh(hashMap);
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalu zzalu = (zzalu) zzj;
        if (!TextUtils.isEmpty(this.zzul)) {
            zzalu.zzul = this.zzul;
        }
        if (this.zzafk != 0) {
            zzalu.zzafk = this.zzafk;
        }
        if (this.zzafl != 0) {
            zzalu.zzafl = this.zzafl;
        }
        if (!TextUtils.isEmpty(this.zzafm)) {
            zzalu.zzafm = this.zzafm;
        }
        if (!TextUtils.isEmpty(this.zzafn)) {
            String str = this.zzafn;
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            zzalu.zzafn = str;
        }
        if (this.zzafo) {
            zzalu.zzafo = this.zzafo;
        }
        if (this.zzafp) {
            zzalu.zzafp = this.zzafp;
        }
    }

    public final String zzkd() {
        return this.zzul;
    }

    public final int zzke() {
        return this.zzafk;
    }

    public final String zzkf() {
        return this.zzafn;
    }
}
