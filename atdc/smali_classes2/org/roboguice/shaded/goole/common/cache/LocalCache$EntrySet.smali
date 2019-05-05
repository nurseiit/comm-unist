.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
        "TK;TV;>.AbstractCacheSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;)V"
        }
    .end annotation

    .line 4511
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    .line 4512
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractCacheSet;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 4522
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4525
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 4526
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4530
    :cond_1
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4532
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    iget-object v2, v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4517
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 4537
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4540
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 4541
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4542
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
