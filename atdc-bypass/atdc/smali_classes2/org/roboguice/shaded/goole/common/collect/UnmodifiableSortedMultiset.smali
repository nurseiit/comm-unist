.class final Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;
.source "UnmodifiableSortedMultiset.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset<",
        "TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multiset;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 41
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    return-object v0
.end method

.method public descendingMultiset()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v1

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->descendingMultiset()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;-><init>(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)V

    .line 67
    iput-object p0, v0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    .line 68
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->descendingMultiset:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 56
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->firstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public lastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->lastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableSortedMultiset;->delegate()Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BoundType;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->unmodifiableSortedMultiset(Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;)Lorg/roboguice/shaded/goole/common/collect/SortedMultiset;

    move-result-object p1

    return-object p1
.end method
