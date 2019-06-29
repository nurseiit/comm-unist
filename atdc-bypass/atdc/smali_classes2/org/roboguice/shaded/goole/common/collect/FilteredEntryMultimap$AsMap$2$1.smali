.class Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final backingIterator:Ljava/util/Iterator;
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

.field final synthetic this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;-><init>()V

    .line 248
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object v3, v3, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v3, v3, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-direct {v2, v3, v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 262
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
