.class final Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InverseEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->access$100(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;->this$1:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;

    return-object v0
.end method
