.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    .line 1338
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1345
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1338
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 1352
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1357
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1358
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->access$220(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;I)I

    .line 1359
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method