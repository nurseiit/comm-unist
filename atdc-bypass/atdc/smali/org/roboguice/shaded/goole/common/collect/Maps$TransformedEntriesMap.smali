.class Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedEntriesMap"
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
        "Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final fromMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
.method constructor <init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 1881
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 1882
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 1883
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1912
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1891
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1921
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1898
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-interface {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
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

    .line 1916
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 1906
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1887
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method