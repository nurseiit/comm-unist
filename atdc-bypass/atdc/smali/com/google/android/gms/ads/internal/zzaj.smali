.class final Lcom/google/android/gms/ads/internal/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zztY:Lcom/google/android/gms/internal/zzir;

.field private synthetic zztZ:Lcom/google/android/gms/ads/internal/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzai;Lcom/google/android/gms/internal/zzir;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztZ:Lcom/google/android/gms/ads/internal/zzai;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztY:Lcom/google/android/gms/internal/zzir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztZ:Lcom/google/android/gms/ads/internal/zzai;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzai;->zza(Lcom/google/android/gms/ads/internal/zzai;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztZ:Lcom/google/android/gms/ads/internal/zzai;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzai;->zzb(Lcom/google/android/gms/ads/internal/zzai;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztZ:Lcom/google/android/gms/ads/internal/zzai;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztY:Lcom/google/android/gms/internal/zzir;

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/zzai;->zza(Lcom/google/android/gms/ads/internal/zzai;Lcom/google/android/gms/internal/zzir;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztZ:Lcom/google/android/gms/ads/internal/zzai;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaj;->zztY:Lcom/google/android/gms/internal/zzir;

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/zzai;->zzb(Lcom/google/android/gms/ads/internal/zzai;Lcom/google/android/gms/internal/zzir;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
