.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 305
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->access$000(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v0

    aget-object p1, v0, p1

    .line 309
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
