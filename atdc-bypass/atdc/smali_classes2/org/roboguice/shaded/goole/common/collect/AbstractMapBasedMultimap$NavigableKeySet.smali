.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedKeySet;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.SortedKeySet;",
        "Ljava/util/NavigableSet<",
        "TK;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
    value = "NavigableSet"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1024
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    .line 1025
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1045
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1065
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1040
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1075
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1080
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1022
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1055
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1060
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->pollNext(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method sortedMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1030
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method bridge synthetic sortedMap()Ljava/util/SortedMap;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1085
    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1091
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1022
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1097
    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1102
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->sortedMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1022
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$NavigableKeySet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
