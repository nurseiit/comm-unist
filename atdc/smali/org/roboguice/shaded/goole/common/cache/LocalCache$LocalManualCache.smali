.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/Cache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalManualCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/cache/Cache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 4718
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-void
.end method

.method private constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4722
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V
    .locals 0

    .line 4714
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4782
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .line 4797
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->cleanUp()V

    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4735
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4736
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    new-instance v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;

    invoke-direct {v1, p0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache$1;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->get(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4746
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->getAllPresent(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 4730
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1

    .line 4761
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4762
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .line 4772
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->clear()V

    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 4767
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->invalidateAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 4751
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4756
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 4777
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    .locals 5

    .line 4787
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;-><init>()V

    .line 4788
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)V

    .line 4789
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4790
    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->statsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v4}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4792
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->snapshot()Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 4805
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-object v0
.end method
