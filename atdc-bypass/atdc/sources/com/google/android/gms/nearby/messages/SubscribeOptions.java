package com.google.android.gms.nearby.messages;

import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.zzbo;

public final class SubscribeOptions {
    public static final SubscribeOptions DEFAULT = new Builder().build();
    public final boolean zzbyA;
    public final int zzbyB;
    private final Strategy zzbyj;
    private final MessageFilter zzbyy;
    @Nullable
    private final SubscribeCallback zzbyz;

    public static class Builder {
        private Strategy zzbyj = Strategy.DEFAULT;
        private MessageFilter zzbyy = MessageFilter.INCLUDE_ALL_MY_TYPES;
        @Nullable
        private SubscribeCallback zzbyz;

        public SubscribeOptions build() {
            return new SubscribeOptions(this.zzbyj, this.zzbyy, this.zzbyz, false, 0, null);
        }

        public Builder setCallback(SubscribeCallback subscribeCallback) {
            this.zzbyz = (SubscribeCallback) zzbo.zzu(subscribeCallback);
            return this;
        }

        public Builder setFilter(MessageFilter messageFilter) {
            this.zzbyy = messageFilter;
            return this;
        }

        public Builder setStrategy(Strategy strategy) {
            this.zzbyj = strategy;
            return this;
        }
    }

    private SubscribeOptions(Strategy strategy, MessageFilter messageFilter, @Nullable SubscribeCallback subscribeCallback, boolean z, int i) {
        this.zzbyj = strategy;
        this.zzbyy = messageFilter;
        this.zzbyz = subscribeCallback;
        this.zzbyA = z;
        this.zzbyB = i;
    }

    /* synthetic */ SubscribeOptions(Strategy strategy, MessageFilter messageFilter, SubscribeCallback subscribeCallback, boolean z, int i, zzh zzh) {
        this(strategy, messageFilter, subscribeCallback, false, 0);
    }

    @Nullable
    public final SubscribeCallback getCallback() {
        return this.zzbyz;
    }

    public final MessageFilter getFilter() {
        return this.zzbyy;
    }

    public final Strategy getStrategy() {
        return this.zzbyj;
    }
}
