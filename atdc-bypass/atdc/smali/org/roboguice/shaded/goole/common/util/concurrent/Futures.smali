.class public final Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$MappingCheckedFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateCancelledFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# static fields
.field private static final DEREFERENCER:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final WITH_STRING_PARAM_FIRST:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 934
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$3;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$3;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->DEREFERENCER:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 1432
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$5;

    invoke-direct {v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$5;-><init>()V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->onResultOf(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->WITH_STRING_PARAM_FIRST:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1120
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->addCallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static addCallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1162
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$4;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$4;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureCallback;)V

    .line 1184
    invoke-interface {p0, v0, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static allAsList(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 983
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->listFuture(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static varargs allAsList([Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 960
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->listFuture(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static dereference(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 928
    sget-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->DEREFERENCER:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1302
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-class v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Futures.get exception type (%s) must not be a RuntimeException"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v1, v3

    invoke-static {v0, v2, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1308
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1315
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0, p4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1316
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_1
    move-exception p0

    .line 1313
    invoke-static {p4, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    .line 1310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1311
    invoke-static {p4, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method public static get(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1236
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const-class v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Futures.get exception type (%s) must not be a RuntimeException"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v2, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1246
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1247
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_1
    move-exception p0

    .line 1243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1244
    invoke-static {p1, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method public static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1369
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    :try_start_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1373
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->wrapAndThrowUnchecked(Ljava/lang/Throwable;)V

    .line 1374
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static immediateCancelledFuture()Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 281
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateCancelledFuture;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateCancelledFuture;-><init>()V

    return-object v0
.end method

.method public static immediateCheckedFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immediateFailedCheckedFuture(Ljava/lang/Exception;)Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TX;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .line 296
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 270
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedFuture;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 243
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulFuture;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lazyTransform(Ljava/util/concurrent/Future;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TI;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/concurrent/Future<",
            "TO;>;"
        }
    .end annotation

    .line 745
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$2;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$2;-><init>(Ljava/util/concurrent/Future;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method private static listFuture(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1640
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    new-instance v1, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$6;

    invoke-direct {v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$6;-><init>()V

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;)V

    return-object v0
.end method

.method public static makeChecked(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "Ljava/lang/Exception;",
            "TX;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$MappingCheckedFuture;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$MappingCheckedFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method private static newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1441
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1442
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1443
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 1444
    aget-object v3, v0, v2

    .line 1445
    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1446
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 1447
    :cond_0
    const-class v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1448
    aput-object p1, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    .line 1454
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v4

    :catch_1
    return-object v4

    :catch_2
    return-object v4

    :catch_3
    return-object v4
.end method

.method private static newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .line 1411
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1413
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->preferringStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 1414
    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 1416
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1417
    invoke-virtual {v1, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v1

    .line 1422
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No appropriate constructor for exception of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in response to chained exception"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static nonCancellationPropagating(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 997
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$NonCancellationPropagatingFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method private static preferringStrings(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;>;"
        }
    .end annotation

    .line 1429
    sget-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->WITH_STRING_PARAM_FIRST:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static successfulAsList(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 1065
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->listFuture(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static varargs successfulAsList([Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 1043
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->listFuture(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TI;+TO;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 667
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 709
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;

    invoke-direct {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;)V

    .line 717
    invoke-static {p0, v0, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 561
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 606
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;)V

    .line 608
    invoke-interface {p0, v0, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static withFallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback<",
            "+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 375
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->withFallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static withFallback(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback<",
            "+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 439
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;

    invoke-direct {v0, p0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FallbackFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1322
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 1323
    new-instance p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {p1, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p1

    .line 1325
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 1326
    new-instance p1, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p1, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1328
    :cond_1
    invoke-static {p1, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method private static wrapAndThrowUnchecked(Ljava/lang/Throwable;)V
    .locals 1

    .line 1379
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 1380
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 1387
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
