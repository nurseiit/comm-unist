.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBasedMultisetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field currentEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lorg/roboguice/shaded/goole/common/collect/Count;",
            ">;>;"
        }
    .end annotation
.end field

.field occurrencesLeft:I

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->access$000(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 171
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 176
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    .line 178
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Count;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Count;->get()I

    move-result v0

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 180
    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 181
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 182
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 188
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Count;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Count;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Count;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Count;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 195
    :cond_1
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->access$110(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;)J

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    return-void
.end method
