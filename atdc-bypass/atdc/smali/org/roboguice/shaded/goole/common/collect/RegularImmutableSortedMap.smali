.class final Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
.source "RegularImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private final transient keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    .line 37
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V

    .line 45
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    .line 46
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$100(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object p0
.end method

.method private getSubMap(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 104
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->subList(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->from(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method createDescendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->reverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method

.method createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$1;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->getSubMap(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->keySet:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->getSubMap(II)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;->valueList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method
