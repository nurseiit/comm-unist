.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingMultimap;
.source "Multimaps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
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

.field transient keys:Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 500
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMultimap;-><init>()V

    .line 501
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap$1;

    invoke-direct {v1, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;)V

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 509
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->access$100(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->access$000(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
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

    .line 547
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableMultiset(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 555
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 559
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 564
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 568
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 572
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 577
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    .line 581
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
