package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import org.json.JSONObject;

@zzzn
public final class zzafg {
    public final int errorCode;
    public final zzaae zzUj;
    @Nullable
    public final JSONObject zzXL;
    public final zzub zzXN;
    public final long zzXR;
    public final long zzXS;
    public final zzig zzXX;
    public final zzaai zzXY;
    @Nullable
    public final zziv zzvX;

    public zzafg(zzaae zzaae, zzaai zzaai, zzub zzub, zziv zziv, int i, long j, long j2, JSONObject jSONObject, zzig zzig) {
        this.zzUj = zzaae;
        this.zzXY = zzaai;
        this.zzXN = zzub;
        this.zzvX = zziv;
        this.errorCode = i;
        this.zzXR = j;
        this.zzXS = j2;
        this.zzXL = jSONObject;
        this.zzXX = zzig;
    }

    public zzafg(zzaae zzaae, zzaai zzaai, zzub zzub, zziv zziv, int i, long j, long j2, JSONObject jSONObject, zzij zzij) {
        this.zzUj = zzaae;
        this.zzXY = zzaai;
        this.zzXN = zzub;
        this.zzvX = zziv;
        this.errorCode = i;
        this.zzXR = j;
        this.zzXS = j2;
        this.zzXL = jSONObject;
        this.zzXX = new zzig(zzij, ((Boolean) zzbs.zzbL().zzd(zzmo.zzGC)).booleanValue());
    }
}
