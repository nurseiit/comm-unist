.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$SerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 416
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    return-void
.end method

.method public static copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
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
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    .line 206
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 223
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
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
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 251
    instance-of v0, p0, Ljava/util/SortedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 252
    move-object v0, p0

    check-cast v0, Ljava/util/SortedMap;

    .line 253
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 259
    instance-of v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    if-eqz v2, :cond_2

    .line 263
    move-object v2, p0

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    .line 264
    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    .line 273
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 275
    array-length v1, p0

    invoke-static {p1, v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
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
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 239
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 245
    :cond_0
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static emptyMap(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static from(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    return-object v0
.end method

.method static varargs fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;ZI[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 281
    aget-object v1, p3, v0

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v1

    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 285
    invoke-static {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->sortEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)V

    .line 286
    invoke-static {p2, p3, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->validateEntries(I[Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 289
    :cond_1
    invoke-static {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->fromSortedEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static fromSortedEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 83
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 87
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 89
    aget-object v3, p2, v2

    .line 90
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    new-instance p1, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;

    new-instance p2, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    return-object p1
.end method

.method public static naturalOrder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 311
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->of(Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->from(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v2, p2

    invoke-static {v0, p1, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 151
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v2, p2

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v2, p2

    invoke-static {v0, p1, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 165
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v2, p2

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v2, p2

    invoke-static {p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v2, p2

    invoke-static {v0, p1, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 179
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v2, p2

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v2, p2

    invoke-static {p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v2, p2

    invoke-static {p8, p9}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p2, 0x4

    aput-object p0, v2, p2

    invoke-static {v0, p1, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 323
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 331
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sortEntries(Ljava/util/Comparator;I[Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 294
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object p0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->onKeys()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method private static validateEntries(I[Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 300
    aget-object v3, p1, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "key"

    aget-object v2, p1, v2

    aget-object v5, p1, v1

    invoke-static {v3, v4, v2, v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 598
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 603
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 425
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract createDescendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 670
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    if-nez v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->createDescendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 437
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 588
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 593
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public abstract headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    .line 429
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 583
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->navigableKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 421
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 538
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p3, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p0, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 557
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public abstract tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public abstract values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 694
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
