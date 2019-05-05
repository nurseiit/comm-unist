.class public final Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field private final evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 207
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 208
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 209
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 210
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 211
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    return-void
.end method


# virtual methods
.method public incrementBy(Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)V
    .locals 3

    .line 266
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->snapshot()Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 268
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 269
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 270
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 271
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 272
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordEviction()V
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->increment()V

    return-void
.end method

.method public recordHits(I)V
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordLoadException(J)V
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->increment()V

    .line 243
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->increment()V

    .line 237
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public recordMisses(I)V
    .locals 3

    .line 231
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    return-void
.end method

.method public snapshot()Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    .locals 14

    .line 253
    new-instance v13, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->sum()J

    move-result-wide v1

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->sum()J

    move-result-wide v3

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->sum()J

    move-result-wide v5

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->sum()J

    move-result-wide v7

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->sum()J

    move-result-wide v9

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->sum()J

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v13
.end method
