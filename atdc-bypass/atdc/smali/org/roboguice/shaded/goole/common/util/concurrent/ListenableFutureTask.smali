.class public Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ListenableFutureTask.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final executionList:Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 43
    new-instance p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;

    invoke-direct {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;-><init>()V

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;->executionList:Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 43
    new-instance p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;

    invoke-direct {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;-><init>()V

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;->executionList:Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;

    return-void
.end method

.method public static create(Ljava/lang/Runnable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask<",
            "TV;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static create(Ljava/util/concurrent/Callable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask<",
            "TV;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;->executionList:Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected done()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFutureTask;->executionList:Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;->execute()V

    return-void
.end method
