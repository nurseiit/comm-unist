.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteredEntryMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final filteredEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2688
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 2689
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2694
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;Lorg/roboguice/shaded/goole/common/collect/Maps$1;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2725
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;)V

    return-object v0
.end method
