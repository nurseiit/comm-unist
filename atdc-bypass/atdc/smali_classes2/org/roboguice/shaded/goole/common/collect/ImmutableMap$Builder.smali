.class public Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 184
    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-array p1, p1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 p1, 0x0

    .line 190
    iput p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->size:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v1, v1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 248
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->size:I

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;-><init>(I[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 250
    :pswitch_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 206
    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->size:I

    aput-object p1, p2, v0

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 220
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 230
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 231
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method
