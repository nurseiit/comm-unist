.class final Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;
.super Ljava/util/AbstractCollection;
.source "FilteredMultimapValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 42
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimapValues;->multimap:Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->size()I

    move-result v0

    return v0
.end method
