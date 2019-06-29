.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field volatile oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3471
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->unset()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3467
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;->create()Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    .line 3468
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->createUnstarted()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    .line 3475
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    return-void
.end method

.method private fullyFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 3502
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public elapsedNanos()J
    .locals 2

    .line 3549
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3559
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldValue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3563
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 3490
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 3485
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFuture(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 3520
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->start()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    .line 3521
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3524
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3525
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    .line 3527
    :cond_1
    invoke-virtual {p2, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 3529
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3533
    :cond_2
    new-instance p2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference$1;

    invoke-direct {p2, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference$1;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;)V

    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3541
    :goto_1
    instance-of p2, p1, Ljava/lang/InterruptedException;

    if-eqz p2, :cond_3

    .line 3542
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 3544
    :cond_3
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->fullyFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3510
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3513
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->unset()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 3494
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 3498
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3554
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
