.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->onFailure(Ljava/lang/Throwable;)V
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
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->access$100(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->cancel(Z)Z

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

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

    .line 475
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1$1;->this$1:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
