.class public abstract Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractListeningExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "AbstractListeningExecutorService.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractListeningExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractListeningExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    return-object p1
.end method

.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask<",
            "TT;>;"
        }
    .end annotation

    .line 42
    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    return-object p1
.end method

.method protected final newTaskFor(Ljava/util/concurrent/Callable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object p1
.end method
