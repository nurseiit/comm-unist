.class public final Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 166
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 172
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->size:I

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>(I[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 168
    :pswitch_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 144
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method
