.class final Lorg/roboguice/shaded/goole/common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mapsAsMapSortedSet(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 81
    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMapSortedIgnoreNavigable(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static mapsFilterSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 95
    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterSortedIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
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
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 74
    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 53
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static setsFilterSortedSet(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 88
    instance-of v0, p0, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filterSortedIgnoreNavigable(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static tryWeakKeys(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->weakKeys()Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object p0

    return-object p0
.end method
