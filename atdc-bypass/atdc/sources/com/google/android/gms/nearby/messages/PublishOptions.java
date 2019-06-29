package com.google.android.gms.nearby.messages;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;

public final class PublishOptions {
    public static final PublishOptions DEFAULT = new Builder().build();
    private final Strategy zzbyj;
    @Nullable
    private final PublishCallback zzbyk;

    public static class Builder {
        private Strategy zzbyj = Strategy.DEFAULT;
        @Nullable
        private PublishCallback zzbyk;

        public PublishOptions build() {
            return new PublishOptions(this.zzbyj, this.zzbyk, null);
        }

        public Builder setCallback(PublishCallback publishCallback) {
            this.zzbyk = (PublishCallback) zzbo.zzu(publishCallback);
            return this;
        }

        public Builder setStrategy(Strategy strategy) {
            this.zzbyj = (Strategy) zzbo.zzu(strategy);
            return this;
        }
    }

    private PublishOptions(Strategy strategy, @Nullable PublishCallback publishCallback) {
        this.zzbyj = strategy;
        this.zzbyk = publishCallback;
    }

    /* synthetic */ PublishOptions(Strategy strategy, PublishCallback publishCallback, zzf zzf) {
        this(strategy, publishCallback);
    }

    @Nullable
    public final PublishCallback getCallback() {
        return this.zzbyk;
    }

    public final Strategy getStrategy() {
        return this.zzbyj;
    }
}
