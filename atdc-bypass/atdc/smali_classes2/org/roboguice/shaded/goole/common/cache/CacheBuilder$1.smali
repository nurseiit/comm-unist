.class final Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$1;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEviction()V
    .locals 0

    return-void
.end method

.method public recordHits(I)V
    .locals 0

    return-void
.end method

.method public recordLoadException(J)V
    .locals 0

    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 0

    return-void
.end method

.method public recordMisses(I)V
    .locals 0

    return-void
.end method

.method public snapshot()Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    .locals 1

    .line 178
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->EMPTY_STATS:Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    return-object v0
.end method
