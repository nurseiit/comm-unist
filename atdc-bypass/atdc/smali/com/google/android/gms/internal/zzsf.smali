.class public final Lcom/google/android/gms/internal/zzsf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 3
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

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    const-string v0, "abort"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsa;->zze(Lcom/google/android/gms/internal/zzaka;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Precache abort but no preload task running."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "src"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p1, "Precache video action is missing the src parameter."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    const-string v1, "player"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "mimetype"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mimetype"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzsa;->zzf(Lcom/google/android/gms/internal/zzaka;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "Precache task already running."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zzak()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzc;->zzr(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zzak()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zztm:Lcom/google/android/gms/internal/zzsg;

    invoke-interface {v2, p1, v1, p2}, Lcom/google/android/gms/internal/zzsg;->zza(Lcom/google/android/gms/internal/zzaka;ILjava/lang/String;)Lcom/google/android/gms/internal/zzsb;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/zzry;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzry;-><init>(Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzsb;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafp;->zzhL()Ljava/util/concurrent/Future;

    return-void
.end method
