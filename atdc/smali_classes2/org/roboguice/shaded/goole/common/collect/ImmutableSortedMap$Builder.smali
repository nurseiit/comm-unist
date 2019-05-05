.class public Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;-><init>()V

    .line 363
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1

    .line 354
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->size:I

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZI[Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 354
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 372
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 385
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 397
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    return-object p0
.end method
