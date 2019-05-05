.class public final Lcom/google/android/gms/internal/zzbes;
.super Lcom/google/android/gms/common/api/TransformedResult;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/TransformedResult<",
        "TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final zzaBW:Ljava/lang/Object;

.field private final zzaBY:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private zzaFa:Lcom/google/android/gms/common/api/ResultTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultTransform<",
            "-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private zzaFb:Lcom/google/android/gms/internal/zzbes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbes<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private zzaFd:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TR;>;"
        }
    .end annotation
.end field

.field private zzaFe:Lcom/google/android/gms/common/api/Status;

.field private final zzaFf:Lcom/google/android/gms/internal/zzbeu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbeu;"
        }
    .end annotation
.end field

.field private zzaFg:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/TransformedResult;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFb:Lcom/google/android/gms/internal/zzbes;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFd:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFe:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFg:Z

    const-string v0, "GoogleApiClient reference must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaBY:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaBY:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zzbeu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbeu;-><init>(Lcom/google/android/gms/internal/zzbes;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFf:Lcom/google/android/gms/internal/zzbeu;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbes;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbes;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbes;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbes;->zzv(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbes;)Lcom/google/android/gms/common/api/ResultTransform;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/common/api/Result;)V
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TransformedResultImpl"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to release "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbes;)Lcom/google/android/gms/internal/zzbeu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFf:Lcom/google/android/gms/internal/zzbeu;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbes;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBY:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbes;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbes;)Lcom/google/android/gms/internal/zzbes;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFb:Lcom/google/android/gms/internal/zzbes;

    return-object p0
.end method

.method private final zzqJ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFg:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzbes;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFg:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFe:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFe:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbes;->zzw(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFd:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFd:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_3
    return-void
.end method

.method private final zzqL()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzv(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFe:Lcom/google/android/gms/common/api/Status;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFe:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbes;->zzw(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zzw(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/ResultTransform;->onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const-string v1, "onFailure must not return null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFb:Lcom/google/android/gms/internal/zzbes;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzbes;->zzv(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbes;->zzqL()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final andFinally(Lcom/google/android/gms/common/api/ResultCallbacks;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/ResultCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallbacks<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Cannot call andFinally() twice."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbes;->zzqJ()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbeg;->zzqj()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbet;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzbet;-><init>(Lcom/google/android/gms/internal/zzbes;Lcom/google/android/gms/common/api/Result;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbes;->zzqL()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbes;->zzv(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbes;->zzc(Lcom/google/android/gms/common/api/Result;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Cannot call then() twice."

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFa:Lcom/google/android/gms/common/api/ResultTransform;

    new-instance p1, Lcom/google/android/gms/internal/zzbes;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbes;->zzaBY:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzbes;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFb:Lcom/google/android/gms/internal/zzbes;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbes;->zzqJ()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaBW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbes;->zzaFd:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbes;->zzqJ()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzqK()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbes;->zzaFc:Lcom/google/android/gms/common/api/ResultCallbacks;

    return-void
.end method
