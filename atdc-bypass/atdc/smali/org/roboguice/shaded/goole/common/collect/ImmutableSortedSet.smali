.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lorg/roboguice/shaded/goole/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSetFauxverideShim<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final NATURAL_EMPTY_SET:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "Ljava/lang/Comparable;",
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


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient descendingSet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 100
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedSet;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 584
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 585
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static varargs construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;I[TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 425
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 427
    :cond_0
    invoke-static {p2, p1}, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 428
    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 431
    aget-object v2, p2, v0

    add-int/lit8 v3, v1, -0x1

    .line 432
    aget-object v3, p2, v3

    .line 433
    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 434
    aput-object v2, p2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 437
    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 438
    new-instance p1, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-static {p2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 253
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    .line 254
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 291
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    .line 292
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 344
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    if-eqz v0, :cond_0

    .line 350
    move-object v0, p1

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    .line 351
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 356
    :cond_0
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 357
    array-length v0, p1

    invoke-static {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 380
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 326
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 311
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    .line 312
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 219
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Comparable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOfSorted(Ljava/util/SortedSet;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 401
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    .line 402
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    .line 403
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 406
    :cond_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private static emptySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method static emptySet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->emptySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedSet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static naturalOrder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 470
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->emptySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 143
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 156
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 169
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 182
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    aput-object p4, v2, p0

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 196
    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    .line 197
    aput-object p0, v0, v2

    const/4 p0, 0x1

    .line 198
    aput-object p1, v0, p0

    const/4 p0, 0x2

    .line 199
    aput-object p2, v0, p0

    const/4 p0, 0x3

    .line 200
    aput-object p3, v0, p0

    const/4 p0, 0x4

    .line 201
    aput-object p4, v0, p0

    const/4 p0, 0x5

    .line 202
    aput-object p5, v0, p0

    .line 203
    array-length p0, p6

    invoke-static {p6, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object p0

    array-length p1, v0

    check-cast v0, [Ljava/lang/Comparable;

    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 451
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 829
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static reverseOrder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 459
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 579
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    const/4 v0, 0x1

    .line 719
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method createDescendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 789
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/DescendingImmutableSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 779
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->createDescendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    .line 782
    iput-object p0, v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    :cond_0
    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    const/4 v0, 0x1

    .line 710
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 616
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 625
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract headSetImpl(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    const/4 v0, 0x0

    .line 728
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract indexOf(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 738
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 752
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 643
    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 653
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 656
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 672
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 681
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract tailSetImpl(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 833
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
