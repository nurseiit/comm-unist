.class public final Lcom/google/android/gms/internal/zzaly;
.super Lcom/google/android/gms/internal/zzamh;


# instance fields
.field private final zzafB:Lcom/google/android/gms/internal/zzamv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzamj;Lcom/google/android/gms/internal/zzaml;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamh;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzamv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzamv;-><init>(Lcom/google/android/gms/internal/zzamj;Lcom/google/android/gms/internal/zzaml;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaly;)Lcom/google/android/gms/internal/zzamv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    return-object p0
.end method


# virtual methods
.method final onServiceConnected()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->onServiceConnected()V

    return-void
.end method

.method public final setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaly;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzalz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzalz;-><init>(Lcom/google/android/gms/internal/zzaly;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->start()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzamm;)J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzamv;->zza(Lcom/google/android/gms/internal/zzamm;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzamv;->zzb(Lcom/google/android/gms/internal/zzamm;)V

    :cond_0
    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzanq;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzame;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzame;-><init>(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzanq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzanx;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzaly;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzamc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzamc;-><init>(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzanx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzamb;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzamb;-><init>(Lcom/google/android/gms/internal/zzaly;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzjD()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->initialize()V

    return-void
.end method

.method public final zzkk()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzamd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzamd;-><init>(Lcom/google/android/gms/internal/zzaly;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzkl()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaoj;->zzac(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaok;->zzad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaly;->zza(Lcom/google/android/gms/internal/zzanq;)V

    return-void
.end method

.method public final zzkm()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzamf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzamf;-><init>(Lcom/google/android/gms/internal/zzaly;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzl;->zzd(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaly;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_1
    move-exception v0

    const-string v1, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaly;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :catch_2
    move-exception v0

    const-string v1, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzaly;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return v3
.end method

.method public final zzkn()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaly;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->zzkD()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamv;->zzbo(Ljava/lang/String;)V

    return-void
.end method

.method final zzko()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaly;->zzafB:Lcom/google/android/gms/internal/zzamv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->zzko()V

    return-void
.end method
