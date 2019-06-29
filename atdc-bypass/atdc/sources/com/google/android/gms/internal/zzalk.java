package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import java.util.HashMap;

public final class zzalk extends zzj<zzalk> {
    private String mAppId;
    private String zzaeH;
    private String zzaeI;
    private String zzaeJ;

    public final void setAppId(String str) {
        this.mAppId = str;
    }

    public final void setAppInstallerId(String str) {
        this.zzaeJ = str;
    }

    public final void setAppName(String str) {
        this.zzaeH = str;
    }

    public final void setAppVersion(String str) {
        this.zzaeI = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("appName", this.zzaeH);
        hashMap.put("appVersion", this.zzaeI);
        hashMap.put("appId", this.mAppId);
        hashMap.put("appInstallerId", this.zzaeJ);
        return zzj.zzh(hashMap);
    }

    /* renamed from: zza */
    public final void zzb(zzalk zzalk) {
        if (!TextUtils.isEmpty(this.zzaeH)) {
            zzalk.zzaeH = this.zzaeH;
        }
        if (!TextUtils.isEmpty(this.zzaeI)) {
            zzalk.zzaeI = this.zzaeI;
        }
        if (!TextUtils.isEmpty(this.mAppId)) {
            zzalk.mAppId = this.mAppId;
        }
        if (!TextUtils.isEmpty(this.zzaeJ)) {
            zzalk.zzaeJ = this.zzaeJ;
        }
    }

    public final String zzhl() {
        return this.mAppId;
    }

    public final String zzjG() {
        return this.zzaeH;
    }

    public final String zzjH() {
        return this.zzaeI;
    }

    public final String zzjI() {
        return this.zzaeJ;
    }
}
