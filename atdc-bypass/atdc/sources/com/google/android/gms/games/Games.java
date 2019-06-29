package com.google.android.gms.games;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.RequiresPermission;
import android.view.View;
import com.google.android.gms.auth.api.signin.GoogleSignInOptionsExtension;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.Api.zze;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.zzab;
import com.google.android.gms.games.internal.api.zzaf;
import com.google.android.gms.games.internal.api.zzav;
import com.google.android.gms.games.internal.api.zzaw;
import com.google.android.gms.games.internal.api.zzax;
import com.google.android.gms.games.internal.api.zzbh;
import com.google.android.gms.games.internal.api.zzbs;
import com.google.android.gms.games.internal.api.zzbt;
import com.google.android.gms.games.internal.api.zzcb;
import com.google.android.gms.games.internal.api.zzcp;
import com.google.android.gms.games.internal.api.zzcq;
import com.google.android.gms.games.internal.api.zzcu;
import com.google.android.gms.games.internal.api.zzdr;
import com.google.android.gms.games.internal.api.zzo;
import com.google.android.gms.games.internal.api.zzp;
import com.google.android.gms.games.internal.api.zzx;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.stats.Stats;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.zzbay;
import com.google.android.gms.internal.zzcah;
import com.google.android.gms.internal.zzcap;
import java.util.ArrayList;

@KeepForSdk
public final class Games {
    public static final Api<GamesOptions> API = new Api("Games.API", zzajS, zzajR);
    public static final Achievements Achievements = new com.google.android.gms.games.internal.api.zza();
    public static final String EXTRA_PLAYER_IDS = "players";
    public static final String EXTRA_STATUS = "status";
    public static final Events Events = new zzp();
    public static final GamesMetadata GamesMetadata = new zzx();
    public static final Invitations Invitations = new zzab();
    public static final Leaderboards Leaderboards = new zzaf();
    public static final Notifications Notifications = new zzaw();
    public static final Players Players = new zzax();
    public static final Quests Quests = new zzbh();
    public static final RealTimeMultiplayer RealTimeMultiplayer = new zzbs();
    public static final Requests Requests = new zzbt();
    public static final Scope SCOPE_GAMES = new Scope(Scopes.GAMES);
    public static final Snapshots Snapshots = new zzcb();
    public static final Stats Stats = new zzcq();
    public static final TurnBasedMultiplayer TurnBasedMultiplayer = new zzcu();
    public static final Videos Videos = new zzdr();
    private static final com.google.android.gms.common.api.Api.zza<GamesClientImpl, GamesOptions> zzaYm = new zzc();
    private static Scope zzaYn = new Scope("https://www.googleapis.com/auth/games_lite");
    public static final Scope zzaYo = new Scope("https://www.googleapis.com/auth/games.firstparty");
    private static Api<GamesOptions> zzaYp = new Api("Games.API_1P", zzaYm, zzajR);
    private static zzcah zzaYq = new zzo();
    private static Multiplayer zzaYr = new zzav();
    private static zzcap zzaYs = new zzcp();
    static final zzf<GamesClientImpl> zzajR = new zzf();
    private static final com.google.android.gms.common.api.Api.zza<GamesClientImpl, GamesOptions> zzajS = new zzb();

    @KeepForSdk
    @Deprecated
    public interface GetServerAuthCodeResult extends Result {
        @KeepForSdk
        String getCode();
    }

    static abstract class zzb extends com.google.android.gms.common.api.Api.zza<GamesClientImpl, GamesOptions> {
        private zzb() {
        }

        /* synthetic */ zzb(zzb zzb) {
            this();
        }

        public final int getPriority() {
            return 1;
        }

        public final /* synthetic */ zze zza(Context context, Looper looper, zzq zzq, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            GamesOptions gamesOptions = (GamesOptions) obj;
            if (gamesOptions == null) {
                gamesOptions = new Builder().build();
            }
            return new GamesClientImpl(context, looper, zzq, gamesOptions, connectionCallbacks, onConnectionFailedListener);
        }
    }

    public static final class GamesOptions implements GoogleSignInOptionsExtension, Optional {
        private ArrayList<String> zzaYA;
        private boolean zzaYB;
        public final boolean zzaYC;
        private boolean zzaYD;
        public final boolean zzaYu;
        private boolean zzaYv;
        private int zzaYw;
        private boolean zzaYx;
        private int zzaYy;
        private String zzaYz;

        public static final class Builder {
            private ArrayList<String> zzaYA;
            private boolean zzaYB;
            private boolean zzaYC;
            private boolean zzaYD;
            private boolean zzaYu;
            private boolean zzaYv;
            private int zzaYw;
            private boolean zzaYx;
            private int zzaYy;
            private String zzaYz;

            private Builder() {
                this.zzaYu = false;
                this.zzaYv = true;
                this.zzaYw = 17;
                this.zzaYx = false;
                this.zzaYy = 4368;
                this.zzaYz = null;
                this.zzaYA = new ArrayList();
                this.zzaYB = false;
                this.zzaYC = false;
                this.zzaYD = false;
            }

            /* synthetic */ Builder(zzb zzb) {
                this();
            }

            public final GamesOptions build() {
                return new GamesOptions(false, this.zzaYv, this.zzaYw, false, this.zzaYy, null, this.zzaYA, false, false, false, null);
            }

