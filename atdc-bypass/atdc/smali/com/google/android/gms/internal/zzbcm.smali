.class final Lcom/google/android/gms/internal/zzbcm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private synthetic zzaDp:Lcom/google/android/gms/internal/zzbcd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbcd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/internal/zzbce;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcm;-><init>(Lcom/google/android/gms/internal/zzbcd;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcd;->zzf(Lcom/google/android/gms/internal/zzbcd;)Lcom/google/android/gms/internal/zzctk;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzbck;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbck;-><init>(Lcom/google/android/gms/internal/zzbcd;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzctk;->zza(Lcom/google/android/gms/internal/zzctq;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcd;->zzc(Lcom/google/android/gms/internal/zzbcd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbcd;->zzb(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcd;->zzi(Lcom/google/android/gms/internal/zzbcd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcd;->zzj(Lcom/google/android/gms/internal/zzbcd;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbcd;->zza(Lcom/google/android/gms/internal/zzbcd;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbcd;->zzc(Lcom/google/android/gms/internal/zzbcd;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcm;->zzaDp:Lcom/google/android/gms/internal/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcd;->zzc(Lcom/google/android/gms/internal/zzbcd;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
