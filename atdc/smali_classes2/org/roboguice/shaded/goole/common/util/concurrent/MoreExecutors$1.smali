.class final Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;->val$future:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 685
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;->val$future:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