            public final Builder setSdkVariant(int i) {
                this.zzaYy = i;
                return this;
            }

            public final Builder setShowConnectingPopup(boolean z) {
                this.zzaYv = z;
                this.zzaYw = 17;
                return this;
            }

            public final Builder setShowConnectingPopup(boolean z, int i) {
                this.zzaYv = z;
                this.zzaYw = i;
                return this;
            }
        }

        private GamesOptions(boolean z, boolean z2, int i, boolean z3, int i2, String str, ArrayList<String> arrayList, boolean z4, boolean z5, boolean z6) {
            this.zzaYu = z;
            this.zzaYv = z2;
            this.zzaYw = i;
            this.zzaYx = z3;
            this.zzaYy = i2;
            this.zzaYz = str;
            this.zzaYA = arrayList;
            this.zzaYB = z4;
            this.zzaYC = z5;
            this.zzaYD = z6;
        }

        /* synthetic */ GamesOptions(boolean z, boolean z2, int i, boolean z3, int i2, String str, ArrayList arrayList, boolean z4, boolean z5, boolean z6, zzb zzb) {
            this(false, z2, i, false, i2, null, arrayList, false, false, false);
        }

        public static Builder builder() {
            return new Builder();
        }

        public final Bundle toBundle() {
            return zzui();
        }

        public final Bundle zzui() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.zzaYu);
            bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.zzaYv);
            bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.zzaYw);
            bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.zzaYx);
            bundle.putInt("com.google.android.gms.games.key.sdkVariant", this.zzaYy);
            bundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", this.zzaYz);
            bundle.putStringArrayList("com.google.android.gms.games.key.proxyApis", this.zzaYA);
            bundle.putBoolean("com.google.android.gms.games.key.requireGooglePlus", this.zzaYB);
            bundle.putBoolean("com.google.android.gms.games.key.unauthenticated", this.zzaYC);
            bundle.putBoolean("com.google.android.gms.games.key.skipWelcomePopup", this.zzaYD);
            return bundle;
        }
    }

    public static abstract class zza<R extends Result> extends zzbay<R, GamesClientImpl> {
        public zza(GoogleApiClient googleApiClient) {
            super(Games.zzajR, googleApiClient);
        }

        public final /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.setResult((Result) obj);
        }
    }

    static abstract class zzc extends zza<GetServerAuthCodeResult> {
        private zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* synthetic */ zzc(GoogleApiClient googleApiClient, zzb zzb) {
            this(googleApiClient);
        }

        public final /* synthetic */ Result zzb(Status status) {
            return new zzf(this, status);
        }
    }

    static abstract class zzd extends zza<Status> {
        private zzd(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* synthetic */ zzd(GoogleApiClient googleApiClient, zzb zzb) {
            this(googleApiClient);
        }

        public final /* synthetic */ Result zzb(Status status) {
            return status;
        }
    }

    private Games() {
    }

    public static String getAppId(GoogleApiClient googleApiClient) {
        return zza(googleApiClient, true).zzhl();
    }

    @RequiresPermission("android.permission.GET_ACCOUNTS")
    public static String getCurrentAccountName(GoogleApiClient googleApiClient) {
        return zza(googleApiClient, true).zzus();
    }

    @KeepForSdk
    @Deprecated
    public static PendingResult<GetServerAuthCodeResult> getGamesServerAuthCode(GoogleApiClient googleApiClient, String str) {
        zzbo.zzh(str, "Please provide a valid serverClientId");
        return googleApiClient.zze(new zzd(googleApiClient, str));
    }

    public static int getSdkVariant(GoogleApiClient googleApiClient) {
        return zza(googleApiClient, true).zzuF();
    }

    public static Intent getSettingsIntent(GoogleApiClient googleApiClient) {
        return zza(googleApiClient, true).zzuE();
    }

    public static void setGravityForPopups(GoogleApiClient googleApiClient, int i) {
        GamesClientImpl zza = zza(googleApiClient, false);
        if (zza != null) {
            zza.zzaZ(i);
        }
    }

    public static void setViewForPopups(GoogleApiClient googleApiClient, View view) {
        zzbo.zzu(view);
        GamesClientImpl zza = zza(googleApiClient, false);
        if (zza != null) {
            zza.zzs(view);
        }
    }

    public static PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return googleApiClient.zze(new zze(googleApiClient));
    }

    public static GamesClientImpl zza(GoogleApiClient googleApiClient, boolean z) {
        zzbo.zzb(googleApiClient != null, (Object) "GoogleApiClient parameter is required.");
        zzbo.zza(googleApiClient.isConnected(), (Object) "GoogleApiClient must be connected.");
        return zzb(googleApiClient, z);
    }

    public static GamesClientImpl zzb(GoogleApiClient googleApiClient, boolean z) {
        zzbo.zza(googleApiClient.zza(API), (Object) "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean hasConnectedApi = googleApiClient.hasConnectedApi(API);
        if (!z || hasConnectedApi) {
            return hasConnectedApi ? (GamesClientImpl) googleApiClient.zza(zzajR) : null;
        } else {
            throw new IllegalStateException("GoogleApiClient has an optional Games.API and is not connected to Games. Use GoogleApiClient.hasConnectedApi(Games.API) to guard this call.");
        }
    }

    public static GamesClientImpl zzf(GoogleApiClient googleApiClient) {
        return zza(googleApiClient, true);
    }
}
