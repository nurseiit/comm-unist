.class Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap$1;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;)V
    .locals 0

    .line 1921
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;

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
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1927
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryToEntryFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1923
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;

    return-object v0
.end method
