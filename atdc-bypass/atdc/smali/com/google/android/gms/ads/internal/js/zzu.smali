.class final Lcom/google/android/gms/ads/internal/js/zzu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajs<",
        "Lcom/google/android/gms/ads/internal/js/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

.field private synthetic zzLo:Lcom/google/android/gms/ads/internal/js/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/ads/internal/js/zzac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLo:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/js/zzl;->zzc(Lcom/google/android/gms/ads/internal/js/zzl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzl;->zza(Lcom/google/android/gms/ads/internal/js/zzl;I)I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzl;->zzg(Lcom/google/android/gms/ads/internal/js/zzl;)Lcom/google/android/gms/ads/internal/js/zzac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLo:Lcom/google/android/gms/ads/internal/js/zzac;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/js/zzl;->zzg(Lcom/google/android/gms/ads/internal/js/zzl;)Lcom/google/android/gms/ads/internal/js/zzac;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzl;->zzg(Lcom/google/android/gms/ads/internal/js/zzl;)Lcom/google/android/gms/ads/internal/js/zzac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzac;->zzfc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzu;->zzLo:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzl;->zza(Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/ads/internal/js/zzac;)Lcom/google/android/gms/ads/internal/js/zzac;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
