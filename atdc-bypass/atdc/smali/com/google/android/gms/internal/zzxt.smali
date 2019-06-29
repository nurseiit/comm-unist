.class public abstract Lcom/google/android/gms/internal/zzxt;
.super Lcom/google/android/gms/internal/zzafp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected final zzQP:Lcom/google/android/gms/internal/zzxy;

.field protected final zzQQ:Lcom/google/android/gms/internal/zzafg;

.field protected zzQR:Lcom/google/android/gms/internal/zzaai;

.field protected final zzQT:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzxy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzafp;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxt;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxt;->zzQT:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxt;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object p1, p2, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxt;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxt;->zzQP:Lcom/google/android/gms/internal/zzxy;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public final zzbd()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AdRendererBackgroundTask started."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxt;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget v1, v1, Lcom/google/android/gms/internal/zzafg;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzxt;->zzd(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzxw; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzxw;->getErrorCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzxw;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzxw;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxt;->zzQR:Lcom/google/android/gms/internal/zzaai;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaai;-><init>(I)V

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/zzxt;->zzQR:Lcom/google/android/gms/internal/zzaai;

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/zzaai;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzxt;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzaai;->zzMg:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaai;-><init>(IJ)V

    goto :goto_2

    :goto_3
    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzxu;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzxu;-><init>(Lcom/google/android/gms/internal/zzxt;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzxt;->zzs(I)Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzxv;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzxv;-><init>(Lcom/google/android/gms/internal/zzxt;Lcom/google/android/gms/internal/zzaff;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract zzd(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzxw;
        }
    .end annotation
.end method

.method protected abstract zzs(I)Lcom/google/android/gms/internal/zzaff;
.end method
