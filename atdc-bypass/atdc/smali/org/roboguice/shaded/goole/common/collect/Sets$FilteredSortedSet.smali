.class Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;
.super Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;
.source "Sets.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 833
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

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

    .line 838
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 849
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    .line 866
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    .line 867
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v2, v1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 870
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 843
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 854
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->unfiltered:Ljava/util/Collection;

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-direct {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method
