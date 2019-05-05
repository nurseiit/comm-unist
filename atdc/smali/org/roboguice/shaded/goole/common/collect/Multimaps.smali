.class public final Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$Entries;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$Keys;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesListMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;,
        Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomMultimap;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 65
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 65
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 863
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 902
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 876
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 891
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2051
    :cond_0
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 2052
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 2053
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static filterEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1974
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1976
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object p0

    return-object p0

    .line 1978
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterEntries(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2013
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2028
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 2030
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2042
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;->entryPredicate()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 2044
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntrySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1865
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    if-eqz v0, :cond_0

    .line 1866
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    .line 1867
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v1

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0

    .line 1870
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1773
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1774
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterKeys(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object p0

    return-object p0

    .line 1775
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    if-eqz v0, :cond_1

    .line 1776
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterKeys(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object p0

    return-object p0

    .line 1777
    :cond_1
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    if-eqz v0, :cond_2

    .line 1778
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    .line 1779
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0

    .line 1781
    :cond_2
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    if-eqz v0, :cond_3

    .line 1782
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;

    .line 1783
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object p0

    return-object p0

    .line 1785
    :cond_3
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1821
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    if-eqz v0, :cond_0

    .line 1822
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    .line 1823
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v1

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0

    .line 1825
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    if-eqz v0, :cond_1

    .line 1826
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;

    .line 1827
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/FilteredSetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object p0

    return-object p0

    .line 1829
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterValues(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1906
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1941
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static forMap(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 923
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static index(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1455
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->index(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static index(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1503
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1506
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1507
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1508
    invoke-static {v1, p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 1511
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static invertFrom(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;>(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    .line 409
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 411
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static newListMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static newMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 272
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSetMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSortedSetMultimap(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 350
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$CustomSortedSetMultimap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static synchronizedListMultimap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 774
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->listMultimap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->multimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 679
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->setMultimap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 734
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static transformEntries(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1380
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1172
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1320
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object p1

    .line 1322
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->transformEntries(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1109
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object p1

    .line 1111
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->transformEntries(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object p0

    return-object p0
.end method

.method private static unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 846
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 847
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 849
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 812
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    return-object p0
.end method

.method public static unmodifiableListMultimap(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 797
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 801
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableMultimap(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 488
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    return-object p0
.end method

.method public static unmodifiableMultimap(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 473
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 702
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSortedSetMultimap(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 757
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    if-eqz v0, :cond_0

    return-object p0

    .line 760
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSortedSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/SortedSetMultimap;)V

    return-object v0
.end method

.method private static unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 825
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 826
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 827
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 828
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 829
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 830
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 832
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
