package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzj;
import com.google.android.gms.common.internal.zzbo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;

public final class zzalt extends zzj<zzalt> {
    private String zzafc;
    private String zzafd;
    private String zzafe;
    private String zzaff;
    private boolean zzafg;
    private String zzafh;
    private boolean zzafi;
    private double zzafj;

    public final String getUserId() {
        return this.zzafe;
    }

    public final void setClientId(String str) {
        this.zzafd = str;
    }

    public final void setUserId(String str) {
        this.zzafe = str;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("hitType", this.zzafc);
        hashMap.put("clientId", this.zzafd);
        hashMap.put("userId", this.zzafe);
        hashMap.put("androidAdId", this.zzaff);
        hashMap.put("AdTargetingEnabled", Boolean.valueOf(this.zzafg));
        hashMap.put("sessionControl", this.zzafh);
        hashMap.put("nonInteraction", Boolean.valueOf(this.zzafi));
        hashMap.put("sampleRate", Double.valueOf(this.zzafj));
        return zzj.zzh(hashMap);
    }

    public final void zzG(boolean z) {
        this.zzafg = z;
    }

    public final void zzH(boolean z) {
        this.zzafi = true;
    }

    public final /* synthetic */ void zzb(zzj zzj) {
        zzalt zzalt = (zzalt) zzj;
        if (!TextUtils.isEmpty(this.zzafc)) {
            zzalt.zzafc = this.zzafc;
        }
        if (!TextUtils.isEmpty(this.zzafd)) {
            zzalt.zzafd = this.zzafd;
        }
        if (!TextUtils.isEmpty(this.zzafe)) {
            zzalt.zzafe = this.zzafe;
        }
        if (!TextUtils.isEmpty(this.zzaff)) {
            zzalt.zzaff = this.zzaff;
        }
        boolean z = true;
        if (this.zzafg) {
            zzalt.zzafg = true;
        }
        if (!TextUtils.isEmpty(this.zzafh)) {
            zzalt.zzafh = this.zzafh;
        }
        if (this.zzafi) {
            zzalt.zzafi = this.zzafi;
        }
        if (this.zzafj != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            double d = this.zzafj;
            if (d < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || d > 100.0d) {
                z = false;
            }
            zzbo.zzb(z, (Object) "Sample rate must be between 0% and 100%");
            zzalt.zzafj = d;
        }
    }

    public final void zzbj(String str) {
        this.zzafc = str;
    }

    public final void zzbk(String str) {
        this.zzaff = str;
    }

    public final String zzjW() {
        return this.zzafc;
    }

    public final String zzjX() {
        return this.zzafd;
    }

    public final String zzjY() {
        return this.zzaff;
    }

    public final boolean zzjZ() {
        return this.zzafg;
    }

    public final String zzka() {
        return this.zzafh;
    }

    public final boolean zzkb() {
        return this.zzafi;
    }

    public final double zzkc() {
        return this.zzafj;
    }
}
