.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;)V
    .locals 0

    .line 1691
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1697
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;->access$200(Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;)Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet$1;

    invoke-direct {v1, p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet;)V

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1706
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1709
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1710
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$AsMap;->removeValuesForKey(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
