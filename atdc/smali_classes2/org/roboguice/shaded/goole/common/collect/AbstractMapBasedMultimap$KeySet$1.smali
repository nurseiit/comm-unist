.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    .line 937
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 941
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 942
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 943
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 944
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->access$220(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;I)I

    .line 945
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method
