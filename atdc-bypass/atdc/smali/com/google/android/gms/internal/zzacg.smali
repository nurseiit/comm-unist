.class public final Lcom/google/android/gms/internal/zzacg;
.super Lcom/google/android/gms/internal/zzack;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzWi:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzack;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacg;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzacg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzacg;->zzgN()V

    return-void
.end method

.method private final zzgN()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacg;->zzWi:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "js_last_update"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaje;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacg;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzacg;->zzWi:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    const-string v1, "google_ads_flags_meta"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzacg;->zzWi:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacg;->zzWi:Landroid/content/SharedPreferences;

    const-string v1, "js_last_update"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFm:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzacg;->zze(Lcom/google/android/gms/internal/zzabu;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzach;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzach;-><init>(Lcom/google/android/gms/internal/zzacg;Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "js"

    iget-object p3, p3, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "mf"

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzFn:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "cl"

    const-string v1, "162978962"

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "rapid_rc"

    const-string v1, "dev"

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "rapid_rollup"

    const-string v1, "HEAD"

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p3, p2, Lcom/google/android/gms/internal/zzabu;->zzUN:Lcom/google/android/gms/ads/internal/js/zzy;

    new-instance v1, Lcom/google/android/gms/internal/zzaci;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzaci;-><init>(Lcom/google/android/gms/internal/zzacg;Lcom/google/android/gms/internal/zzrd;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzabu;)V

    new-instance p1, Lcom/google/android/gms/internal/zzacj;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/zzacj;-><init>(Lcom/google/android/gms/internal/zzacg;Lcom/google/android/gms/internal/zzabu;)V

    invoke-virtual {p3, v1, p1}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    return-void

    :catch_0
    move-exception p1

    const-string p3, "Unable to populate SDK Core Constants parameters."

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzacg;->zze(Lcom/google/android/gms/internal/zzabu;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
