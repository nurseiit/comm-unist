.class public final Lorg/roboguice/shaded/goole/common/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Sets$DescendingSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$UnmodifiableNavigableSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;,
        Lorg/roboguice/shaded/goole/common/collect/Sets$ImprovedAbstractSet;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TB;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .line 1055
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->create(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varargs cartesianProduct([Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Set<",
            "+TB;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .line 1115
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->cartesianProduct(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static complementOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 447
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 448
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 450
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "collection is empty; use the other version of this method"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 452
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 453
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static complementOf(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 470
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static difference(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 677
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 678
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 681
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Sets$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$3;-><init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;Ljava/util/Set;)V

    return-object v1
.end method

.method static equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1357
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1358
    check-cast p1, Ljava/util/Set;

    .line 1361
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    return v2

    :catch_1
    return v2

    :cond_2
    return v2
.end method

.method public static filter(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 908
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 911
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    .line 912
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 914
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0

    .line 918
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 747
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 748
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 750
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_1

    .line 753
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    .line 754
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 756
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/Set;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0

    .line 760
    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 0
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

    .line 810
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->setsFilterSortedSet(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static filterSortedIgnoreNavigable(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedSet;
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

    .line 815
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 818
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;

    .line 819
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 821
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0

    .line 825
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method static hashCodeImpl(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 1341
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1342
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;[TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 98
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static immutableEnumSet(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .line 116
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;

    if-eqz v0, :cond_0

    .line 117
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;

    return-object p0

    .line 118
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 119
    check-cast p0, Ljava/util/Collection;

    .line 120
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 123
    :cond_1
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 126
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 129
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 130
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 132
    :cond_3
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 640
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 641
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 644
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Sets$2;

    invoke-direct {v1, p0, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$2;-><init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;Ljava/util/Set;)V

    return-object v1
.end method

.method private static makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 478
    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 479
    invoke-virtual {p1, p0}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static newConcurrentHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentHashSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 273
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 274
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArraySet"
    .end annotation

    .line 409
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArraySet(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArraySet"
    .end annotation

    .line 424
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 427
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static newEnumSet(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 146
    invoke-static {p1, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object p1
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 218
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 237
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 238
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 182
    array-length v0, p0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 183
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 395
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newLinkedHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 324
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 327
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 328
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
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

    .line 515
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Platform;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static newTreeSet()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static newTreeSet(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 364
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    .line 365
    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static powerSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = false
    .end annotation

    .line 1229
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1547
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 1549
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 1558
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1559
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 1561
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1540
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 711
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 712
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0
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

    .line 1532
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public static union(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 581
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 582
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-static {p1, p0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/roboguice/shaded/goole/common/collect/Sets$SetView;

    move-result-object v0

    .line 586
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Sets$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$1;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method

.method public static unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
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

    .line 1390
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$UnmodifiableNavigableSet;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1394
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method
