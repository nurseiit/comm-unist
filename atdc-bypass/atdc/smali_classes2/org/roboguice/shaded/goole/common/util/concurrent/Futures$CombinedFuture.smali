.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final allMustSucceed:Z

.field combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner<",
            "TV;TC;>;"
        }
    .end annotation
.end field

.field futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "+",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final seenExceptionsLock:Ljava/lang/Object;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/roboguice/shaded/goole/common/base/Optional<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1471
    const-class v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "+",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner<",
            "TV;TC;>;)V"
        }
    .end annotation

    .line 1485
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->seenExceptionsLock:Ljava/lang/Object;

    .line 1486
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    .line 1487
    iput-boolean p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    .line 1488
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1489
    iput-object p4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    .line 1490
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1491
    invoke-virtual {p0, p3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->init(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$400(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;ILjava/util/concurrent/Future;)V
    .locals 0

    .line 1470
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    .locals 3

    .line 1563
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v0, :cond_1

    .line 1566
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 1568
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->seenExceptionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1569
    :try_start_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 1570
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    .line 1572
    :cond_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1573
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1576
    :goto_0
    instance-of v1, p1, Ljava/lang/Error;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 1578
    :cond_2
    sget-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "input future failed."

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private setOneValue(ILjava/util/concurrent/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1586
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1594
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-nez v0, :cond_3

    .line 1599
    :cond_0
    iget-boolean v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "Future was done before all dependencies completed"

    invoke-static {v1, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1604
    :cond_3
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    const-string v4, "Tried to set value from future which is not done"

    invoke-static {v1, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1606
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_4

    .line 1608
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    :cond_4
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-ltz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    const-string p2, "Less than 0 remaining futures"

    .line 1622
    invoke-static {v2, p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez p1, :cond_b

    .line 1624
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 1626
    :goto_3
    invoke-interface {p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1628
    :cond_6
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 1619
    :try_start_1
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1621
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-ltz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    const-string p2, "Less than 0 remaining futures"

    .line 1622
    invoke-static {v2, p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez p1, :cond_b

    .line 1624
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    goto :goto_3

    :catch_1
    move-exception p1

    .line 1617
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1621
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-ltz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    const-string p2, "Less than 0 remaining futures"

    .line 1622
    invoke-static {v2, p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez p1, :cond_b

    .line 1624
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    goto :goto_3

    .line 1611
    :catch_2
    :try_start_3
    iget-boolean p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz p1, :cond_9

    .line 1614
    invoke-virtual {p0, v3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1621
    :cond_9
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-ltz p1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    const-string p2, "Less than 0 remaining futures"

    .line 1622
    invoke-static {v2, p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez p1, :cond_b

    .line 1624
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_b
    :goto_7
    return-void

    .line 1621
    :goto_8
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-ltz p2, :cond_c

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    :goto_9
    const-string v1, "Less than 0 remaining futures"

    .line 1622
    invoke-static {v2, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez p2, :cond_e

    .line 1624
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    if-eqz p2, :cond_d

    if-eqz v0, :cond_d

    .line 1626
    invoke-interface {p2, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1628
    :cond_d
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result p2

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 1631
    :cond_e
    :goto_a
    throw p1
.end method


# virtual methods
.method protected init(Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1499
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$1;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;)V

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1524
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1525
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->combiner:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1530
    :goto_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1531
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;->futures:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    add-int/lit8 v3, v0, 0x1

    .line 1545
    new-instance v4, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$2;

    invoke-direct {v4, p0, v0, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture$2;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$CombinedFuture;ILorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v4, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_1

    :cond_2
    return-void
.end method
