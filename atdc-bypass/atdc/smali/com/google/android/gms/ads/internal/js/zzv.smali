.class final Lcom/google/android/gms/ads/internal/js/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajq;


# instance fields
.field private synthetic zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

.field private synthetic zzLo:Lcom/google/android/gms/ads/internal/js/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/ads/internal/js/zzac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzv;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzv;->zzLo:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzv;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzl;->zzc(Lcom/google/android/gms/ads/internal/js/zzl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzv;->zzLh:Lcom/google/android/gms/ads/internal/js/zzl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/js/zzl;->zza(Lcom/google/android/gms/ads/internal/js/zzl;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzv;->zzLo:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/js/zzac;->zzfc()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
