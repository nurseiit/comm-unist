.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonCancellationPropagatingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 1005
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1006
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->addCallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
