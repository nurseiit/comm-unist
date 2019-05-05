package com.google.android.gms.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfigInfo;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;

public final class abi implements FirebaseRemoteConfigInfo {
    private long zzcnI;
    private int zzcnJ;
    private FirebaseRemoteConfigSettings zzcnK;

    public final FirebaseRemoteConfigSettings getConfigSettings() {
        return this.zzcnK;
    }

    public final long getFetchTimeMillis() {
        return this.zzcnI;
    }

    public final int getLastFetchStatus() {
        return this.zzcnJ;
    }

    public final void setConfigSettings(FirebaseRemoteConfigSettings firebaseRemoteConfigSettings) {
        this.zzcnK = firebaseRemoteConfigSettings;
    }

    public final void zzaK(long j) {
        this.zzcnI = j;
    }

    public final void zzce(int i) {
        this.zzcnJ = i;
    }
}
