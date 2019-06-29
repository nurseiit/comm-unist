.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;)V
    .locals 0

    .line 2697
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;Lorg/roboguice/shaded/goole/common/collect/Maps$1;)V
    .locals 0

    .line 2697
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 2697
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 2697
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2699
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2703
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;Ljava/util/Iterator;)V

    return-object v0
.end method
