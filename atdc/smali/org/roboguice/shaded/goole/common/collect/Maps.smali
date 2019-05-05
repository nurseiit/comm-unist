.class public final Lorg/roboguice/shaded/goole/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Maps$DescendingMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$Values;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableKeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$SortedKeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableAsMapView;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$SortedAsMapView;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$SortedMapDifferenceImpl;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$ValueDifferenceImpl;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$MapDifferenceImpl;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3451
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Collections2;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0

    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static asConverter(Lorg/roboguice/shaded/goole/common/collect/BiMap;)Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TA;TB;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 1313
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    return-object v0
.end method

.method static asEntryToEntryFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;
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
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1865
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$11;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$11;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;
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
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;TV2;>;"
        }
    .end annotation

    .line 1831
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$9;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$9;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;
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
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "TK;TV1;TV2;>;"
        }
    .end annotation

    .line 1806
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$7;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$7;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 677
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 678
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0

    .line 680
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;-><init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 751
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableAsMapView;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableAsMapView;-><init>(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
    .locals 0
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

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 713
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->mapsAsMapSortedSet(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method static asMapEntryIterator(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 833
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$2;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$2;-><init>(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method static asMapSortedIgnoreNavigable(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
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

    .line 718
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedAsMapView;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedAsMapView;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method static asValueToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Function;
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
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;TV1;TV2;>;TK;)",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "TV1;TV2;>;"
        }
    .end annotation

    .line 1817
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$8;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$8;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V

    return-object v0
.end method

.method static capacity(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "expectedSize"

    .line 205
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 209
    div-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
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
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3412
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3415
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3388
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3395
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/MapDifference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 382
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 383
    check-cast p0, Ljava/util/SortedMap;

    .line 384
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->difference(Ljava/util/SortedMap;Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/SortedMapDifference;

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equals()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->difference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/MapDifference;

    move-result-object p0

    return-object p0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/MapDifference;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 413
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 416
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 417
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 418
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    .line 419
    invoke-static/range {v0 .. v6}, Lorg/roboguice/shaded/goole/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 420
    new-instance p0, Lorg/roboguice/shaded/goole/common/collect/Maps$MapDifferenceImpl;

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/roboguice/shaded/goole/common/collect/Maps$MapDifferenceImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object p0
.end method

.method public static difference(Ljava/util/SortedMap;Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/SortedMapDifference;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 595
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 598
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v8

    .line 599
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v9

    .line 600
    invoke-interface {v9, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 601
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v10

    .line 602
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    .line 604
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equals()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lorg/roboguice/shaded/goole/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 605
    new-instance p0, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedMapDifferenceImpl;

    invoke-direct {p0, v8, v9, v10, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedMapDifferenceImpl;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object p0
.end method

.method private static doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "-TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;",
            "Lorg/roboguice/shaded/goole/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 428
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 431
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-interface {p4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 433
    invoke-virtual {p2, v0, v2}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 436
    :cond_0
    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps$ValueDifferenceImpl;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/MapDifference$ValueDifference;

    move-result-object v0

    invoke-interface {p6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_1
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3444
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3445
    check-cast p1, Ljava/util/Map;

    .line 3446
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static filterEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2413
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 2414
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0

    .line 2415
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    if-eqz v0, :cond_1

    .line 2416
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    return-object p0

    .line 2418
    :cond_1
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 2505
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 0
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

    .line 2458
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->mapsFilterSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2540
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2553
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 2876
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 2878
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$700(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2774
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 2776
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3017
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 3018
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2118
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 2119
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterKeys(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0

    .line 2120
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    if-eqz v0, :cond_1

    .line 2121
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterKeys(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    return-object p0

    .line 2123
    :cond_1
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 2125
    instance-of v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    if-eqz v1, :cond_2

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v1, p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static filterKeys(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 2203
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterKeys(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 0
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
            "-TK;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2165
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2233
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    return-object p0
.end method

.method static filterSortedIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
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

    .line 2464
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2268
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 2269
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterValues(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0

    .line 2270
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    if-eqz v0, :cond_1

    .line 2271
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterValues(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    return-object p0

    .line 2273
    :cond_1
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 2346
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 0
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
            "-TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2309
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2379
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    return-object p0
.end method

.method public static fromProperties(Ljava/util/Properties;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.Properties"
    .end annotation

    .line 1185
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1187
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1189
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1192
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 1207
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immutableEnumMap(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 150
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    if-eqz v0, :cond_0

    .line 152
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    return-object p0

    .line 154
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    .line 157
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_2
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method static keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "TK;*>;TK;>;"
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->KEY:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 113
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;*>;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3516
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "TK;*>;>;"
        }
    .end annotation

    .line 2081
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->compose(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 278
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/EnumMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:TC;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TC;>;)",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 644
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object p0

    return-object p0
.end method

.method static putAllImpl(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 3469
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3470
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
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
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3432
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3435
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 1024
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$5;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$5;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method private static removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 970
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$3;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$3;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 989
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$4;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$4;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3359
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3361
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3344
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3346
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :catch_1
    return-object v0
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3374
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3376
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :catch_1
    return-object v0
.end method

.method public static synchronizedBiMap(Lorg/roboguice/shaded/goole/common/collect/BiMap;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1391
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->biMap(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 3290
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 1097
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->toMap(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 1114
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1117
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1119
    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1121
    :cond_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3458
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3460
    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/Maps;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    invoke-virtual {v1, v0, p0}, Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 3461
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transformEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/Map<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1640
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1641
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0

    .line 1643
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;
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
            "Ljava/util/NavigableMap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 1761
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
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
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1701
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method static transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
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

    .line 1767
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static transformEntry(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1845
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$10;

    invoke-direct {v0, p1, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$10;-><init>(Ljava/util/Map$Entry;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/Map<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1492
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/NavigableMap;
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
            "Ljava/util/NavigableMap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 1583
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
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
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1536
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
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
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1140
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->uniqueIndex(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static uniqueIndex(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
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
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1160
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1162
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1164
    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableBiMap(Lorg/roboguice/shaded/goole/common/collect/BiMap;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1409
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    return-object v0
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1234
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$6;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$6;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1220
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntrySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 446
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 447
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0

    .line 449
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .line 3085
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;

    if-eqz v0, :cond_0

    return-object p0

    .line 3089
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method private static unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3094
    :cond_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "*TV;>;TV;>;"
        }
    .end annotation

    .line 109
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->VALUE:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static valueIterator(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "TV;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)V

    return-object v0
.end method

.method static valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "*TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3521
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "*TV;>;>;"
        }
    .end annotation

    .line 2085
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->compose(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p0

    return-object p0
.end method
