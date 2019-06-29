package com.google.firebase.remoteconfig;

public class FirebaseRemoteConfigSettings {
    private final boolean zzcnA;

    public static class Builder {
        private boolean zzcnA = false;

        public FirebaseRemoteConfigSettings build() {
            return new FirebaseRemoteConfigSettings(this, null);
        }

        public Builder setDeveloperModeEnabled(boolean z) {
            this.zzcnA = z;
            return this;
        }
    }

    private FirebaseRemoteConfigSettings(Builder builder) {
        this.zzcnA = builder.zzcnA;
    }

    /* synthetic */ FirebaseRemoteConfigSettings(Builder builder, zzb zzb) {
        this(builder);
    }

    public boolean isDeveloperModeEnabled() {
        return this.zzcnA;
    }
}
