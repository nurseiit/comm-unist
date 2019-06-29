.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

.field final synthetic val$fallback:Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 463
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 467
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->val$fallback:Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;

    invoke-interface {v1, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;->create(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->access$102(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 468
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 469
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->access$100(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    return-void

    .line 472
    :cond_1
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->access$100(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;)V

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->addCallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 488
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
