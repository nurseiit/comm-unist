.class final Lcom/google/android/gms/internal/zzabw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzUR:Lcom/google/android/gms/internal/zzabu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabw;->zzUR:Lcom/google/android/gms/internal/zzabu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabw;->zzUR:Lcom/google/android/gms/internal/zzabu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabu;->zza(Lcom/google/android/gms/internal/zzabu;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabw;->zzUR:Lcom/google/android/gms/internal/zzabu;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzabu;->zzb(Lcom/google/android/gms/internal/zzabu;)Lcom/google/android/gms/internal/zzajg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzajg;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzaca;

    const/4 v2, -0x2

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzaca;-><init>(ILjava/util/Map;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabw;->zzUR:Lcom/google/android/gms/internal/zzabu;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzabu;->zzc(Lcom/google/android/gms/internal/zzabu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaca;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaca;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, "URL missing in loadAdUrl GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    const-string v3, "%40mediation_adapters%40"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "check_adapters"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabw;->zzUR:Lcom/google/android/gms/internal/zzabu;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzabu;->zzd(Lcom/google/android/gms/internal/zzabu;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/zzafo;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%40mediation_adapters%40"

    invoke-virtual {v2, p2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzaca;->setUrl(Ljava/lang/String;)V

    const-string p2, "Ad request URL modified to "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzabw;->zzUR:Lcom/google/android/gms/internal/zzabu;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzabu;->zzb(Lcom/google/android/gms/internal/zzabu;)Lcom/google/android/gms/internal/zzajg;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
