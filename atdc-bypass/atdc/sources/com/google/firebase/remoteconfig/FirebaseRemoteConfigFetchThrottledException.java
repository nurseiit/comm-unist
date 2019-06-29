package com.google.firebase.remoteconfig;

public class FirebaseRemoteConfigFetchThrottledException extends FirebaseRemoteConfigFetchException {
    private final long zzaKy;

    public FirebaseRemoteConfigFetchThrottledException(long j) {
        this.zzaKy = j;
    }

    public long getThrottleEndTimeMillis() {
        return this.zzaKy;
    }
}
