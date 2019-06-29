.class final Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;
.source "FilteredKeyListMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap<",
        "TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-TK;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public unfiltered()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 40
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyListMultimap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
