.class final Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;
.source "Maps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilteredEntryBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap<",
        "TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3038
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 3039
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object p1

    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->inversePredicate(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    return-void
.end method

.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 3046
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 3047
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    return-void
.end method

.method private static inversePredicate(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 3027
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3056
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 3057
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 3062
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    return-object v0
.end method

.method unfiltered()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3051
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->unfiltered:Ljava/util/Map;

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 3021
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 3067
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
