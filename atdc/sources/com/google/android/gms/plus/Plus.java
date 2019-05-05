package com.google.android.gms.plus;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbay;
import com.google.android.gms.internal.zzcqv;
import com.google.android.gms.internal.zzcqy;
import com.google.android.gms.internal.zzcqz;
import com.google.android.gms.internal.zzcra;
import com.google.android.gms.plus.internal.zzh;
import java.util.HashSet;
import java.util.Set;

@Deprecated
public final class Plus {
    @Deprecated
    public static final Api<PlusOptions> API = new Api("Plus.API", zzajS, zzajR);
    @Deprecated
    public static final Account AccountApi = new zzcqv();
    @Deprecated
    public static final People PeopleApi = new zzcra();
    public static final Scope SCOPE_PLUS_LOGIN = new Scope(Scopes.PLUS_LOGIN);
    public static final Scope SCOPE_PLUS_PROFILE = new Scope(Scopes.PLUS_ME);
    public static final zzf<zzh> zzajR = new zzf();
    private static com.google.android.gms.common.api.Api.zza<zzh, PlusOptions> zzajS = new zzc();
    @Deprecated
    private static zzb zzbAp = new zzcqz();
    private static zza zzbAq = new zzcqy();

    public static final class PlusOptions implements Optional {
        private String zzbAr;
        final Set<String> zzbAs;

        public static final class Builder {
            String zzbAr;
            final Set<String> zzbAs = new HashSet();

            public final Builder addActivityTypes(String... strArr) {
                zzbo.zzb((Object) strArr, (Object) "activityTypes may not be null.");
                for (Object add : strArr) {
                    this.zzbAs.add(add);
                }
                return this;
            }

            public final PlusOptions build() {
                return new PlusOptions(this, null);
            }

            public final Builder setServerClientId(String str) {
                this.zzbAr = str;
                return this;
            }
        }

        private PlusOptions() {
            this.zzbAr = null;
            this.zzbAs = new HashSet();
        }

        private PlusOptions(Builder builder) {
            this.zzbAr = builder.zzbAr;
            this.zzbAs = builder.zzbAs;
        }

        /* synthetic */ PlusOptions(Builder builder, zzc zzc) {
            this(builder);
        }

        public static Builder builder() {
            return new Builder();
        }
    }

    public static abstract class zza<R extends Result> extends zzbay<R, zzh> {
        public zza(GoogleApiClient googleApiClient) {
            super(Plus.zzajR, googleApiClient);
        }

        public final /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.setResult((Result) obj);
        }
    }

    private Plus() {
    }

    public static zzh zzc(GoogleApiClient googleApiClient, boolean z) {
        zzbo.zzb(googleApiClient != null, (Object) "GoogleApiClient parameter is required.");
        zzbo.zza(googleApiClient.isConnected(), (Object) "GoogleApiClient must be connected.");
        zzbo.zza(googleApiClient.zza(API), (Object) "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean hasConnectedApi = googleApiClient.hasConnectedApi(API);
        if (!z || hasConnectedApi) {
            return hasConnectedApi ? (zzh) googleApiClient.zza(zzajR) : null;
        } else {
            throw new IllegalStateException("GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call.");
        }
    }
}
