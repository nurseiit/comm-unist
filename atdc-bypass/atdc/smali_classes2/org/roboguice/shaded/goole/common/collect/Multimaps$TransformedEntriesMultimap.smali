.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedEntriesMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field final transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1181
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;-><init>()V

    .line 1182
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multimap;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .line 1183
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1208
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1212
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV2;>;>;"
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap$1;

    invoke-direct {v1, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;)V

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1271
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->transform(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryToEntryFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1226
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV2;)Z"
        }
    .end annotation

    .line 1238
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)Z"
        }
    .end annotation

    .line 1242
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap<",
            "+TK;+TV2;>;)Z"
        }
    .end annotation

    .line 1247
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1252
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1262
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1266
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asValueToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object p1

    .line 1189
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1190
    check-cast p2, Ljava/util/List;

    invoke-static {p2, p1}, Lorg/roboguice/shaded/goole/common/collect/Lists;->transform(Ljava/util/List;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1192
    :cond_0
    invoke-static {p2, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->transform(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
