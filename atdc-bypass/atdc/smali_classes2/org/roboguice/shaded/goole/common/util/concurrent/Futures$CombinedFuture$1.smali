.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1503
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 1505
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->wasInterrupted()Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    .line 1510
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    .line 1514
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    iput-object v1, v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1517
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    iput-object v1, v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    return-void
.end method
