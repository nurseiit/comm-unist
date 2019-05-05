.class final Lcom/google/android/gms/ads/internal/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzty:Ljava/lang/Runnable;

.field private synthetic zztz:Lcom/google/android/gms/ads/internal/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzac;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzad;->zztz:Lcom/google/android/gms/ads/internal/zzac;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzad;->zzty:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/appSettingsFetched"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzaka;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzad;->zztz:Lcom/google/android/gms/ads/internal/zzac;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzac;->zza(Lcom/google/android/gms/ads/internal/zzac;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "true"

    const-string v1, "isSuccessful"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appSettingsJson"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzad;->zztz:Lcom/google/android/gms/ads/internal/zzac;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzac;->zzb(Lcom/google/android/gms/ads/internal/zzac;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzafk;->zzn(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzad;->zzty:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzad;->zzty:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    const-string v1, "ConfigLoader.maybeFetchNewAppSettings"

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/zzafk;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "ConfigLoader post task failed."

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
