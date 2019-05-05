.class final Lcom/google/android/gms/ads/internal/zzbh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzuQ:Lcom/google/android/gms/ads/internal/zzbb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbh;->zzuQ:Lcom/google/android/gms/ads/internal/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbh;->zzuQ:Lcom/google/android/gms/ads/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/ads/internal/zzbb;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbh;->zzuQ:Lcom/google/android/gms/ads/internal/zzbb;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzbb;->zzbi()Lcom/google/android/gms/internal/zzyh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzyh;->zzfd()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
