.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection.WrappedIterator;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-void
.end method

.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;I)V
    .locals 1

    .line 854
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    .line 855
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V

    return-void
.end method

.method private getDelegateListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->isEmpty()Z

    move-result v0

    .line 890
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 891
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->access$208(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;)I

    if-eqz v0, :cond_0

    .line 893
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .line 864
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .line 874
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 869
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 879
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 884
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
