.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapViewOfValuesAsSingletonSets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
        "TK;",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;-><init>()V

    .line 454
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic access$000(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 0

    .line 449
    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 462
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 475
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 449
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 449
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 449
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
