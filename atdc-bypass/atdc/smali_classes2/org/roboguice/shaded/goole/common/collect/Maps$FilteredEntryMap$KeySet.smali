.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;)V
    .locals 0

    .line 2729
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    .line 2730
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 2742
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->removeIf(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2734
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2748
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2753
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->removeIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 2758
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2762
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
