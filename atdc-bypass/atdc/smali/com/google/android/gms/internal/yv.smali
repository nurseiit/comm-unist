.class final Lcom/google/android/gms/internal/yv;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private synthetic zzcjv:Lcom/google/android/gms/internal/yu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yu;ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yv;->zzcjv:Lcom/google/android/gms/internal/yu;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :catch_2
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/yv;->zzcjv:Lcom/google/android/gms/internal/yu;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/yu;->zzf(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
