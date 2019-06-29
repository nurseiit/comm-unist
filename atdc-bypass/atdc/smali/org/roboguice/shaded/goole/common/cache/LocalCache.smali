.class Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingSerializationProxy;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractCacheSet;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteThroughEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeyIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$HashIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedStrongValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedSoftValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedWeakValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$SoftValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;

.field static final sameThreadExecutor:Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;


# instance fields
.field final concurrencyLevel:I

.field final defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final entryFactory:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

.field final keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field final maxWeight:J

.field final refreshNanos:J

.field final removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field final valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 160
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->sameThreadExecutor:Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    .line 690
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->UNSET:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    .line 1021
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$2;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V
    .locals 11
    .param p2    # Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "-TK;-TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 240
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getConcurrencyLevel()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->concurrencyLevel:I

    .line 242
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getKeyStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 243
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getValueStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 245
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getKeyEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 246
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getValueEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 248
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getMaximumWeight()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    .line 249
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getWeigher()Lorg/roboguice/shaded/goole/common/cache/Weigher;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    .line 250
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getExpireAfterAccessNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    .line 251
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getExpireAfterWriteNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    .line 252
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getRefreshNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshNanos:J

    .line 254
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getRemovalListener()Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    .line 255
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    .line 259
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsTime()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getTicker(Z)Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 260
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesAccessEntries()Z

    move-result v1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesWriteEntries()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->getFactory(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;ZZ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entryFactory:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 261
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    .line 262
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    .line 264
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getInitialCapacity()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 265
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    long-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    :goto_1
    iget v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->concurrencyLevel:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    iget-wide v6, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    .line 281
    iput v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentShift:I

    add-int/lit8 v3, v2, -0x1

    .line 282
    iput v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentMask:I

    .line 284
    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->newSegmentArray(I)[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v3

    iput-object v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    .line 286
    div-int v3, p2, v2

    mul-int v4, v3, v2

    if-ge v4, p2, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_2
    if-ge v1, v3, :cond_5

    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 296
    :cond_5
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 298
    iget-wide v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    int-to-long v5, v2

    div-long/2addr v3, v5

    const-wide/16 v7, 0x1

    add-long v9, v3, v7

    .line 299
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    rem-long/2addr v2, v5

    .line 300
    :goto_3
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    array-length p2, p2

    if-ge v0, p2, :cond_8

    int-to-long v4, v0

    cmp-long p2, v4, v2

    if-nez p2, :cond_6

    sub-long v4, v9, v7

    move-wide v9, v4

    .line 304
    :cond_6
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v4

    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v1, v9, v10, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->createSegment(IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v4

    aput-object v4, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 308
    :cond_7
    :goto_4
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    array-length p2, p2

    if-ge v0, p2, :cond_8

    .line 309
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v4

    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->createSegment(IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method static connectAccessOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1921
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1922
    invoke-interface {p1, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-void
.end method

.method static connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1934
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1935
    invoke-interface {p1, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 1053
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1018
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static nullifyAccessOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1927
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1928
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1929
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-void
.end method

.method static nullifyWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1940
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1941
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1942
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-void
.end method

.method static rehash(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method static unset()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 736
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->UNSET:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .line 3857
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3858
    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->cleanUp()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .line 4203
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4204
    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4096
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4097
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4112
    :cond_0
    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v3

    .line 4113
    iget-object v5, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    const-wide/16 v6, -0x1

    move-wide v7, v6

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v6, v9, :cond_7

    const-wide/16 v9, 0x0

    .line 4117
    array-length v11, v5

    move-wide v12, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_5

    aget-object v10, v5, v9

    .line 4120
    iget v14, v10, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 4122
    iget-object v14, v10, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v15, 0x0

    .line 4123
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_4

    .line 4124
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    :goto_3
    if-eqz v2, :cond_3

    move-object/from16 v16, v5

    .line 4125
    invoke-virtual {v10, v2, v3, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    move-wide/from16 v17, v3

    .line 4126
    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v3, v1, v5}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_1
    move-wide/from16 v17, v3

    .line 4124
    :cond_2
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    .line 4131
    iget v2, v10, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v2, v2

    add-long v4, v12, v2

    add-int/lit8 v9, v9, 0x1

    move-wide v12, v4

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    cmp-long v2, v12, v7

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-wide v7, v12

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
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

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1822
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1823
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method createSegment(IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1874
    new-instance v6, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)V

    return-object v6
.end method

.method customWeigher()Z
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Not supported."
    .end annotation

    .line 4239
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4240
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method evictsBySize()Z
    .locals 5

    .line 316
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expires()Z
    .locals 1

    .line 324
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method expiresAfterAccess()Z
    .locals 5

    .line 332
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expiresAfterWrite()Z
    .locals 5

    .line 328
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3916
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3917
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method get(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3933
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3934
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3967
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3968
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 3969
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3970
    invoke-virtual {p0, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3971
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3972
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 3975
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3983
    :cond_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    .line 3985
    :try_start_1
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-virtual {p0, v1, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->loadAll(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object p1

    .line 3986
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3987
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 3989
    new-instance p1, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAll failed to return a value for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3991
    :cond_3
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/roboguice/shaded/goole/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3995
    :catch_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    .line 3997
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-virtual {p0, v1, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->get(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4001
    :cond_4
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4003
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0, v3}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4004
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0, v2}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4003
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0, v3}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4004
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0, v2}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw p1
.end method

.method getAllPresent(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3945
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 3946
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3947
    invoke-virtual {p0, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3954
    :cond_0
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3958
    :cond_1
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3959
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {p1, v2}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3960
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method getEntry(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4081
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4082
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3922
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3923
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3925
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    goto :goto_0

    .line 3927
    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    :goto_0
    return-object p1
.end method

.method getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1885
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1888
    :cond_0
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1893
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3938
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->get(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1837
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p1

    .line 1838
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->rehash(I)I

    move-result p1

    return p1
.end method

.method invalidateAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 4210
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4211
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 11

    .line 3874
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 3875
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 3876
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_0

    return v3

    .line 3879
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    add-long v9, v5, v7

    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 3883
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_3

    .line 3884
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_2

    return v3

    .line 3887
    :cond_2
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    sub-long v9, v5, v7

    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-eqz v0, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1905
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v4, p2, v2

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    return v1

    .line 1910
    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v4, p2, v2

    iget-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    cmp-long p3, v4, p1

    if-ltz p3, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isLive(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1858
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4220
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4221
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method loadAll(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TK;>;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 4015
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4016
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4017
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->createStarted()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4022
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lorg/roboguice/shaded/goole/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 4044
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4045
    new-instance p1, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " returned null map from loadAll"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4048
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->stop()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    .line 4051
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4052
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 4053
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v5, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    .line 4058
    :cond_1
    invoke-virtual {p0, v5, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 4063
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4064
    new-instance p1, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " returned null keys or values from loadAll"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4068
    :cond_4
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4036
    :try_start_1
    new-instance p2, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;

    invoke-direct {p2, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4034
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 4032
    new-instance p2, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p2, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 4029
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 4030
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_4
    move-exception p1

    .line 4027
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_5

    .line 4039
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    :cond_5
    throw p1
.end method

.method longSize()J
    .locals 8

    .line 3897
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3899
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3900
    aget-object v4, v0, v3

    iget v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    int-to-long v4, v4

    add-long v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move-wide v1, v6

    goto :goto_0

    :cond_0
    return-wide v1
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

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1813
    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method final newSegmentArray(I)[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1963
    new-array p1, p1, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    return-object p1
.end method

.method newValueReference(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1832
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1833
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->referenceValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object p1

    return-object p1
.end method

.method processPendingNotifications()V
    .locals 4

    .line 1952
    :goto_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;

    if-eqz v0, :cond_0

    .line 1954
    :try_start_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/cache/RemovalListener;->onRemoval(Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1956
    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4143
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4146
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4159
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4160
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4151
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4154
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method reclaimKey(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1848
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1849
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->reclaimKey(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;I)Z

    return-void
.end method

.method reclaimValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1842
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->getEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1843
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    .line 1844
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)Z

    return-void
.end method

.method recordsAccess()Z
    .locals 1

    .line 352
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    return v0
.end method

.method recordsTime()Z
    .locals 1

    .line 356
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method recordsWrite()Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method refresh(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 4086
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4087
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;Z)Ljava/lang/Object;

    return-void
.end method

.method refreshes()Z
    .locals 5

    .line 336
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4169
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4170
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4178
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4179
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4195
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4197
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4198
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4184
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4185
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4189
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4190
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1869
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentShift:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentMask:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 3907
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesAccessEntries()Z
    .locals 1

    .line 364
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesAccessQueue()Z
    .locals 1

    .line 340
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesKeyReferences()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesValueReferences()Z
    .locals 2

    .line 372
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesWriteEntries()Z
    .locals 1

    .line 360
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesWriteQueue()Z
    .locals 1

    .line 344
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4229
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4230
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->values:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method
