.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
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
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

.field final synthetic val$delegate:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->val$delegate:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->val$delegate:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->cancel(Z)Z

    goto :goto_0

    .line 1018
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->setException(Ljava/lang/Throwable;)Z

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

    .line 1010
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
