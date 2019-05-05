.class public final Lcom/google/android/gms/internal/zzaaz;
.super Lcom/google/android/gms/internal/zzafp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzRl:Lcom/google/android/gms/ads/internal/js/zzl; = null

.field private static zzTW:J = 0x0L

.field private static zzTX:Z = false

.field private static zzTY:Lcom/google/android/gms/internal/zzre;

.field private static zzTZ:Lcom/google/android/gms/internal/zzrn;

.field private static zzUa:Lcom/google/android/gms/internal/zzrd;

.field private static final zzuF:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzQT:Ljava/lang/Object;

.field private final zzSm:Lcom/google/android/gms/internal/zzzp;

.field private final zzSn:Lcom/google/android/gms/internal/zzaaf;

.field private zzSo:Lcom/google/android/gms/internal/zzij;

.field private zzUb:Lcom/google/android/gms/ads/internal/js/zzy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzaaz;->zzTW:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaaz;->zzuF:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaaf;Lcom/google/android/gms/internal/zzzp;Lcom/google/android/gms/internal/zzij;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzafp;-><init>(Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaaz;->zzQT:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaaz;->zzSm:Lcom/google/android/gms/internal/zzzp;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaaz;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaaz;->zzSo:Lcom/google/android/gms/internal/zzij;

    sget-object p3, Lcom/google/android/gms/internal/zzaaz;->zzuF:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-boolean p4, Lcom/google/android/gms/internal/zzaaz;->zzTX:Z

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/internal/zzrn;

    invoke-direct {p4}, Lcom/google/android/gms/internal/zzrn;-><init>()V

    sput-object p4, Lcom/google/android/gms/internal/zzaaz;->zzTZ:Lcom/google/android/gms/internal/zzrn;

    new-instance p4, Lcom/google/android/gms/internal/zzre;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaaf;->zzvT:Lcom/google/android/gms/internal/zzaje;

    invoke-direct {p4, p1, p2}, Lcom/google/android/gms/internal/zzre;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;)V

    sput-object p4, Lcom/google/android/gms/internal/zzaaz;->zzTY:Lcom/google/android/gms/internal/zzre;

    new-instance p1, Lcom/google/android/gms/internal/zzabh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzabh;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/zzaaz;->zzUa:Lcom/google/android/gms/internal/zzrd;

    new-instance p1, Lcom/google/android/gms/ads/internal/js/zzl;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaaz;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    iget-object v3, p2, Lcom/google/android/gms/internal/zzaaf;->zzvT:Lcom/google/android/gms/internal/zzaje;

    sget-object p2, Lcom/google/android/gms/internal/zzmo;->zzBX:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzabg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzabg;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzabf;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzabf;-><init>()V

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/js/zzl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Ljava/lang/String;Lcom/google/android/gms/internal/zzahz;Lcom/google/android/gms/internal/zzahz;)V

    sput-object p1, Lcom/google/android/gms/internal/zzaaz;->zzRl:Lcom/google/android/gms/ads/internal/js/zzl;

    sput-boolean v0, Lcom/google/android/gms/internal/zzaaz;->zzTX:Z

    :cond_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/ads/internal/js/zzy;)Lcom/google/android/gms/ads/internal/js/zzy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaz;->zzUb:Lcom/google/android/gms/ads/internal/js/zzy;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/internal/zzzp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaaz;->zzSm:Lcom/google/android/gms/internal/zzzp;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbI()Lcom/google/android/gms/internal/zzacd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzacd;->zzn(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzacb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error grabbing device info: "

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzabk;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzabk;-><init>()V

    iput-object p1, v4, Lcom/google/android/gms/internal/zzabk;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzabk;->zzUk:Lcom/google/android/gms/internal/zzacb;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabk;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Cannot get advertising id info"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "request_id"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "request_param"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    const-string p1, "adid"

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lat"

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzagz;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    return-object v1
.end method

.method protected static zza(Lcom/google/android/gms/ads/internal/js/zza;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/zzaaz;->zzTZ:Lcom/google/android/gms/internal/zzrn;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzaaz;->zzTY:Lcom/google/android/gms/internal/zzre;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzaaz;->zzUa:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/ads/internal/js/zzy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaaz;->zzUb:Lcom/google/android/gms/ads/internal/js/zzy;

    return-object p0
.end method

.method protected static zzb(Lcom/google/android/gms/ads/internal/js/zza;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/zzaaz;->zzTZ:Lcom/google/android/gms/internal/zzrn;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzaaz;->zzTY:Lcom/google/android/gms/internal/zzre;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzaaz;->zzUa:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;
    .locals 10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {}, Lcom/google/android/gms/internal/zzagz;->zzhO()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/zzaaz;->zzTZ:Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/zzrn;->zzS(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzabb;

    invoke-direct {v7, p0, v1, v0}, Lcom/google/android/gms/internal/zzabb;-><init>(Lcom/google/android/gms/internal/zzaaz;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/internal/zzaaz;->zzTW:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v3

    sub-long v3, v0, v8

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v3, v4, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/zzabt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaae;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaai;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaai;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    :cond_2
    return-object p1

    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object p1

    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object p1

    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/zzaai;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    return-object p1
.end method

.method static synthetic zzgD()Lcom/google/android/gms/internal/zzrn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaaz;->zzTZ:Lcom/google/android/gms/internal/zzrn;

    return-object v0
.end method

.method static synthetic zzgE()Lcom/google/android/gms/ads/internal/js/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaaz;->zzRl:Lcom/google/android/gms/ads/internal/js/zzl;

    return-object v0
.end method


# virtual methods
.method public final onStop()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaz;->zzQT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzabe;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzabe;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzbd()V
    .locals 14

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaew;->zzw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/internal/zzaae;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaaz;->zzSn:Lcom/google/android/gms/internal/zzaaf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaew;->zzu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaew;->zzv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v4, -0x1

    move-object v2, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzaaf;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaz;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzaew;->zzh(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/zzaaz;->zzd(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzaai;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v7

    new-instance v0, Lcom/google/android/gms/internal/zzafg;

    iget v6, v3, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    iget-wide v10, v3, Lcom/google/android/gms/internal/zzaai;->zzTs:J

    iget-object v12, p0, Lcom/google/android/gms/internal/zzaaz;->zzSo:Lcom/google/android/gms/internal/zzij;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    move-object v2, v9

    move-wide v9, v10

    move-object v11, v13

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzafg;-><init>(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzij;)V

    sget-object v1, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzaba;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzaba;-><init>(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzafg;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
