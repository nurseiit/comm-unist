.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChainingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture<",
        "TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field

.field private inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TI;>;"
        }
    .end annotation
.end field

.field private final outputCreated:Ljava/util/concurrent/CountDownLatch;

.field private volatile outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TI;>;)V"
        }
    .end annotation

    .line 815
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;-><init>()V

    .line 811
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    .line 816
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 817
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$302(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 805
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private cancel(Ljava/util/concurrent/Future;Z)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 839
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 826
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    .line 830
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 848
    :try_start_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    :try_start_1
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    invoke-interface {v2, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 863
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->wasInterrupted()Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 865
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    :goto_0
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 868
    :cond_0
    :try_start_2
    new-instance v2, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;

    invoke-direct {v2, p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 857
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_3
    const/4 v1, 0x0

    .line 853
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 894
    :goto_1
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 897
    :goto_2
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    .line 890
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    .line 897
    :goto_5
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
.end method
