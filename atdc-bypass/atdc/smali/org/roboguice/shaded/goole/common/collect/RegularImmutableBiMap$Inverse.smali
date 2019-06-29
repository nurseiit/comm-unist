.class final Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 279
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->smear(I)I

    move-result v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->access$300(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)I

    move-result v2

    and-int/2addr v1, v2

    .line 268
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->access$400(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 254
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 327
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$InverseSerializedForm;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$InverseSerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
