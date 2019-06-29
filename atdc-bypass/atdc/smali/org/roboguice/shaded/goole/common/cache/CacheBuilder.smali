.class public final Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;,
        Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_REFRESH_NANOS:I = 0x0

.field static final EMPTY_STATS:Lorg/roboguice/shaded/goole/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "+",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field static final UNSET_INT:I = -0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "+",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Weigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 159
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$1;-><init>()V

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 181
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;-><init>(JJJJJJ)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->EMPTY_STATS:Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    .line 183
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$2;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 207
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$3;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$3;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 214
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    .line 221
    iput v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    const-wide/16 v0, -0x1

    .line 222
    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    .line 223
    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    .line 229
    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 230
    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 231
    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    .line 239
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method

.method private checkNonLoadingCache()V
    .locals 5

    .line 811
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private checkWeightWithWeigher()V
    .locals 7

    .line 815
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    .line 816
    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    .line 818
    :cond_1
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_3

    .line 819
    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    .line 821
    :cond_3
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 822
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .line 274
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->from(Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->toCacheBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->lenientParsing()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/roboguice/shaded/goole/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/roboguice/shaded/goole/common/cache/Cache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 805
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 806
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 807
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK1;TV1;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 788
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 789
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 375
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 377
    :cond_1
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 378
    iput p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    return-object p0
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 641
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    .line 643
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object p3, v4, v1

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 644
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    return-object p0
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 607
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    .line 609
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object p3, v4, v1

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .line 383
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    :goto_0
    return v0
.end method

.method getExpireAfterAccessNanos()J
    .locals 5

    .line 649
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    :goto_0
    return-wide v0
.end method

.method getExpireAfterWriteNanos()J
    .locals 5

    .line 615
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    :goto_0
    return-wide v0
.end method

.method getInitialCapacity()I
    .locals 2

    .line 341
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    :goto_0
    return v0
.end method

.method getKeyEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getKeyStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .locals 5

    .line 492
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    :goto_0
    return-wide v0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method getRefreshNanos()J
    .locals 5

    .line 689
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    :goto_0
    return-wide v0
.end method

.method getRemovalListener()Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    return-object v0
.end method

.method getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "+",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-object v0
.end method

.method getTicker(Z)Lorg/roboguice/shaded/goole/common/base/Ticker;
    .locals 1

    .line 708
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    if-eqz v0, :cond_0

    .line 709
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 711
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

    :goto_0
    return-object p1
.end method

.method getValueEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getValueStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .locals 2

    .line 584
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/roboguice/shaded/goole/common/cache/Weigher<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/Weigher;

    return-object v0
.end method

.method public initialCapacity(I)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 333
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    .line 335
    :cond_1
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 336
    iput p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    return-object p0
.end method

.method isRecordingStats()Z
    .locals 2

    .line 767
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keyEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .line 294
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object p0
.end method

.method lenientParsing()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    return-object p0
.end method

.method public maximumSize(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 402
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "maximum size was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-wide v7, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v3, "maximum size can not be combined with weigher"

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    const-string v1, "maximum size must not be negative"

    .line 407
    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 408
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    return-object p0
.end method

.method public maximumWeight(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .line 438
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "maximum weight was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-wide v7, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string p1, "maximum weight must not be negative"

    .line 443
    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-object p0
.end method

.method public recordStats()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 762
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-object p0
.end method

.method public refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported (synchronously)."
    .end annotation

    .line 681
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "refresh was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "duration must be positive: %s %s"

    const/4 v4, 0x2

    .line 683
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    aput-object p3, v4, v1

    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 684
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    return-object p0
.end method

.method public removalListener(Lorg/roboguice/shaded/goole/common/cache/RemovalListener;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
            "-TK1;-TV1;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 738
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 743
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    return-object p0
.end method

.method setKeyStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object p0
.end method

.method setValueStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object p0
.end method

.method public softValues()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .line 574
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->SOFT:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setValueStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ticker(Lorg/roboguice/shaded/goole/common/base/Ticker;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Ticker;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 703
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Ticker;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 834
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 835
    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "initialCapacity"

    .line 836
    iget v3, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    invoke-virtual {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 838
    :cond_0
    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    if-eq v1, v2, :cond_1

    const-string v1, "concurrencyLevel"

    .line 839
    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 841
    :cond_1
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string v1, "maximumSize"

    .line 842
    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 844
    :cond_2
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-string v1, "maximumWeight"

    .line 845
    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 847
    :cond_3
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const-string v1, "expireAfterWrite"

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ns"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 850
    :cond_4
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const-string v1, "expireAfterAccess"

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 853
    :cond_5
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_6

    const-string v1, "keyStrength"

    .line 854
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 856
    :cond_6
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_7

    const-string v1, "valueStrength"

    .line 857
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 859
    :cond_7
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    if-eqz v1, :cond_8

    const-string v1, "keyEquivalence"

    .line 860
    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 862
    :cond_8
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    if-eqz v1, :cond_9

    const-string v1, "valueEquivalence"

    .line 863
    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 865
    :cond_9
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    if-eqz v1, :cond_a

    const-string v1, "removalListener"

    .line 866
    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 868
    :cond_a
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "value equivalence was already set to %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object p0
.end method

.method public weakKeys()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .line 519
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setKeyStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .line 550
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setValueStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weigher(Lorg/roboguice/shaded/goole/common/cache/Weigher;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/roboguice/shaded/goole/common/cache/Weigher<",
            "-TK1;-TV1;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 479
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_2

    .line 480
    iget-wide v3, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "weigher can not be combined with maximum size"

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_2
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/Weigher;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    return-object p0
.end method
