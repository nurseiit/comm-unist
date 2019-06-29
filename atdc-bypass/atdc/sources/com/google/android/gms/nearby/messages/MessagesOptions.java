package com.google.android.gms.nearby.messages;

import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;

public class MessagesOptions implements Optional {
    @Nullable
    public final String zzbye;
    public final boolean zzbyf;
    public final int zzbyg;
    public final String zzbyh;

    public static class Builder {
        private int zzbyi = -1;

        public MessagesOptions build() {
            return new MessagesOptions(this, null);
        }

        public Builder setPermissions(int i) {
            this.zzbyi = i;
            return this;
        }
    }

    private MessagesOptions(Builder builder) {
        this.zzbye = null;
        this.zzbyf = false;
        this.zzbyg = builder.zzbyi;
        this.zzbyh = null;
    }

    /* synthetic */ MessagesOptions(Builder builder, zze zze) {
        this(builder);
    }
}
