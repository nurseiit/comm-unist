.class final Lcom/google/android/gms/internal/zzcin;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbth:Ljava/lang/String;

.field private synthetic zzbti:Ljava/lang/String;

.field private synthetic zzbtw:Z

.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcid;

.field private synthetic zzbub:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcid;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcin;->zzbjh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcin;->zzbth:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcin;->zzbti:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcin;->zzbtw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcid;->zzd(Lcom/google/android/gms/internal/zzcid;)Lcom/google/android/gms/internal/zzcfd;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string v2, "Failed to get user properties"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcin;->zzbjh:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcin;->zzbth:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcin;->zzbti:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcin;->zzbjh:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcin;->zzbth:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcin;->zzbti:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzcin;->zzbtw:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcid;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzcfg;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceh;

    move-result-object v6

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcfd;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzceh;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcin;->zzbjh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcin;->zzbth:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcin;->zzbti:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcin;->zzbtw:Z

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcfd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcid;->zze(Lcom/google/android/gms/internal/zzcid;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcin;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcin;->zzbjh:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcfl;->zzdZ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcin;->zzbth:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzcfn;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_2

    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcin;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
