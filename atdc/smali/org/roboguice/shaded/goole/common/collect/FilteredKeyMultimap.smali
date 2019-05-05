.class Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;
.source "FilteredKeyMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;,
        Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$AddRejectingList;,
        Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$AddRejectingSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field final keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;-><init>()V

    .line 44
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 45
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method createAsMap()Ljava/util/Map;
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

    .line 211
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterKeys(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeys()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->filter(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;)V

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

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

    .line 102
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    instance-of v0, v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$AddRejectingSet;

    invoke-direct {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$AddRejectingSet;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$AddRejectingList;

    invoke-direct {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$AddRejectingList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unmodifiableEmptyCollection()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 3

    .line 61
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 62
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    return-object v0
.end method

.method unmodifiableEmptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    instance-of v0, v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
