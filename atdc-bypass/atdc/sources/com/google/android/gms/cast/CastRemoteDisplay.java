package com.google.android.gms.cast;

import android.content.Context;
import android.view.Display;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzayh;
import com.google.android.gms.internal.zzayn;
import com.google.android.gms.internal.zzayw;
import com.google.android.gms.internal.zzazf;
import com.google.android.gms.internal.zzcaf;

public final class CastRemoteDisplay {
    public static final Api<CastRemoteDisplayOptions> API = new Api("CastRemoteDisplay.API", zzajS, zzayn.zzayq);
    public static final int CONFIGURATION_INTERACTIVE_NONREALTIME = 2;
    public static final int CONFIGURATION_INTERACTIVE_REALTIME = 1;
    public static final int CONFIGURATION_NONINTERACTIVE = 3;
    public static final CastRemoteDisplayApi CastRemoteDisplayApi = new zzayw(API);
    private static final zza<zzazf, CastRemoteDisplayOptions> zzajS = new zzo();

    public interface CastRemoteDisplaySessionCallbacks {
        void onRemoteDisplayEnded(Status status);
    }

    public @interface Configuration {
    }

    public interface CastRemoteDisplaySessionResult extends Result {
        Display getPresentationDisplay();
    }

    public static final class CastRemoteDisplayOptions implements HasOptions {
        final CastDevice zzaoU;
        final CastRemoteDisplaySessionCallbacks zzapm;
        final int zzapn;

        public static final class Builder {
            CastDevice zzaoX;
            CastRemoteDisplaySessionCallbacks zzapo;
            int zzapp = 2;

            public Builder(CastDevice castDevice, CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks) {
                zzbo.zzb((Object) castDevice, (Object) "CastDevice parameter cannot be null");
                this.zzaoX = castDevice;
                this.zzapo = castRemoteDisplaySessionCallbacks;
            }

            public final CastRemoteDisplayOptions build() {
                return new CastRemoteDisplayOptions(this, null);
            }

            public final Builder setConfigPreset(@Configuration int i) {
                this.zzapp = i;
                return this;
            }
        }

        private CastRemoteDisplayOptions(Builder builder) {
            this.zzaoU = builder.zzaoX;
            this.zzapm = builder.zzapo;
            this.zzapn = builder.zzapp;
        }

        /* synthetic */ CastRemoteDisplayOptions(Builder builder, zzo zzo) {
            this(builder);
        }
    }

    private CastRemoteDisplay() {
    }

    public static final boolean isRemoteDisplaySdkSupported(Context context) {
        zzayh.initialize(context);
        return ((Boolean) zzcaf.zzuc().zzb(zzayh.zzayo)).booleanValue();
    }
}
