.class public final Lorg/roboguice/shaded/goole/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Multisets$MultisetIteratorImpl;,
        Lorg/roboguice/shaded/goole/common/collect/Multisets$EntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;,
        Lorg/roboguice/shaded/goole/common/collect/Multisets$AbstractEntry;,
        Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;,
        Lorg/roboguice/shaded/goole/common/collect/Multisets$ImmutableEntry;,
        Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DECREASING_COUNT_ORDERING:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1063
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$5;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$5;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Multisets;->DECREASING_COUNT_ORDERING:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 833
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 836
    :cond_0
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v0, :cond_1

    .line 837
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object p1

    .line 838
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 839
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_0

    .line 842
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static cast(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TT;>;"
        }
    .end annotation

    .line 1060
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    return-object p0
.end method

.method public static containsOccurrences(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 646
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 649
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 650
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static copyHighestCountFirst(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 1078
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Multisets;->DECREASING_COUNT_ORDERING:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    .line 1080
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static difference(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 600
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-object v0
.end method

.method static equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 806
    :cond_0
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 807
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    .line 814
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 818
    :cond_1
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 819
    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v2
.end method

.method public static filter(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 267
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    if-eqz v0, :cond_0

    .line 270
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    .line 271
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    .line 273
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0

    .line 275
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static inferDistinctElements(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 358
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 359
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method public static intersection(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 457
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$2;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$2;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-object v0
.end method

.method static iteratorImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 993
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$MultisetIteratorImpl;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static removeAllImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 852
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 855
    :cond_0
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static removeOccurrences(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 730
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->removeOccurrencesImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Z

    move-result p0

    return p0
.end method

.method private static removeOccurrencesImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 739
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 744
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 745
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 746
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 747
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 748
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_0

    .line 751
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method static retainAllImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 863
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 867
    :cond_0
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static retainOccurrences(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 678
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->retainOccurrencesImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Z

    move-result p0

    return p0
.end method

.method private static retainOccurrencesImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 686
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 691
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 693
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 695
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 697
    :cond_1
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 698
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method static setCountImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 874
    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 876
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    .line 880
    invoke-interface {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    .line 882
    invoke-interface {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    :cond_1
    :goto_0
    return v0
.end method

.method static setCountImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    .line 893
    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    const-string v0, "newCount"

    .line 894
    invoke-static {p3, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 896
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 897
    invoke-interface {p0, p1, p3}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static sizeImpl(Lorg/roboguice/shaded/goole/common/collect/Multiset;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "*>;)I"
        }
    .end annotation

    .line 1050
    invoke-interface {p0}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 1051
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    move-wide v0, v4

    goto :goto_0

    .line 1053
    :cond_0
    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static sum(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "+TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 518
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$3;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-object v0
.end method

.method public static union(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "+TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 382
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    return-object p0
.end method

.method public static unmodifiableMultiset(Lorg/roboguice/shaded/goole/common/collect/Multiset;)Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 74
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSortedMultiset(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .line 200
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)V

    return-object v0
.end method
