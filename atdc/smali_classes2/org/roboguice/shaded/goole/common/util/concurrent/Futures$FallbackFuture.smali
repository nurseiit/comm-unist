.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackFuture"
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


# instance fields
.field private volatile running:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback<",
            "+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;-><init>()V

    .line 454
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->running:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 455
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->running:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;

    invoke-direct {v0, p0, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;)V

    invoke-static {p1, v0, p3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->addCallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$100(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 447
    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->running:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method static synthetic access$102(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 447
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->running:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object p1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 496
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->running:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
