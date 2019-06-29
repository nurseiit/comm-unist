.class Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WriteThroughEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$CleanupMapTask;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongValueReference;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakValueReference;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakEvictableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEvictableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftExpirableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongEvictableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractReferenceEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$NullEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;,
        Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
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
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CLEANUP_EXECUTOR_DELAY_SECS:J = 0x3cL

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

.field static final UNSET:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final concurrencyLevel:I

.field final transient entryFactory:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field transient entrySet:Ljava/util/Set;
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

.field final keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

.field final maximumSize:I

.field final removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
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

.field final valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->logger:Ljava/util/logging/Logger;

    .line 578
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$1;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->UNSET:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    .line 868
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$2;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V
    .locals 6

    .line 195
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 196
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    .line 198
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getKeyStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .line 199
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getValueStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .line 201
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getKeyEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 202
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 204
    iget v0, p1, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->maximumSize:I

    .line 205
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getExpireAfterAccessNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 206
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getExpireAfterWriteNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    .line 208
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expires()Z

    move-result v1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->getFactory(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;ZZ)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->entryFactory:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 209
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 211
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getRemovalListener()Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    .line 212
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    .line 216
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getInitialCapacity()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 217
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->maximumSize:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    :goto_1
    iget v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v4, v2, 0x2

    iget v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->maximumSize:I

    if-gt v4, v5, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    .line 231
    iput v3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentShift:I

    add-int/lit8 v3, v2, -0x1

    .line 232
    iput v3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentMask:I

    .line 234
    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->newSegmentArray(I)[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    iput-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    .line 236
    div-int v3, p1, v2

    mul-int v4, v3, v2

    if-ge v4, p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-ge p1, v3, :cond_5

    shl-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 246
    :cond_5
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 248
    iget v3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->maximumSize:I

    div-int/2addr v3, v2

    add-int/2addr v3, v1

    .line 249
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->maximumSize:I

    rem-int/2addr v1, v2

    .line 250
    :goto_3
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    if-ne v0, v1, :cond_6

    add-int/lit8 v3, v3, -0x1

    .line 254
    :cond_6
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0, p1, v3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->createSegment(II)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 258
    :cond_7
    :goto_4
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 259
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->createSegment(II)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method static connectEvictables(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1961
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1962
    invoke-interface {p1, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-void
.end method

.method static connectExpirables(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1929
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1930
    invoke-interface {p1, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

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

    .line 900
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 865
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$NullEntry;

    return-object v0
.end method

.method static nullifyEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1967
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 1968
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1969
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-void
.end method

.method static nullifyExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 1935
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 1936
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setNextExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1937
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setPreviousExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

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

.method static unset()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->UNSET:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 3559
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3560
    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->clear()V

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

    .line 3454
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3455
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3469
    :cond_0
    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v4, -0x1

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v4, v7, :cond_6

    const-wide/16 v7, 0x0

    .line 3473
    array-length v9, v3

    move-wide v10, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v8, v3, v7

    .line 3476
    iget v12, v8, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3478
    iget-object v12, v8, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x0

    .line 3479
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 3480
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_3
    if-eqz v14, :cond_2

    .line 3481
    invoke-virtual {v8, v14}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 3482
    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v2, v1, v15}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 3480
    :cond_1
    invoke-interface {v14}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v14

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_2

    .line 3487
    :cond_3
    iget v2, v8, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v12, v2

    add-long v14, v10, v12

    add-int/lit8 v7, v7, 0x1

    move-wide v10, v14

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    cmp-long v2, v10, v5

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v10

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method copyEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1836
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1837
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method createSegment(II)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1887
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    invoke-direct {v0, p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;II)V

    return-object v0
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

    .line 3584
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3585
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method evictsBySize()Z
    .locals 2

    .line 266
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->maximumSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expires()Z
    .locals 1

    .line 270
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

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

    .line 278
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

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

    .line 274
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3433
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3434
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getEntry(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
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
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3445
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3446
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method getLiveValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 1896
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1899
    :cond_0
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1904
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->isExpired(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    .line 1851
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p1

    .line 1852
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->rehash(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 11

    .line 3396
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 3397
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 3398
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_0

    return v3

    .line 3401
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    add-long v9, v5, v7

    add-int/lit8 v4, v4, 0x1

    move-wide v5, v9

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 3405
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_3

    .line 3406
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_2

    return v3

    .line 3409
    :cond_2
    aget-object v7, v0, v4

    iget v7, v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->modCount:I

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

.method isExpired(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1916
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->isExpired(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result p1

    return p1
.end method

.method isExpired(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1924
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    sub-long v2, p2, v0

    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-lez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isLive(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1872
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

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

    .line 3568
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3569
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .param p3    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1827
    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->newEntry(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method final newSegmentArray(I)[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1974
    new-array p1, p1, [Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    return-object p1
.end method

.method newValueReference(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
    .end annotation

    .line 1846
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1847
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->referenceValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object p1

    return-object p1
.end method

.method processPendingNotifications()V
    .locals 4

    .line 1949
    :goto_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;

    if-eqz v0, :cond_0

    .line 1951
    :try_start_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;->onRemoval(Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1953
    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->logger:Ljava/util/logging/Logger;

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

    .line 3499
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3501
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3502
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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

    .line 3515
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

    .line 3516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 3507
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3508
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3510
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method reclaimKey(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1862
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    .line 1863
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->reclaimKey(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;I)Z

    return-void
.end method

.method reclaimValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1856
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;->getEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 1857
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    .line 1858
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)Z

    return-void
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

    .line 3525
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3526
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

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

    .line 3534
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3535
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

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

    .line 3551
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3552
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3553
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3554
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 3540
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3541
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3545
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3546
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method segmentFor(I)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1883
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentShift:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segmentMask:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 8

    .line 3420
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3422
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3423
    aget-object v4, v0, v3

    iget v4, v4, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move-wide v1, v6

    goto :goto_0

    .line 3425
    :cond_0
    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesKeyReferences()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

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

    .line 286
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 3576
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3577
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 14

    .line 3887
    new-instance v13, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    iget-wide v7, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    iget v9, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->maximumSize:I

    iget v10, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->concurrencyLevel:I

    iget-object v11, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    move-object v0, v13

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v13
.end method
