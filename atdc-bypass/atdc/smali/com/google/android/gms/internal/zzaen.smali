.class final Lcom/google/android/gms/internal/zzaen;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field final synthetic zzXk:Lcom/google/android/gms/internal/zzajg;

.field final synthetic zzXl:Ljava/util/Set;

.field final synthetic zzXm:Lcom/google/android/gms/internal/zzael;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzael;Ljava/util/Set;Lcom/google/android/gms/internal/zzajg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaen;->zzXm:Lcom/google/android/gms/internal/zzael;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaen;->zzXl:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaen;->zzXk:Lcom/google/android/gms/internal/zzajg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaen;->zzXm:Lcom/google/android/gms/internal/zzael;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzael;->zzb(Lcom/google/android/gms/internal/zzael;)Ljava/util/Timer;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzaeo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaeo;-><init>(Lcom/google/android/gms/internal/zzaen;)V

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzGd:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot schedule thread: "

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaes;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
