.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<",
        "TK;TV;>.KeySet;",
        "Ljava/util/SortedSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;)V
    .locals 0

    .line 2800
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2803
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2823
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2813
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2828
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2808
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 2818
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method
