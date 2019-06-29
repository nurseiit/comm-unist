.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field final map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field totalWeight:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field

.field final writeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
            "TK;TV;>;IJ",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .line 2088
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2068
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2089
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    .line 2090
    iput-wide p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 2091
    invoke-static {p5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    .line 2092
    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2094
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesKeyReferences()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2097
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesValueReferences()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_1
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2100
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesAccessQueue()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2104
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesWriteQueue()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;

    invoke-direct {p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;-><init>()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 2108
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesAccessQueue()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;

    invoke-direct {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;-><init>()V

    goto :goto_3

    :cond_4
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method cleanUp()V
    .locals 2

    .line 3437
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3438
    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3439
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    return-void
.end method

.method clear()V
    .locals 5

    .line 3214
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_4

    .line 3215
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3217
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3218
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3219
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    :goto_1
    if-eqz v3, :cond_1

    .line 3221
    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3222
    sget-object v4, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->EXPLICIT:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, v3, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    .line 3219
    :cond_0
    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 3226
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    .line 3227
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3229
    :cond_3
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3230
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3231
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3232
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3234
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3235
    iput v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3237
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3238
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 3237
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3238
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .line 2522
    :goto_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .line 2513
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2514
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2516
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2517
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    :cond_1
    return-void
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .line 2526
    :goto_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 4

    .line 2775
    :try_start_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2776
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2777
    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2786
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return v1

    .line 2781
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 2786
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw p1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 9
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 2797
    :try_start_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2798
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2799
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2800
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 2802
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    :goto_1
    if-eqz v6, :cond_2

    .line 2803
    invoke-virtual {p0, v6, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 2807
    :cond_0
    iget-object v8, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v8, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 2816
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 p1, 0x1

    return p1

    .line 2802
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2816
    :cond_3
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw p1
.end method

.method copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2137
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2142
    :cond_0
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2143
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2144
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 2149
    :cond_1
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entryFactory:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    .line 2150
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p2, v2, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    return-object p1
.end method

.method drainKeyReferenceQueue()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    const/4 v0, 0x0

    .line 2485
    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2487
    check-cast v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 2488
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v2, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->reclaimKey(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2589
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 2594
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2595
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2473
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2476
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2477
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    const/4 v0, 0x0

    .line 2499
    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2501
    check-cast v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    .line 2502
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v2, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->reclaimValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2643
    iget p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->totalWeight:I

    invoke-interface {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2644
    invoke-virtual {p4}, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->wasEvicted()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2645
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2647
    :cond_0
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object p2, p2, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq p2, v0, :cond_1

    .line 2648
    invoke-interface {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object p2

    .line 2649
    new-instance p3, Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;

    invoke-direct {p3, p1, p2, p4}, Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    .line 2650
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method enqueueNotification(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2637
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    return-void
.end method

.method evictEntries()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2660
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2664
    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2665
    :cond_1
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->totalWeight:I

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 2666
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getNextEvictable()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2667
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->SIZE:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;ILorg/roboguice/shaded/goole/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2668
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    return-void
.end method

.method expand()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2897
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2898
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 2913
    :cond_0
    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    shl-int/lit8 v3, v1, 0x1

    .line 2914
    invoke-virtual {p0, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 2915
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->threshold:I

    .line 2916
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 2920
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eqz v6, :cond_5

    .line 2923
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v7

    .line 2924
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    .line 2928
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 2936
    invoke-interface {v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 2935
    :cond_2
    invoke-interface {v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v7

    goto :goto_1

    .line 2943
    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 2947
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    and-int/2addr v7, v4

    .line 2948
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 2949
    invoke-virtual {p0, v6, v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2951
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 2953
    :cond_4
    invoke-virtual {p0, v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeCollectedEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    add-int/lit8 v2, v2, -0x1

    .line 2946
    :goto_3
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2960
    :cond_6
    iput-object v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2961
    iput v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    return-void
.end method

.method expireEntries(J)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2618
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2621
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2622
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;ILorg/roboguice/shaded/goole/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2623
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2626
    :cond_1
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2627
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;ILorg/roboguice/shaded/goole/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2628
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2753
    :try_start_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2754
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v7

    .line 2755
    invoke-virtual {p0, p1, p2, v7, v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 2769
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return-object v1

    .line 2760
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2762
    invoke-virtual {p0, v3, v7, v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recordRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2763
    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v9, p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->scheduleRefresh(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2769
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return-object p1

    .line 2765
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2769
    :cond_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw p1
.end method

.method get(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2173
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    :try_start_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_1

    .line 2178
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2180
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2181
    invoke-virtual {p0, v2, v6, v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2183
    invoke-virtual {p0, v2, v6, v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recordRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2184
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 2185
    invoke-virtual/range {v1 .. v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->scheduleRefresh(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2205
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return-object p1

    .line 2187
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2188
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2189
    invoke-virtual {p0, v2, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->waitForLoadingValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2205
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return-object p1

    .line 2195
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2205
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2197
    :try_start_3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 2198
    instance-of p3, p2, Ljava/lang/Error;

    if-eqz p3, :cond_2

    .line 2199
    new-instance p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;

    check-cast p2, Ljava/lang/Error;

    invoke-direct {p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p1

    .line 2200
    :cond_2
    instance-of p3, p2, Ljava/lang/RuntimeException;

    if-eqz p3, :cond_3

    .line 2201
    new-instance p1, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2203
    :cond_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2205
    :goto_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw p1
.end method

.method getAndRecordStats(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2346
    :try_start_0
    invoke-static {p4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p4, :cond_0

    .line 2348
    :try_start_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheLoader returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2350
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2351
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_1

    .line 2355
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2356
    invoke-virtual {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;)Z

    :cond_1
    return-object p4

    :catchall_1
    move-exception v0

    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_2

    .line 2355
    iget-object p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v1

    invoke-interface {p4, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2356
    invoke-virtual {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;)Z

    :cond_2
    throw v0
.end method

.method getEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2697
    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getFirst(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2698
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 2702
    :cond_0
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2704
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    .line 2708
    :cond_1
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v2, v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 2697
    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getFirst(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2690
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object p1
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2718
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2721
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    invoke-virtual {p0, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 2733
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2734
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    return-object v1

    .line 2737
    :cond_0
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2739
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    return-object v1

    .line 2743
    :cond_1
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2744
    invoke-virtual {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method getNextEvictable()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2675
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 2676
    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    .line 2681
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2118
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->threshold:I

    .line 2119
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2121
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->threshold:I

    .line 2123
    :cond_0
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2406
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 2408
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    .line 2409
    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2411
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2412
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    .line 2413
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    .line 2417
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2418
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v7, v7, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2422
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    .line 2423
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide p2

    const/4 v2, 0x0

    sub-long v2, v0, p2

    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-wide p2, p2, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshNanos:J

    cmp-long v0, v2, p2

    if-gez v0, :cond_0

    goto :goto_1

    .line 2432
    :cond_0
    iget p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 2433
    new-instance p2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {p2, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    .line 2435
    invoke-interface {v5, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object p2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 2447
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object p1

    .line 2416
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5

    goto :goto_0

    .line 2440
    :cond_3
    iget p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 2441
    new-instance p3, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2442
    invoke-virtual {p0, p1, p2, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    .line 2443
    invoke-interface {p1, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    .line 2444
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object p3

    :catchall_0
    move-exception p1

    .line 2447
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2448
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw p1
.end method

.method loadAsync(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2323
    invoke-virtual {p3, p1, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p4

    .line 2324
    new-instance v6, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment$1;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    sget-object p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->sameThreadExecutor:Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    invoke-interface {p4, v6, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p4
.end method

.method loadSync(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2317
    invoke-virtual {p3, p1, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p4

    .line 2318
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 2216
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 2219
    :try_start_0
    iget-object v4, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v4

    .line 2220
    invoke-virtual {v1, v4, v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2222
    iget v6, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 2223
    iget-object v8, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2224
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    sub-int/2addr v9, v7

    and-int/2addr v9, v3

    .line 2225
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v11, v10

    :goto_0
    if-eqz v11, :cond_4

    .line 2228
    invoke-interface {v11}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v13

    .line 2229
    invoke-interface {v11}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v14

    if-ne v14, v3, :cond_3

    if-eqz v13, :cond_3

    iget-object v14, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v14, v14, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v14, v2, v13}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2231
    invoke-interface {v11}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v14

    .line 2232
    invoke-interface {v14}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    .line 2235
    :cond_0
    invoke-interface {v14}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_1

    .line 2237
    sget-object v4, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {v1, v13, v3, v14, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    goto :goto_1

    .line 2238
    :cond_1
    iget-object v12, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v12, v11, v4, v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2241
    sget-object v4, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {v1, v13, v3, v14, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    .line 2250
    :goto_1
    iget-object v4, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v4, v11}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2251
    iget-object v4, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v4, v11}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2252
    iput v6, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    const/4 v4, 0x1

    goto :goto_2

    .line 2243
    :cond_2
    invoke-virtual {v1, v11, v4, v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recordLockedRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2244
    iget-object v2, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v7}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2270
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object v15

    .line 2227
    :cond_3
    :try_start_1
    invoke-interface {v11}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v11

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    const/4 v14, 0x0

    :goto_2
    if-eqz v4, :cond_6

    .line 2259
    new-instance v12, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v12}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;-><init>()V

    if-nez v11, :cond_5

    .line 2262
    invoke-virtual {v1, v2, v3, v10}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v11

    .line 2263
    invoke-interface {v11, v12}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    .line 2264
    invoke-virtual {v8, v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 2266
    :cond_5
    invoke-interface {v11, v12}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    .line 2270
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    if-eqz v4, :cond_7

    .line 2279
    :try_start_2
    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v4, p3

    .line 2280
    :try_start_3
    invoke-virtual {v1, v2, v3, v12, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2283
    iget-object v3, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v7}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2281
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 2283
    iget-object v3, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v7}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v2

    .line 2287
    :cond_7
    invoke-virtual {v1, v11, v2, v14}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->waitForLoadingValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 2270
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2271
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v2
.end method

.method newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .param p3    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2128
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entryFactory:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->newEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .line 3413
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3414
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->cleanUp()V

    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .line 3433
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    return-void
.end method

.method preWriteCleanup(J)V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 3426
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2822
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 2824
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v5

    .line 2825
    invoke-virtual {p0, v5, v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2827
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2828
    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 2829
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->expand()V

    .line 2830
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 2833
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2834
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v7, p2, v1

    .line 2835
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    :goto_0
    const/4 v8, 0x0

    if-eqz v2, :cond_5

    .line 2839
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2840
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_4

    if-eqz v3, :cond_4

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2844
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2845
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2848
    iget p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 2849
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 2850
    sget-object p4, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    .line 2851
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2852
    iget p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    goto :goto_1

    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    .line 2854
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2855
    iget p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 p1, p1, 0x1

    .line 2857
    :goto_1
    iput p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 2858
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2887
    :goto_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object v8

    :cond_2
    if-eqz p4, :cond_3

    .line 2864
    :try_start_1
    invoke-virtual {p0, v2, v5, v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recordLockedRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2887
    :goto_3
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object v7

    .line 2868
    :cond_3
    :try_start_2
    iget p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 2869
    sget-object p4, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    .line 2870
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2871
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->evictEntries()V

    goto :goto_3

    .line 2838
    :cond_4
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 2878
    :cond_5
    iget p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 2879
    invoke-virtual {p0, p1, p2, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p2

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    .line 2880
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2881
    invoke-virtual {v0, v7, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2882
    iget p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 p1, p1, 0x1

    .line 2883
    iput p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 2884
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2887
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 2888
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw p1
.end method

.method reclaimKey(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;I)Z"
        }
    .end annotation

    .line 3290
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3292
    :try_start_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3293
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3294
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3295
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    .line 3299
    iget p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3300
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v9

    sget-object v10, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    move-object v4, p0

    move v8, p2

    invoke-virtual/range {v4 .. v10}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    .line 3302
    iget p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr p2, v2

    .line 3303
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3304
    iput p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3311
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3312
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v2

    .line 3297
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3311
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3312
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return p1

    :catchall_0
    move-exception p1

    .line 3311
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3312
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw p1
.end method

.method reclaimValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3320
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3322
    :try_start_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3323
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3324
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3325
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_4

    .line 3328
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 3329
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v4, p1, v7}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3331
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    if-ne p1, p3, :cond_1

    .line 3333
    iget p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3334
    sget-object v10, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    move-object v4, p0

    move v8, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    .line 3336
    iget p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr p2, v2

    .line 3337
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3338
    iput p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3347
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3349
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_0
    return v2

    .line 3347
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3349
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_2
    return v3

    .line 3327
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3347
    :cond_4
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3349
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_5
    return v3

    :catchall_0
    move-exception p1

    .line 3347
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3348
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result p2

    if-nez p2, :cond_6

    .line 3349
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_6
    throw p1
.end method

.method recordLockedRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2554
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    invoke-interface {p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2557
    :cond_0
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method recordRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 2539
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2540
    invoke-interface {p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2542
    :cond_0
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method recordWrite(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;IJ)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2567
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2568
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->totalWeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2570
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsAccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2571
    invoke-interface {p1, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2573
    :cond_0
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsWrite()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2574
    invoke-interface {p1, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setWriteTime(J)V

    .line 2576
    :cond_1
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2577
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method refresh(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2381
    invoke-virtual {p0, p1, p2, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 2387
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 2388
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2390
    :try_start_0
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3064
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3066
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3067
    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3069
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3070
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3071
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 3072
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v5, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz v5, :cond_1

    .line 3075
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3076
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v3, v3, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v3, p1, v6}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3078
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v8

    .line 3079
    invoke-interface {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3083
    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->EXPLICIT:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 3084
    :cond_0
    invoke-interface {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3085
    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    goto :goto_1

    .line 3091
    :goto_2
    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    move-object v3, p0

    move v7, p2

    .line 3092
    invoke-virtual/range {v3 .. v9}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p2

    .line 3094
    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 3095
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3096
    iput v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3104
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object p1

    .line 3103
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3104
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object v2

    .line 3074
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3103
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3104
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw p1
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 11

    .line 3169
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3171
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3172
    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3174
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3175
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3176
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3177
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_2

    .line 3180
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 3181
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v4, p1, v7}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3183
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v9

    .line 3184
    invoke-interface {v9}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 3187
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v4, p3, p1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3188
    sget-object p1, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->EXPLICIT:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 3189
    invoke-interface {v9}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3190
    sget-object p1, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    .line 3196
    :goto_1
    iget p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p3, v2

    iput p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    move-object v4, p0

    move v8, p2

    move-object v10, p1

    .line 3197
    invoke-virtual/range {v4 .. v10}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p2

    .line 3199
    iget p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr p3, v2

    .line 3200
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3201
    iput p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3202
    sget-object p2, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->EXPLICIT:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 3208
    :goto_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3209
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v2

    .line 3208
    :cond_2
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3209
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v3

    .line 3179
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3208
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3209
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw p1
.end method

.method removeCollectedEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 3281
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    .line 3282
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3283
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;ILorg/roboguice/shaded/goole/common/cache/RemovalCause;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;I",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 3388
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3389
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3390
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3391
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    .line 3395
    iget p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3396
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v9

    move-object v4, p0

    move v8, p2

    move-object v10, p3

    invoke-virtual/range {v4 .. v10}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    .line 3398
    iget p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr p2, v2

    .line 3399
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3400
    iput p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    return v2

    .line 3393
    :cond_0
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method removeEntryFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 3264
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3265
    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 3267
    invoke-virtual {p0, p1, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 3271
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeCollectedEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    add-int/lit8 v0, v0, -0x1

    .line 3266
    :goto_1
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    goto :goto_0

    .line 3275
    :cond_1
    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    return-object v1
.end method

.method removeLoadingValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3355
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3357
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3358
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3359
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 3362
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3363
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v7, v7, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3365
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    if-ne p1, p3, :cond_1

    .line 3367
    invoke-virtual {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3368
    invoke-virtual {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->getOldValue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {v4, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    goto :goto_1

    .line 3370
    :cond_0
    invoke-virtual {p0, v3, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeEntryFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    .line 3371
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3381
    :goto_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3382
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v2

    .line 3381
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3382
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v5

    .line 3361
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3381
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3382
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw p1
.end method

.method removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalCause;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 3248
    invoke-virtual {p0, p3, p4, p5, p6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    .line 3249
    iget-object p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3250
    iget-object p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3252
    invoke-interface {p5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3253
    invoke-interface {p5, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    return-object p1

    .line 3256
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeEntryFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object v8, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 3018
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3020
    :try_start_0
    iget-object v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v6

    .line 3021
    invoke-virtual {v8, v6, v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3023
    iget-object v9, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3024
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v10, v5, v1

    .line 3025
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v4, v2

    :goto_0
    const/4 v11, 0x0

    if-eqz v4, :cond_0

    .line 3028
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v12

    .line 3029
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v5, :cond_2

    if-eqz v12, :cond_2

    iget-object v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v1, v3, v12}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3031
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v13

    .line 3032
    invoke-interface {v13}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1

    .line 3034
    invoke-interface {v13}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3036
    iget v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3037
    iget v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3038
    sget-object v7, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    move-object v1, v8

    move-object v3, v4

    move-object v4, v12

    move-object v6, v13

    invoke-virtual/range {v1 .. v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3040
    iget v2, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 3041
    invoke-virtual {v9, v10, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3042
    iput v2, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    :cond_0
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3058
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object v11

    .line 3047
    :cond_1
    :try_start_1
    iget v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3048
    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {v8, v3, v5, v13, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    move-object v1, v8

    move-object v2, v4

    move-object/from16 v4, p3

    move-wide v5, v6

    .line 3049
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3050
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3057
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3058
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return-object v14

    .line 3027
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 3057
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3058
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 2965
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 2967
    :try_start_0
    iget-object v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2968
    invoke-virtual {v8, v6, v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2970
    iget-object v9, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2971
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    and-int v11, v5, v1

    .line 2972
    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v4, v2

    :goto_0
    const/4 v12, 0x0

    if-eqz v4, :cond_0

    .line 2975
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v13

    .line 2976
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-eqz v13, :cond_3

    iget-object v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v1, v3, v13}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2978
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v14

    .line 2979
    invoke-interface {v14}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2981
    invoke-interface {v14}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2983
    iget v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 2984
    iget v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v10

    iput v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 2985
    sget-object v7, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    move-object v1, v8

    move-object v3, v4

    move-object v4, v13

    move-object v6, v14

    invoke-virtual/range {v1 .. v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->removeValueFromChain(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 2987
    iget v2, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr v2, v10

    .line 2988
    invoke-virtual {v9, v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2989
    iput v2, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3011
    :cond_0
    :goto_1
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v12

    .line 2994
    :cond_1
    :try_start_1
    iget-object v2, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v2, v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-object/from16 v13, p3

    invoke-virtual {v2, v13, v1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2995
    iget v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v10

    iput v1, v8, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 2996
    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {v8, v3, v5, v14, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    move-object v1, v8

    move-object v2, v4

    move-object/from16 v4, p4

    move-wide v5, v6

    .line 2997
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2998
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3011
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v10

    .line 3003
    :cond_2
    :try_start_2
    invoke-virtual {v8, v4, v6, v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recordLockedRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V

    goto :goto_1

    :cond_3
    move-object/from16 v13, p3

    .line 2974
    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 3011
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3012
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v1
.end method

.method runLockedCleanup(J)V
    .locals 1

    .line 3443
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3445
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3446
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3447
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3449
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method runUnlockedCleanup()V
    .locals 1

    .line 3456
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3457
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->processPendingNotifications()V

    :cond_0
    return-void
.end method

.method scheduleRefresh(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;ITV;J",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .line 2363
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    sub-long v2, p5, v0

    iget-object p5, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-wide p5, p5, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshNanos:J

    cmp-long v0, v2, p5

    if-lez v0, :cond_0

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2365
    invoke-virtual {p0, p2, p3, p7, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 2159
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2160
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    invoke-interface {v1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Weights must be non-negative"

    .line 2161
    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2163
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v1, p0, p1, p3, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->referenceValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2165
    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    .line 2166
    invoke-virtual {p0, p1, p2, p4, p5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recordWrite(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;IJ)V

    .line 2167
    invoke-interface {v0, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    return-void
.end method

.method storeLoadedValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;TV;)Z"
        }
    .end annotation

    .line 3110
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->lock()V

    .line 3112
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v5

    .line 3113
    invoke-virtual {p0, v5, v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3115
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    .line 3116
    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 3117
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->expand()V

    .line 3118
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    add-int/2addr v0, v7

    .line 3121
    :cond_0
    iget-object v8, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3122
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v7

    and-int v9, p2, v1

    .line 3123
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 3126
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3127
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3129
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 3130
    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq p3, v1, :cond_2

    if-nez v3, :cond_1

    .line 3133
    sget-object v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->UNSET:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 3149
    :cond_1
    new-instance p3, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedStrongValueReference;

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedStrongValueReference;-><init>(Ljava/lang/Object;I)V

    .line 3150
    sget-object p4, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3163
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3164
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v0

    .line 3135
    :cond_2
    :goto_1
    :try_start_1
    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v7

    iput v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3136
    invoke-virtual {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    .line 3137
    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    goto :goto_2

    :cond_3
    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/cache/RemovalCause;

    .line 3139
    :goto_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;Lorg/roboguice/shaded/goole/common/cache/RemovalCause;)V

    add-int/lit8 v0, v0, -0x1

    :cond_4
    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    .line 3142
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3143
    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3144
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3163
    :goto_3
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3164
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    return v7

    .line 3125
    :cond_5
    :try_start_2
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 3155
    :cond_6
    iget p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr p3, v7

    iput p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    .line 3156
    invoke-virtual {p0, p1, p2, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p2

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    .line 3157
    invoke-virtual/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->setValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3158
    invoke-virtual {v8, v9, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3159
    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 3160
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 3163
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    .line 3164
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw p1
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .line 2458
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2460
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2462
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method tryExpireEntries(J)V
    .locals 1

    .line 2606
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2608
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2610
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method waitForLoadingValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2293
    invoke-interface {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2294
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2297
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Recursive load of: %s"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2300
    :try_start_0
    invoke-interface {p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    .line 2302
    new-instance p1, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CacheLoader returned null for key "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2305
    :cond_1
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->map:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object p2, p2, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {p2}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2306
    invoke-virtual {p0, p1, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->recordRead(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object p3

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {p2, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw p1
.end method
