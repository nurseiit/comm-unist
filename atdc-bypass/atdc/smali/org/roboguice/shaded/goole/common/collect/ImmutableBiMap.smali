.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
.source "ImmutableBiMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
        "TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/BiMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 214
    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 192
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    if-eqz v0, :cond_0

    .line 194
    move-object v0, p0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    .line 197
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 201
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 202
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Ljava/util/Map$Entry;)V

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    .line 207
    aget-object p0, p0, v0

    .line 208
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object p0

    return-object p0

    .line 204
    :pswitch_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SingletonImmutableBiMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    invoke-static {p8, p9}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 268
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
