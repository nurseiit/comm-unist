.class public final Lcom/google/android/gms/internal/zzciq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzf;
.implements Lcom/google/android/gms/common/internal/zzg;


# instance fields
.field final synthetic zzbua:Lcom/google/android/gms/internal/zzcid;

.field private volatile zzbuh:Z

.field private volatile zzbui:Lcom/google/android/gms/internal/zzcfk;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzcid;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzciq;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    return p1
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string p1, "MeasurementServiceConnection.onConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbui:Lcom/google/android/gms/internal/zzcfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcfd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbui:Lcom/google/android/gms/internal/zzcfk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcid;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcit;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzcit;-><init>(Lcom/google/android/gms/internal/zzciq;Lcom/google/android/gms/internal/zzcfd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbui:Lcom/google/android/gms/internal/zzcfk;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcid;->zzboe:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzyQ()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbui:Lcom/google/android/gms/internal/zzcfk;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcid;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzciv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzciv;-><init>(Lcom/google/android/gms/internal/zzciq;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcid;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzciu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzciu;-><init>(Lcom/google/android/gms/internal/zzciq;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzcfd;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/gms/internal/zzcfd;

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzcff;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/zzcff;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_4

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzrU()Lcom/google/android/gms/common/stats/zza;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcid;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcid;)Lcom/google/android/gms/internal/zzciq;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcid;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzcir;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/zzcir;-><init>(Lcom/google/android/gms/internal/zzciq;Lcom/google/android/gms/internal/zzcfd;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V

    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyC()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcis;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcis;-><init>(Lcom/google/android/gms/internal/zzciq;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzk(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzrU()Lcom/google/android/gms/common/stats/zza;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcid;)Lcom/google/android/gms/internal/zzciq;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/zza;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzzm()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzciq;->zzbui:Lcom/google/android/gms/internal/zzcfk;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcfk;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lcom/google/android/gms/internal/zzcfk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzciq;->zzbui:Lcom/google/android/gms/internal/zzcfk;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbuh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzbui:Lcom/google/android/gms/internal/zzcfk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzrb()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
